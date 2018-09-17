<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
      <a href="/" class="navbar-brand">Find My Doctor</a>
    </div>
    <div id="navbar" class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li><a href="/underconstruction">About</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">
  <%-- start here--%>
  <div class="starter-template">

    <div class="container">
      <ul class="tabs">
        <li class="tab-link current" data-tab="tab-1">Login</li>
        <li class="tab-link" data-tab="tab-2">Register</li>
      </ul>
      <div id="tab-1" class="tab-content current">
        <form>
          <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else. To access use this credentials: <br /> user@gmail.com/password</small>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
          </div>
          <button id="submitButton" type=""  class="btn btn-primary">Submit</button>
        </form>
      </div>
      <div id="tab-2" class="tab-content">
        Under development.
      </div>
      <%--<select id="sessions"></select>--%>
      <%--<ul id="sessions" class="list-group">--%>
        <%--<li class="list-group-item">Cras justo odio</li>--%>
      <%--</ul>--%>
    </div><!-- container -->
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
            ai.main.getAjaxPatients();
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