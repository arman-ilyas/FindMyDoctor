<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>

  <!-- Access the bootstrap Css like this,
    Spring boot will handle the resource mapping automcatically -->
  <link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>

  <!--
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
  <c:url value="/css/main.css" var="jstlCss"/>
  <link href="${jstlCss}" rel="stylesheet"/>



  <%--<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">--%>
  <!---- for moving objects make this first always after boootstrap.css ----->

  <link rel="stylesheet" href="css/bootstrap.css">
  <!---- Bootstrap.min link local project skeleton ----->

  <link rel="stylesheet" href="css/w3.css">
  <!--- This is the local w3css extended --->

  <link rel="stylesheet" href="css/animate.css">

  <link rel="stylesheet" href="css/style.css">
  <!---- my own link local for customizing ----->

  <script src="js/bootstrap.min.js"></script>
  <!---- Bootstrap js link local for well and modal + panels ----->

  <link rel="icon" href="images/a.png" type="images/water.png" />
  <!---- Icon link local ----->

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
  <!-------    font awesome online plug --------------->
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
      <a href="/" class="navbar-brand">Find My Doctor</a>
    </div>
    <div id="navbar" class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li><a href="/aboutme">About</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">
  <div class="starter-template">
    <div class="container">
    <%--start here--%>
      <div class="wrapper">
        <div class="container-fluid" id="top-container-fluid-nav">
          <div class="container">
            <!---- for nav container ----->
          </div>
        </div>

        <div class="container-fluid" id="body-container-fluid">
          <div class="container">
            <!---- for body container ---->
            <div class="row">
              <!-------mother container middle class------------------->
              <div class="col-lg-4">
                <div class="card" style="width:100%">
                  <img class="card-img-top" src="/images/3.jpg" alt="Card image"  style="width:100%">
                  <div class="card-body">
                    <h4 class="card-title">Ilyassov Arman</h4>
                    <ul class="list-inline" id="courses">
                      <li class="list-inline-item">
                        <i class="fa fa-folder-open-o"></i> Full Stack Developer
                      </li>

                    </ul>
                    <p class="card-text">Passioanate about technology and programming languages. Focusing on enterprise's back and front ends.</p>

                    <div class="address">
                      <ul class="w3-ul w3-small">
                        <li> <i class="fa fa-map-marker" aria-hidden="true"></i>  48 Strathmore Ave, Singapore </li>
                        <li> <i class="fa fa-envelope-o" aria-hidden="true"></i>  arman987@gmail.com </li>
                        <%--<li> <i class="fa fa-calendar-o" aria-hidden="true"></i>  1234-1234</li>--%>
                        <li><i class="fa fa-info" aria-hidden="true"></i> 3+ years of expeirence in Web Application development </li>
                      </ul>
                      </address>
                    </div>

                    <ul class="w3-ul w3-small">
                      <li><a href="" > Design </a> <span>75%</span></li>
                      <li><a href="">Front end </a><span>80%</span></li>
                      <li><a href="">Back end </a><span>85%</span></li>
                    </ul>

                    <div class="socials">
                      <p class="lower-case ">Find me</p>
                      <ul class="list-inline">
                        <button class="w3-button w3-blue" onclick="window.open('https://github.com/NyghmetElemesov')"><i class="fa fa-github"></i></button>
                        <button class="w3-button w3-green" onclick="window.open('https://www.linkedin.com/in/armantim/')"><i class="fa fa-linkedin"></i></button>
                        <button class="w3-button w3-red" onclick="window.open('https://sheberlik.com/')" ><i class="fa fa-wordpress"></i></button>
                      </ul>
                    </div>
                    <hr>
                    <p class="lower-case ">  Locate me</p>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8012710426283!2d103.8054053147539!3d1.293722999056404!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da1a322862324b%3A0xd181a47d073fb8a0!2sSingapore+140048!5e0!3m2!1sen!2ssg!4v1537403582817" width="100%" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
                    <hr>
                    <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
                    <br>
                  </div>
                </div>
              </div>
            </div>
          </div>



          <div class="container-fluid" id="footer-container-fluid">
            <div class="container">
              <!---- for footer container ---->
            </div>
          </div>



        </div>

    </div>
  </div>
</div>
<script>
  window.onload = function() {
    // similar behavior as clicking on a link
    window.location.href = "/aboutme";
  }
</script>
<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>