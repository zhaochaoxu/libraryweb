<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="t-header.jsp"%>
<div class="panel-body">
	<form id="signupForm" method="post" class="form-horizontal"
		action="/cardadd" novalidate="novalidate">
		<div class="form-group">
			<label class="col-sm-4 control-label" for="code">卡&nbsp;&nbsp;&nbsp;&nbsp;号：</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="code" name="code"
					placeholder="请输入卡号">
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-4 control-label" for="name">用户名：</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="name" name="name"
					placeholder="请输入用户名">
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-4 control-label" for="tel">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话:</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="tel" name="tel"
					placeholder="请输入电话">
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
$(function(){
	$("#card").addClass("active");
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