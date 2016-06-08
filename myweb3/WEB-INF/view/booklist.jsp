<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="t-header.jsp"%>
<a style="float: right" type="button" class="btn btn-primary"
	href="/bookadd">添加书籍</a>
<form method="get" class="navbar-form navbar-left" role="search" action="/bookhome">
	<div class="form-group">
		<input type="text" class="form-control" placeholder="Search" name="wd">
	</div>
	<button type="submit" class="btn btn-default">搜索</button>
</form>
<table class="table table-bordered">
	<thead>
		<tr>
			<th>编号</th>
			<th>书号</th>
			<th>书名</th>
			<th>作者</th>
			<th>出版社</th>
			<th>总数</th>
			<th>剩余数</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="bk" items="${book}">
			<tr>
				<th scope="row">${bk.id}</th>
				<td>${bk.code}</td>
				<td>${bk.title}</td>
				<td>${bk.author}</td>
				<td>${bk.publishing}</td>
				<td>${bk.total}</td>
				<td>${bk.count}</td>
				<td><button id="warning" data="${bk.id}" type="button"
						class="btn btn-danger btn-xs">删除</button>
					<button id="success" data="${bk.id}" data1="${bk.code}"
						type="button" class="btn btn-success btn-xs">修改</button></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<script>
	$(function() {
		$("#book").addClass("active");
		$("td>button.btn-danger").click(function() {
			if (confirm("确定要删除么")) {
				var id = $(this).attr("data");
				location.href = ("bookdel?id=" + id);
			}
		});
		$("td>button.btn-success").click(function() {
			var id = $(this).attr("data1");
			location.href = ("/bookedit?id=" + id);
		});
	});
</script>
<%@ include file="t-footer.jsp"%>