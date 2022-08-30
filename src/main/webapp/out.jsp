<%@ page import="by.itclass.constants.AppConstant" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/bootstrap-utilities.css">
	<link rel="stylesheet" href="css/bootstrap-reboot.css">
	<link rel="stylesheet" href="css/bootstrap-grid.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/style.css">
	<title>Authorization</title>
</head>
<body>
<c:import url="add/menu.jsp"/>

<div class="container c_corr" >
	<div class="row">
		<div class="col-md-12">
			<center>
				<h2>Authorization:</h2><br>
				<c:if test="${message != null}">
					<p style="color: #ff0000">${message}</p>
				</c:if>
			</center>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<form method="post" action="<c:url value="<%= AppConstant.AUTHORIZATION_CONT %>"/>">
				<input type="text" name="<%= AppConstant.LOGIN_LABEL %>" class="form-control" placeholder="Введите логин или почту"><br>
				<input type="password" name="<%= AppConstant.PASSWORD_LABEL %>" class="form-control" placeholder="Введите пароль"><br>
				<center>
					<input type="submit" class="btn btn-success" value="Авторизоваться"><br>
					<input type="submit" class="btn btn-link" value="Забыли пароль?">
				</center>
			</form>
		</div>
		<div class="col-md-4"></div>
	</div>
</div>

<c:import url="add/foot.jsp"/>
</body>
</html>