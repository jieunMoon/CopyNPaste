var db = require('../lib/db');
var bcrypt = require('bcrypt');
var shortid = require('shortid');

module.exports = function (app) {

    var passport = require('passport'),
        LocalStrategy = require('passport-local').Strategy,
        GoogleStrategy = require('passport-google-oauth').OAuth2Strategy;

    app.use(passport.initialize());
    app.use(passport.session());

    passport.serializeUser(function (user, done) {
        console.log('serializeUser', user);
        done(null, user.id);
    });

    passport.deserializeUser(function (id, done) {
        var user = db.get('users').find({
            id: id
        }).value();
        console.log('deserializeUser', id, user);
        done(null, user);
    });

    passport.use(new LocalStrategy({
            usernameField: 'email',
            passwordField: 'pwd'
        },
        function (email, password, done) {
            console.log('LocalStrategy', email, password);
            var user = db.get('users').find({
                email: email
            }).value();
            if (user) {
                bcrypt.compare(password, user.password, function (err, result) {
                    if (result) {
                        return done(null, user, {
                            message: 'Welcome.'
                        });
                    } else {
                        return done(null, false, {
                            message: 'Password is not correct.'
                        });
                    }
                });
            } else {
                return done(null, false, {
                    message: 'There is no email.'
                });
            }
        }
    ));

    var googleCredentials = require('../config/google.json');
    passport.use(new GoogleStrategy({
            clientID: googleCredentials.web.client_id, //클라이언트 아이디
            clientSecret: googleCredentials.web.client_secret, //클라이언트 시크릿
            callbackURL: googleCredentials.web.redirect_uris[0] //콜백 주소
        },
        //내가 받아올 정보
        function (accessToken, refreshToken, profile, done) {
            console.log('GoogleStrategy', accessToken, refreshToken, profile);
            var email = profile.emails[0].value;
            var user = db.get('users').find({email:email}).value();
            if(user){
                user.googleId = profile.id;
                db.get('users').find({id:user.id}).assign(user).write();
            } else {
                user = {
                    id:shortid.generate(),
                    email:email,
                    displayName:profile.displayName,
                    googleId:profile.id
                }
                db.get('users').push(user).write();
            }
            done(null, user);
        }
    ));
    //Authenticate Requests 인증 요청
    app.get('/auth/google',
        passport.authenticate('google', {
            scope: ['https://www.googleapis.com/auth/plus.login', 'email']
        }));

    app.get('/auth/google/callback', //여기로 접속하면 
        passport.authenticate('google', { //이 미들웨어 리턴
            failureRedirect: '/auth/login' //로그인에 실패한 경우 여기로 보냄
        }),
        function (req, res) {
            res.redirect('http://localhost:8090/copyNpaste/login.htm');  //로그인 성공하면 여기로 이동시켜라
        });
    return passport;
}