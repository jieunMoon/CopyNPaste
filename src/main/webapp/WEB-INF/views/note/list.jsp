<!-- note>>
@JSP : list.jsp
@Date : 2018.10.09
@Author : 우나연, 임효진
@Desc : note 목록 페이지.
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="n-container">
	<div class="n-inner">
		<!-- Section -->
		<section>
			<header class="major">
				<h3>
					미분류<i class="fas fa-trash icon-size"></i>
				</h3>
			</header>
			<div class="row">
				<div class="blog">
					<div class="card text-center">
						<img class="card-img-top"
							src="https://images.pexels.com/photos/39811/pexels-photo-39811.jpeg?h=350&auto=compress&cs=tinysrgb"
							alt="" width="100%">
						<div class="card-block">
							<h4>가을에 쓴 편지</h4>
							<span>음담패썰</span> <span>2018.08.30</span>
						</div>
					</div>
				</div>
				<div class="blog">
					<div class="card text-center">
						<img class="card-img-top"
							src="https://images.pexels.com/photos/39811/pexels-photo-39811.jpeg?h=350&auto=compress&cs=tinysrgb"
							alt="" width="100%">
						<div class="card-block">
							<h4>가을에 쓴 편지</h4>
							<span>음담패썰</span> <span>2018.08.30</span>
						</div>
					</div>
				</div>
				<div class="blog">
					<div class="card text-center">
						<img class="card-img-top"
							src="https://images.pexels.com/photos/39811/pexels-photo-39811.jpeg?h=350&auto=compress&cs=tinysrgb"
							alt="" width="100%">
						<div class="card-block">
							<h4>가을에 쓴 편지</h4>
							<span>음담패썰</span> <span>2018.08.30</span>
						</div>
					</div>
				</div>
				<div class="blog">
					<div class="card text-center">
						<img class="card-img-top"
							src="https://images.pexels.com/photos/39811/pexels-photo-39811.jpeg?h=350&auto=compress&cs=tinysrgb"
							alt="" width="100%">
						<div class="card-block">
							<h4>가을에 쓴 편지</h4>
							<span>음담패썰</span> <span>2018.08.30</span>
						</div>
					</div>
				</div>
				<div class="blog">
					<div class="card text-center">
						<img class="card-img-top"
							src="https://images.pexels.com/photos/39811/pexels-photo-39811.jpeg?h=350&auto=compress&cs=tinysrgb"
							alt="" width="100%">
						<div class="card-block">
							<h4>가을에 쓴 편지</h4>
							<span>음담패썰</span> <span>2018.08.30</span>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<c:forEach items="${list}" var="list">
					<tr>
						<td class="seq">${list.noteNum}</td>
						<td class="seq">${list.folderName}</td>
						<td class="seq">${list.userEmail}</td>
						<td class="seq">${list.noteTitle}</td>
						<td class="seq">${list.noteContent}</td>
						<td class="seq">${list.noteDate}</td>
						<td class="seq">${list.subjectCode}</td>
						<td class="seq">${list.noteCount}</td>
						<td class="seq">${list.notePNum}</td>
						<td class="seq">${list.noteCheck}</td>
					</tr>
				</c:forEach>

			</div>

		</section>
	</div>
</div>

