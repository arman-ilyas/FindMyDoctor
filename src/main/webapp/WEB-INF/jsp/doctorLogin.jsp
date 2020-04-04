<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- Access the bootstrap Css like this,
   Spring boot will handle the resource mapping automcatically -->
  <link rel="stylesheet" type="text/css" href="../webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

  <!--
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
  <c:url value="../css/main.css" var="jstlCss" />
  <link href="${jstlCss}" rel="stylesheet" />


</head>
<body>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
  <%-- start here--%>
    <div class="wrapper fadeInDown">
      <div id="formContent">
        <!-- Tabs Titles -->

        <!-- Icon -->
        <div class="fadeIn first">
          <img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="User Icon" />
        </div>

        <!-- Login Form -->
        <form>
          <input type="text" id="login" class="fadeIn second" name="login" placeholder="login">
          <input type="text" id="password" class="fadeIn third" name="login" placeholder="password">
          <input type="submit" class="fadeIn fourth" value="Log In">
        </form>

        <!-- Remind Passowrd -->
        <div id="formFooter">
          <a class="underlineHover" href="#">Forgot Password?</a>
        </div>

      </div>
    </div>
    <%-- end here--%>
</div>

<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="/js/init.js"></script>
<script src="/js/ai.findmydoctor.main.js"></script>
<script>


  $(document).ready(function(){

    $("#submitButton").click(function () {
          var email = $('#exampleInputEmail1').val();
          var password = $('#exampleInputPassword1').val();
          if (email === 'user@gmail.com' && password === 'password') {
            window.location.href = '/doctor/home';
          } else {
            $('#exampleInputEmail1').val("");
            $('#exampleInputPassword1').val("");
            alert("Please use user@gmail.com/password combination.");
          }
        }
    );

    $('ul.tabs li').click(function(){
      var tab_id = $(this).attr('data-tab');

      $('ul.tabs li').removeClass('current');
      $('.tab-content').removeClass('current');

      $(this).addClass('current');
      $("#"+tab_id).addClass('current');
    })

  })
</script>