<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
<head>
<title>CarManager</title>
<link href="css/boostrap/bootstrap.min.css" rel="stylesheet">
</head>
<body>
 <div class="container">

      <form class="form-signin" action="j_spring_security_check" method="post">
        <h2 class="form-signin-heading">请登录</h2>
        <label for="inputEmail" class="sr-only">用户名</label>
        <input type="text" id="inputEmail" class="form-control" placeholder="用户名" required autofocus name="j_username">
        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="密码" required name="j_password">
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me" name="_spring_security_remember_me">记住密码
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
      </form>

    </div> <!-- /container -->
</body>
</html>
