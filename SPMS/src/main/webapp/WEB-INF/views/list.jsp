<%@ page language="java" contentType="text/html; charset=UTF-8"						
    pageEncoding="UTF-8"%>						
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>						
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>						

<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>
		게시판 리스트
	</h1>


	<table class="table table-bordered" id="dataTable" width="100%"
		cellspacing="0">
		<thead>
			<tr>
				<th>#번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>수정일</th>
			</tr>
		</thead>

		<c:forEach items="${list }" var="board">
			<tr>
				<td><c:out value="${board.bno }" /></td>
				<td><c:out value="${board.title }" /></td>
				<td><c:out value="${board.writer }" /></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regDate }" /></td>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate }" /></td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>
