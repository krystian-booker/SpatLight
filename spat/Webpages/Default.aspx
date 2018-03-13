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

    <!-- Custom CSS -->
    <link href="../../Content/mainFile.css" rel="stylesheet" />

</head>
<body id="page-top">
    <!-- Header -->
    <header class="masthead d-flex">
        <div class="container text-center my-auto">
            <h1 class="mb-1">SPaT Light</h1>
            <h3 class="mb-5">
                <em>A screening tool for Seronegative Arthrtis</em>
            </h3>
            <a class="btn btn-primary btn-xl js-scroll-trigger" href="#question1" onclick="visible(question1)">Take Survey</a>
            <a class="btn btn-primary btn-xl js-scroll-trigger" href="http://www.mcmaster.ca">Information</a>
            <a class="btn btn-primary btn-xl js-scroll-trigger" href="#question1" onclick="showStuff()">Debug</a>
        </div>
        <div class="overlay"></div>
    </header>

    <!-- Container holding all of the questions -->
    <form runat="server">
        <div id="allQuestions" runat="server">
        </div>
    </form>

    <!-- Footer -->
    <footer class="footer text-center">
        <div class="container">
            <p class="text-muted small mb-0">Copyright &copy; SPaT Light 2018</p>
        </div>
    </footer>

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded js-scroll-trigger" href="#page-top">
        <i class="fa fa-angle-up"></i>
    </a>

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