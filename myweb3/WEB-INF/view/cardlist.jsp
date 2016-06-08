<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="t-header.jsp"%>
<a style="float: right" type="button" class="btn btn-primary"
	href="/cardadd">新建图书卡</a>
<table class="table table-bordered">
	<thead>
		<tr>
			<th>编号</th>
			<th>卡号</th>
			<th>姓名</th>
			<th>电话</th>
			<th>操作</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="cd" items="${card}">
			<tr>
				<th scope="row">${cd.id}</th>
				<td>${cd.code}</td>
				<td>${cd.name}</td>
				<td>${cd.tel}</td>
				<td><button id="warning" data="${cd.id}" type="button"
						class="btn btn-danger btn-xs">删除</button>
					<button id="success" data="${cd.id}" data1="${cd.code}"type="button"
						class="btn btn-success btn-xs">修改</button></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<script>
	$(function() {
		$("#card").addClass("active");
		$("td>button.btn-danger").click(function() {
			if (confirm("确定要删除么")) {
				var id = $(this).attr("data");
				location.href = ("cardel?id=" + id);
			}
		});
		$("td>button.btn-success").click(function(){
			var id = $(this).attr("data1");
			location.href=("/cardedit?id="+id);
		});
	});
</script>
<%@ include file="t-footer.jsp"%>