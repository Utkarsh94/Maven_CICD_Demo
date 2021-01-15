<%-- 
    Document   : loginerror
    Created on : 28 Jun, 2017, 8:19:28 PM
    Author     : Utkarsh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Error Page</title>
        <link rel="stylesheet" href="support/vendor/bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="support/dist/css/bootstrapValidator.css"/> 
     <script type="text/javascript" src="support/vendor/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="support/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="support/dist/js/bootstrapValidator.js"></script>
    <link rel="stylesheet" href="Extra/css/normalize.css">
        <link rel="stylesheet" href="Extra/css/demo.css">
        <!-- Pushy CSS -->
        <link rel="stylesheet" href="Extra/css/pushy.css">
    </head>
    <body>
         <%@include file="includepages/addresspage.jsp"%>
          <div id="div1" class="container">
    <div class="col-sm-6 col-sm-offset-3">
        <div class="panel panel-default">
            <div class="panel-body">
                                   <legend>Error Message</legend>
                    
                    <div class="col-md-14 text-center form-group"  >
                      <h1>  <p>Enter Correct Email and Password!!<p> <h1>
                    </div>
                    <div class="form-group">
                        <hr/>
                        <div class="col-sm-6" style="padding:10px;"><a href="index.jsp">Try  Login Again?</a></div>
                    </div>
                
            </div>
        </div>
    </div>
          </div>
                
    </body>
</html>
