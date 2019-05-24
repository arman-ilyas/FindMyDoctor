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
        <li><a href="/aboutme">About</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">
  <%-- start here--%>
  <div class="starter-template">

    <div class="container">

      <div class="row profile">
        <div class="col-md-3">
          <div class="profile-sidebar">
            <!-- SIDEBAR USERPIC -->
            <div class="profile-userpic">
              <img src="../images/3.jpg" class="img-responsive" alt="">
            </div>
            <!-- END SIDEBAR USERPIC -->
            <!-- SIDEBAR USER TITLE -->
            <div class="profile-usertitle">
              <div class="profile-usertitle-name">
                Dr. Tim
              </div>
              <div class="profile-usertitle-job">
                Rare Disease Specialist
              </div>
            </div>
            <!-- END SIDEBAR USER TITLE -->
            <!-- SIDEBAR BUTTONS -->
            <div class="profile-userbuttons">
              <button type="button" class="btn btn-success btn-sm">Follow</button>
              <button type="button" class="btn btn-danger btn-sm">Message</button>
            </div>
            <!-- END SIDEBAR BUTTONS -->
            <!-- SIDEBAR MENU -->
            <div class="profile-usermenu">
              <ul class="nav">
                <li class="active">
                  <a >
                    <i class="glyphicon glyphicon-home"></i>
                    Overview </a>
                </li>
                <li>
                  <a >
                    <i class="glyphicon glyphicon-user"></i>
                    Account Settings </a>
                </li>
                <li>
                  <a >
                    <i class="glyphicon glyphicon-ok"></i>
                    Tasks <span class="badge badge-light">10</span>
                    </a>
                </li>
                <li>
                  <a >
                    <i class="glyphicon glyphicon-flag"></i>
                    Help </a>
                </li>
              </ul>
            </div>
            <!-- END MENU -->
          </div>
        </div>
        <div class="col-md-9">
          <div class="profile-content">
            <ul id="patientList" class="list-group">
              <li class="list-group-item active">List of all patients: </li>
            </ul>
            <div class="btn-group btn-group-toggle" data-toggle="buttons">
              <label class="btn btn-secondary active">
                <input type="radio" name="options" id="option1" autocomplete="off" checked> Fix
              </label>
              <label class="btn btn-secondary">
                <input type="radio" name="options" id="option2" autocomplete="off"> Stop fixing
              </label>
              <%--<label class="btn btn-secondary">--%>
                <%--<input type="radio" name="options" id="option3" autocomplete="off"> Radio--%>
              <%--</label>--%>
            </div>
            <span class="badge badge-success">Please note that this app is still under development. Nothing here is final.</span>
          </div> <!-- profile content -->
        </div>
      </div>
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
    // retrieve the list of patients using ajax from our db
    ai.main.getAjaxPatients();


  })

</script>