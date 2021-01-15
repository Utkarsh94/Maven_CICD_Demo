<!DOCTYPE html>
<html>
<head>
    <title>ForgotPassword</title>
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
                        <h2>Forgot Password</h2>
                    </div>

                    <form id="defaultForm" method="post" class="form-horizontal" action="">
                        

                        
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Email Address</label>
                            <div class="col-lg-5">
                                <input type="text" class="form-control" name="email" />
                            </div>
                        </div>


                        
                        <div class="form-group">
                            <label class="col-lg-3 control-label" id="captchaOperation"></label>
                            <div class="col-lg-2">
                                <input type="text" class="form-control" name="captcha" />
                            </div>
                        </div>
                        
                        <div class="form-group ">
                            <div class="col-lg-9 col-lg-offset-3 ">
                                <button type="submit" class="btn btn-primary" name="signup" value="Sign up">Submit</button>
                                
                              
                            </div>
                        </div>
                         <div class="form-group">
                        <hr/>
                         <div class="col-sm-6" style="padding: 0;"><a href="index.jsp" id="home">Home Page</a></div>
                    </div>
                    </form>
                </div>
            </section>
            <!-- :form -->
        </div>
    </div>
     
     <%@include file="includepages/footer.jsp"%>

<script type="text/javascript">
$(document).ready(function() {
    // Generate a simple captcha
    // Generate a simple captcha
    function randomNumber(min, max) {
        return Math.floor(Math.random() * (max - min + 1) + min);
    };
    $('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));
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
           captcha: {
                validators: {
                    callback: {
                        message: 'Wrong answer',
                        callback: function(value, validator) {
                            var items = $('#captchaOperation').html().split(' '), sum = parseInt(items[0]) + parseInt(items[2]);
                            return value == sum;
                        }
                    }
                }
            }
           
        }
    });

    
});
</script>
</body>
</html>