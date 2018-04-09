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
                onclick="visible(question1); hideTop(); visible(myHeader); visible(theSideNav);" >Take Survey</a>
            <a class="btn btn-primary btn-xl" href="#resourcesSection" 
                onclick="visible(resourcesSection); hideTop(); visible(myHeader); hideNav(); ">Information</a>
                <a class="btn btn-primary" href="#endOfSurvey" onclick="visible(endOfSurvey); hideTop();">End</a>
            </div>
        </div> 
    </div>

    

    <!-- Two columns on the page, right and left. Right is the progress bar, left is the content. -->
    <div class="container" id="questionsAndProgress">
        <div class="row">
            <!-- Left side of the page -->
            <div class="col-sm">

              <!-- Container holding all of the questions -->
              <form runat="server">
                  <div id="allQuestions" runat="server">
                  </div>
              </form>
            </div>

            <!-- Right side of the page -->
            <div class="col-sm sidenav" id="theSideNav">
                <!-- Progress bar that scrolls and updates -->
                <progress class="vert" value="40" max="100" id="progressBar"></progress>
            </div>
        </div>
    </div>



    <div class="container" id="resourcesSection">
        <!-- Information section one -->
        <div class="row m-4">
            <!-- Left side of the page -->
            <div class="col-sm-2">
                <!-- Where all of the images for the resources go -->
                <img class="img-fluid vertical-center" src="https://images.pexels.com/photos/112392/pexels-photo-112392.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" />
            </div>

            <!-- Right side of the page -->
            <div class="col-sm-10">
                <!-- Where all of the text for the resources goes -->
                <span>
                    <a href="#"><h3>Information One</h3></a>
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu 
                    fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa 
                    qui officia deserunt mollit anim id est laborum."
                </span>
            </div>
        </div>


        <!-- Information section two -->
         <div class="row m-4">
            <!-- Left side of the page -->
            <div class="col-sm-2">
                <!-- Where all of the images for the resources go -->
                <img class="img-fluid vertical-center" src="https://images.pexels.com/photos/924863/pexels-photo-924863.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" />
            </div>

            <!-- Right side of the page -->
            <div class="col-sm-10">
                <!-- Where all of the text for the resources goes -->
                <span>
                    <a href="#"><h3>Information Two</h3></a>
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu 
                    fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa 
                    qui officia deserunt mollit anim id est laborum."
                </span>
            </div>
        </div>


        <!-- Information section three -->
         <div class="row m-4">
            <!-- Left side of the page -->
            <div class="col-sm-2">
                <!-- Where all of the images for the resources go -->
                <img class="img-fluid vertical-center" src="https://images.pexels.com/photos/917486/pexels-photo-917486.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" />
            </div>

            <!-- Right side of the page -->
            <div class="col-sm-10">
                <!-- Where all of the text for the resources goes -->
                <span>
                    <a href="#"><h3>Information Three</h3></a>
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu 
                    fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa 
                    qui officia deserunt mollit anim id est laborum."
                </span>
            </div>
        </div>


        <!-- Information section four -->
         <div class="row m-4">
            <!-- Left side of the page -->
            <div class="col-sm-2">
                <!-- Where all of the images for the resources go -->
                <img class="img-fluid vertical-center" src="https://images.pexels.com/photos/917486/pexels-photo-917486.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260" />
            </div>

            <!-- Right side of the page -->
            <div class="col-sm-10">
                <!-- Where all of the text for the resources goes -->
                <span>
                    <a href="#"><h3>Information four</h3></a>
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu 
                    fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa 
                    qui officia deserunt mollit anim id est laborum."
                </span>
            </div>
        </div>


        <!-- Button for going back to the main screen -->
        <a class="btn btn-primary btn-xl" href="#banner-top" 
                onclick="goBack();">Go Back</a>
    </div>



    <!-- End of the survey, results section -->
    <div class="container" id="endOfSurvey">
        <div class="row">
            <div class="col-sm-12">
                <h2>Survey results</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 text-center mt-5 mb-5">
                <h3 id="resultOutput">You should see your doctor</h3>
            </div>
        <div class="row">
            <div class="col-sm-6">
                <span>
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu 
                    fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa 
                    qui officia deserunt mollit anim id est laborum."
                </span>
            </div>
            <div class="col-sm-6">
                <span>
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu 
                    fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa 
                    qui officia deserunt mollit anim id est laborum."
                </span>
            </div>
          </div>
            <div class="row">
                <div class="col-sm-12 mx-auto">
                    <a class="btn btn-primary btn-xl mt-5" href="#resourcesSection" 
                onclick="visible(resourcesSection); hideTop(); hideEnd();">Information</a>
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
    <script src="../Scripts/CustomJS/SurveyAlgorithm.js"></script>
</body>
</html>