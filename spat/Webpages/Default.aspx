<%@ Page Title="SPaT Light" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="spat._Default" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>SPaT Light</title>

    <!-- Bootstrap Core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="../../Content/mainFile.css" rel="stylesheet" />
    <link href="../../Content/stylish-portfolio.css" rel="stylesheet" />
    <link href="../../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../../vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" />

    <!-- Custom CSS and Icon -->
    <link rel='icon' href='/Images/favicon.ico' type='image/x-icon'/ >
    <link href="../../Content/mainFile.css" rel="stylesheet" />

</head>
<body id="page-top">

    <!-- Nav bar that scrolls -->
    <div class="header" id="myHeader">
        <img src="/Images/logo.png" height="70" id="mainLogo"/>
    </div>

    <!-- Header -->
    <div id="banner-top">
        <!-- The video -->
        <video autoplay muted loop id="myVideo" class="embed-responsive embed-responsive-1by1">
            <source src="/Images/loop.mp4" type="video/mp4">
        </video>

        <div class="content">
            <div class="container text-center my-auto">
            <h1 class="mb-1"><img src="/Images/alt-logo.png" class="img-fluid" id="spatLogo"/></h1>
            <h3 class="m-5">
                <em>Seronegative Arthritis Detection Tool</em>
            </h3>
            <a class="btn btn-primary btn-xl js-scroll-trigger" href="#question1" 
                onclick="visible(question1); hideTop(); visible(myHeader); visible(tempProgressBar);" >Take Survey</a>
            <a class="btn btn-primary btn-xl js-scroll-trigger" href="http://www.mcmaster.ca">Information</a>
            <a class="btn btn-primary btn-xl js-scroll-trigger" href="#question1" onclick="showStuff()">Debug</a>
            </div>
        </div> 
    </div>

    <!-- Two columns on the page, right and left. 
        Right is the progress bar, left is the content.
    -->
    <div class="container" id="questionsAndProgress">
        <div class="row">
            <!-- Left side of the page -->
            <div class="col-sm-10">
              <!-- Container holding all of the questions -->
              <form runat="server">
                  <div id="allQuestions" runat="server">
                  </div>
              </form>
            </div>

            <!-- Right side of the page -->
            <div class="col-sm-2">
                <div class="sidenav">
                   <!-- Progress bar that scrolls and updates -->
                    <img src="/Images/progress.png" id="tempProgressBar"/>
                </div>
            </div>
        </div>
    </div>
   
    <!-- Footer -->
    <footer class="footer text-center">
        <div class="container">
            <p class="text-muted small mb-0">Copyright &copy; SpAT Light 2018</p>
        </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="../Scripts/CustomJS/stylish-portfolio.min.js"></script>
    <script src="../Scripts/CustomJS/mainFile.js"></script>
    <script src="../Scripts/CustomJS/HomunculusChart.js"></script>
</body>
</html>