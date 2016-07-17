<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Главная</title>

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
                                   </div>



                    <div class="container" style="margin-top: 40px;margin-bottom: 20px;">
                    	<div class="row panel">
                    		<div class="col-md-4 bg_blur ">

                    		</div>
                            <div class="col-md-8  col-xs-12">
                               <img src="https://www.gravatar.com/avatar/00000000000000000000000000000000?d=retro&amp;f=y" class="img-thumbnail picture hidden-xs">

                               <div class="header">
                               <c:if test="${pageContext.request.userPrincipal.name != null}">
                                    <h1>Привет ${pageContext.request.userPrincipal.name}</h1>
                                     <form id="logoutForm" method="POST" action="${contextPath}/logout">
                                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                            </form>
                                </c:if>
                                <span style="font-size: 14px; line-height: 1.0em;">Эта страница была закрыта, вы попали на неё, так как авторизировались. Чтобы попасть на неё вновь, авторизироваться не нужно, Spring Security поддерживает сессионные куки. К сожалению, имя пользователя это всё, что мы можем тут показать. Пароль не можем, он зашифрован bcrypt-ом, мы ведь нормальные. Добавить нужные поля в базу и в код не составит никакого труда.</span>
                               </div>

                            </div>




                      <button type="button" class="btn btn-info" onclick="document.forms['logoutForm'].submit()" style="float: right;">Выйти</button>
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