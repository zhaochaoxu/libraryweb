<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="t-header.jsp"%>
<div class="panel-body">
	<form id="signupForm" method="post" class="form-horizontal"
		action="/bookedit" novalidate="novalidate">
		<input type="hidden" value="${bk.id}" name="id" />
		<div class="form-group">
			<label class="col-sm-4 control-label" for="code">卡&nbsp;&nbsp;&nbsp;&nbsp;号：</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="code" name="code"
					placeholder="请输入书号" value="${bk.code}">
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-4 control-label" for="title">书名：</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="title" name="title"
					placeholder="请输入书名" value="${bk.title}">
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-4 control-label" for="author">作&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;者:</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="author" name="author"
					placeholder="请输入作者" value="${bk.author}">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="publishing">出&nbsp;版&nbsp;社:</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="publishing"
					name="publishing" placeholder="请输入出版社" value="${bk.publishing}">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="total">总&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数:</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="total" name="total"
					placeholder="请输入总数" value="${bk.total}">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="count">剩余&nbsp;&nbsp;数量:</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="count" name="count"
					placeholder="请输入剩余数量" value="${bk.count}">
			</div>
		</div>

		<div class="form-group">
			<div class="col-sm-9 col-sm-offset-4">
				<button type="submit" class="btn btn-primary" name="signup"
					value="Sign up">添加</button>
			</div>
		</div>
	</form>
</div>

<script src="/js/jquery.validate.min.js"></script>
<script>
	$(function() {
		$("#book").addClass("active");
		$("#signupForm").validate({
			rules : {
				code : "required",
				name : "required",
				tel : "required"
			},
			message : {
				code : "",
				name : "",
				tel : ""
			}

		});
	})
</script>
<%@ include file="t-footer.jsp"%>