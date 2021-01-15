

<%
    
 /**   if (session.getAttribute("name") != "utkarshrastogi94@yahoo.com") {
        out.print("Name: "+(String) session.getAttribute("name"));
        out.println("<br>You don't have access to this page.");
        out.println("<br>");
        out.println("Click here to go to <a href='/Society/Adminlogin.jsp'>Login Page</a>");
    } else {
    **/
%>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Main Page</title>
        <meta name="description" content="Pushy is an off-canvas navigation menu for your website.">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">

        <link rel="stylesheet" href="extra/css/normalize.css">
        <link rel="stylesheet" href="extra/css/demo.css">
        <!-- Pushy CSS -->
      <link rel="stylesheet" href="extra/css/pushy.css">
        
        <!-- jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <style >
    #container{
        margin-top:-90px;
      
    }
</style>
    </head>
    
    <body>

        
            
           <!-- header-->
           <%@include file="includepages/addresspage.jsp"%>
        <!-- Pushy Menu -->
         <%@include file="includepages/sidebarmenu.jsp"%>
        
        <!-- Site Overlay -->
        <div class="site-overlay"></div>

        <!-- Your Content -->
        <div id="container">
            <!-- Menu Button -->
            <button class="menu-btn">&#9776; Menu</button>

           

        </div>
        <!-- header-->
           <%@include file="includepages/footer.jsp"%>
       

        <!-- Pushy JS -->
        <script src="extra/js/pushy.min.js"></script>
        
    </body>
</html>
