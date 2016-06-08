<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="t-header.jsp"%>
<h1>Bootstrap starter template</h1>

<c:choose>
	<c:when test="${'100'==param.mes}">
		<div style="color:green" class="alert alert-susscs alert-dismissible fade in" role="alert">
			<strong>借书成功！</strong>
		</div>
	</c:when>
	<c:when test="${'101'==param.mes}">
		<div style="color:red; fron-size:16px" class="alert alert-false alert-dismissible fade in" role="alert">
			<strong>借书失败！</strong>
		</div>
	</c:when>
	<c:when test="${'200'==param.mes}">
		<div style="color:green" class="alert alert-false alert-dismissible fade in" role="alert">
			<strong>还书成功！</strong>
		</div>
	</c:when>
	<c:when test="${'201'==param.mes}">
		<div style="color:red" class="alert alert-false alert-dismissible fade in" role="alert">
			<strong>还书失败！</strong>
		</div>
	</c:when>
</c:choose>
<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">
			<strong>借书</strong>
		</h3>
	</div>
	<div class="panel-body">
		<form id="brbookForm" method="post" class="form-horizontal"
			novalidate="novalidate" action="/borrowbook">
			<div class="form-group">
				<label class="col-sm-4 control-label" for="cardcode">卡号</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="cardcode"
						name="cardcode" placeholder="请输入图书证卡号">
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-4 control-label" for="bookcode">书号</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="bookcode"
						name="bookcode" placeholder="请输入书籍编号">
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-9 col-sm-offset-4">
					<button type="submit" class="btn btn-primary" name="signup"
						value="借书">借书</button>
				</div>
			</div>
		</form>
	</div>
</div>

<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">
			<strong>还书</strong>
		</h3>
	</div>
	<div class="panel-body">
		<form id="rebookForm" method="post" class="form-horizontal"
			novalidate="novalidate" action="/rebook">
			<div class="form-group">
				<label class="col-sm-4 control-label" for="cardcode">卡号</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="cardcode" name="cardcode"
						placeholder="请输入图书证卡号">
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-4 control-label" for="bookcode">书号</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="bookcode" name="bookcode"
						placeholder="请输入书籍编号">
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-9 col-sm-offset-4">
					<button type="submit" class="btn btn-primary" name="signup"
						value="还书">还书</button>
				</div>
			</div>
		</form>
	</div>
</div>

<script src="/js/jquery.validate.min.js"></script>
<script>
	$(function() {
		$("#home").addClass("active");
		$("#brbookForm").validate({
			rules : {
				code : "required",
				name : "required",
				tel : "required"

			},
			messages : {
				code : "",
				name : "",
				tel : ""
			},
		//errorElement : "em",
		});

		$("#rebookForm").validate({
			rules : {
				code : "required",
				name : "required",
				tel : "required"

			},
			messages : {
				code : "",
				name : "",
				tel : ""
			},
		//errorElement : "em",
		});
	});
</script>
<%@ include file="t-footer.jsp"%>
