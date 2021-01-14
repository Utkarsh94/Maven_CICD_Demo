<%-- 
    Document   : Home
    Created on : 14 Jan, 2021, 2:55:16 PM
    Author     : Utkarsh
--%>

<!DOCTYPE html>
<html>
<head>
    <title>Veena Tarang CHS</title>
    <link rel="stylesheet" href="support/vendor/bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="support/dist/css/bootstrapValidator.css"/> 
    <script type="text/javascript" src="support/vendor/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="support/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="support/dist/js/bootstrapValidator.js"></script>
    <link rel="stylesheet" href="extra/css/normalize.css">
    <link rel="stylesheet" href="extra/css/demo.css">
        <!-- Pushy CSS -->
        <link rel="stylesheet" href="extra/css/pushy.css">
        
</head>
<body>
    <%@include file="includepages/addresspage.jsp"%>
   
    <div class="container" >
        <div class="row">
            <!-- form: -->
            <section>
                <div class="col-lg-8 col-lg-offset-3">
                    <div class="page-header">
                        <h2>Admin Login</h2>
                    </div>

                    <form id="defaultForm" method="post" class="form-horizontal" action="loginServlet">
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Email Address</label>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" name="email" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label">Password</label>
                            <div class="col-lg-5">
                                <input type="password" class="form-control" name="password" />
                            </div>
                        </div>

                       

                        <div class="form-group ">
                            <div class="col-lg-9 col-lg-offset-3 ">
                                <button type="submit" class="btn btn-primary" name="signup" value="Login">Login</button>
                                
                              
                            </div>
                        </div>
                         <div class="form-group">
                        <hr/>
                        <div class="col-sm-6" style="padding: 0;"><a href="forgotpassword.jsp">Forgot Password?</a></div>
                       
                    </div>
                    </form>
                </div>
            </section>
            <!-- :form -->
        </div>
    </div>
      <!-- header-->
      
           <%@include file="includepages/footer.jsp"%>
       

<script type="text/javascript">
$(document).ready(function() {
    // Generate a simple captcha
    
    $('#defaultForm').bootstrapValidator({
//        live: 'disabled',
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            
           
           
            email: {
               validators: {
                   notEmpty: {
                        message: 'Email Address is required and cannot be empty'
                    },
                        regexp: {
                            regexp: '^[^@\\s]+@([^@\\s]+\\.)+[^@\\s]+$',
                            message: 'The value is not a valid email address'
                        }
                    }
                    
            },
            password: {
                validators: {
                    notEmpty: {
                        message: 'The password is required and cannot be empty'
                    }
                }
                    
            }
           
        }
    });

    
});
</script>
</body>
</html>