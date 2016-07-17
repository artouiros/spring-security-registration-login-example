<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Регистрация</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
		<link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
		<link href="${contextPath}/resources/css/form-elements.css" rel="stylesheet">
		<link href="${contextPath}/resources/css/style.css" rel="stylesheet">
		<link href="${contextPath}/resources/css/font-awesome.min.css" rel="stylesheet">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>

        <!-- Top content -->
        <div class="top-content">

            <div class="inner-bg">
                <div class="container">

                    <div class="container-fluid">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1>Регистрация и авторизация в Spring MVC 4 используя Spring Security, Spring Data JPA и MySQL</h1>
                            <div class="description">
                            	<p>
	                            	Больше информации вы можете найти по адресу  <a href="http://zeewyeex.xyz/web-development/java/" target="_blank"><strong>http://zeewyeex.xyz/web-development/java/</strong></a>
                            	</p>
                            </div>
                        </div>
                    </div>

                    <div class="container-fluid">
<div class="form-box">
                        		<div class="form-top">
	                        		<div class="form-top-left">
	                        			<h3>Регистрация нового пользователя</h3>
	                            		<p>Заполните форму ниже:</p>
	                        		</div>
	                        		<div class="form-top-right">
	                        			<i class="fa fa-pencil"></i>
	                        		</div>
	                            </div>
	                            <div class="form-bottom">
	<form:form method="POST" modelAttribute="userForm" class="registration-form">
            <h2 class="form-signin-heading">Введите ваши данные</h2>
            <spring:bind path="username">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="username" class="form-control" placeholder="Имя пользователя"
                                autofocus="true"></form:input>
                    <form:errors path="username"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="password">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="password" class="form-control" placeholder="Пароль"></form:input>
                    <form:errors path="password"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="passwordConfirm">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="passwordConfirm" class="form-control"
                                placeholder="Повторите пароль"></form:input>
                    <form:errors path="passwordConfirm"></form:errors>
                </div>
            </spring:bind>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Регистрация</button>
        </form:form>
			                    </div>
                        	</div>
                    </div>

                </div>
            </div>

        </div>

        <!-- Footer -->
        <footer>
        	<div class="container">
        		<div class="row">

        			<div class="col-sm-8 col-sm-offset-2">
        				<div class="footer-border"></div>
        				<p>Тема выполнена Anli Zaimi. Веб-сайт - <a href="http://azmind.com" target="_blank"><strong>AZMIND</strong></a> <i class="fa fa-smile-o"></i></p>
        			</div>

        		</div>
        	</div>
        </footer>

        <!-- Javascript -->
        <script src="${contextPath}/resources/js/jquery-1.11.1.min.js"></script>
        <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
        <script src="${contextPath}/resources/js/jquery.backstretch.min.js"></script>
        <script src="${contextPath}/resources/js/scripts.js"></script>

        <!--[if lt IE 10]>
            <script src="${contextPath}/resources/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>