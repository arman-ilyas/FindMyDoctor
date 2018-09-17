<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

  <!-- Access the bootstrap Css like this,
    Spring boot will handle the resource mapping automcatically -->
  <link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

  <!--
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
  <c:url value="/css/main.css" var="jstlCss" />
  <link href="${jstlCss}" rel="stylesheet" />

</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand">Find My Doctor</a>
    </div>
    <div id="navbar" class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="/">Home</a></li>
        <li><a href="/underconstruction">About</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">
  <div class="jumbotron">
    <h1 class="display-4">Hello, guest!</h1>
    <p class="lead">This is a simple web application for doctors and people who suffer from rare diseases. If you want to try the demo,
    choose the role by clicking I'm doctor or I'm patient button.</p>
    <hr class="my-4">
    <p>If you want to see the source code for this application please click button bellow.</p>
    <p class="lead">
      <a class="btn btn-primary btn-lg" target="_blank" href="https://github.com/NyghmetElemesov/findMyDoctor" role="button">Source Code</a>
    </p>
  </div>
  <div class="starter-template">
    <%--<h1>Spring Boot Web JSP Example</h1>--%>
    <%--<h2>Message: ${message}</h2>--%>
    <%--<button type="button" class="btn btn-primary">Primary</button>--%>
      <button type="button" onclick="location.href='/doctorpage'" class="btn btn-primary btn-lg btn-block">I'm doctor. I can help!</button>
      <button type="button" onclick="location.href='/underconstruction'" class="btn btn-secondary btn-lg btn-block">I'm patient with rare disease. I need help!</button>

  </div>

</div>

<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>