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
                <em>Shining a Light on Seronegative Arthritis</em>
            </h3>

            <a class="btn btn-primary btn-xl js-scroll-trigger" href="#question1" 
                onclick="visible(question1); hideTop(); visible(myHeader); visible(theSideNav);" >Take Survey</a>

            <a class="btn btn-primary btn-xl" href="#resourcesSection" 
                onclick="visible(resourcesSection); hideTop(); visible(myHeader); enableScroll();">Resources</a>
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
        <!-- Information link one -->
        <div class="row mt-5">
            <!-- Left side of the page -->
            <div class="col-sm-2">
                <!-- Where all of the images for the resources go -->
                <img class="img-fluid" src="https://s3.amazonaws.com/files.enjin.com/1373471/mmc.PNG" />
            </div>

            <!-- Right side of the page -->
            <div class="col-sm-10">
                <!-- Where all of the text for the resources goes -->
                <span>
                    <a href="https://www.merckmanuals.com/home/bone,-joint,-and-muscle-disorders/joint-disorders/spondyloarthritis">
                        <h3>Spondyloarthritis Overview (Merck Manuals - Consumer Version)</h3>
                    </a>
                    Spondyloarthritis (SpA) causes joint pain similar to rheumatoid arthritis, 
                    but typically cannot be detected by a blood test. It is a type of seronegative arthritis. 
                </span>
            </div>
        </div>


        <!-- Information link two -->
         <div class="row mt-5">
            <!-- Left side of the page -->
            <div class="col-sm-2">
                <!-- Where all of the images for the resources go -->
                <img class="img-fluid" src="https://s3.amazonaws.com/files.enjin.com/1373471/mmp.PNG" />
            </div>

            <!-- Right side of the page -->
            <div class="col-sm-10">
                <!-- Where all of the text for the resources goes -->
                <span>
                    <a href="https://www.merckmanuals.com/professional/musculoskeletal-and-connective-tissue-disorders/joint-disorders/overview-of-seronegative-spondyloarthropathies">
                        <h3>Overview of Seronegative Spondyloarthropathies (Merck Manuals - Professional Version)</h3>
                    </a>
                    The Merck Manuals are a reputable medical reference first published in 1899 
                    by the pharmaceutical company Merck and Co. Since 2015 the Merck Manuals have been 
                    published online in two versions, one for consumers and one for healthcare professionals. 
                    This page is the professional version of the article above.
                </span>
            </div>
        </div>


        <!-- Information link three -->
         <div class="row mt-5 mb-3">
            <!-- Left side of the page -->
            <div class="col-sm-2">
                <!-- Where all of the images for the resources go -->
                <img class="img-fluid" src="https://s3.amazonaws.com/files.enjin.com/1373471/jh.PNG" />
            </div>

            <!-- Right side of the page -->
            <div class="col-sm-10">
                <!-- Where all of the text for the resources goes -->
                <span>
                    <a href="https://www.hopkinsarthritis.org/arthritis-info/ankylosing-spondylitis/">
                        <h3>Ankylosing Spondylitis -  Johns Hopkins Arthritis Centre</h3>
                    </a>
                    Ankylosing Spondylitis is a common form of Spondyloarthritis (SpA). 
                    This page from Johns Hopkins Arthritis Centre outlines the condition, 
                    its diagnosis, and treatment options.
                </span>
            </div>
        </div>

        <!-- Button for going back to the main screen -->
        <a class="btn btn-primary btn-xl mt-4" href="#banner-top" 
                onclick="goBack();">Go Back</a>
    </div>



    <!-- End of the survey, results section -->
    <div class="container" id="endOfSurvey">
        <div class="row">
            <div class="col-sm-12 text-center mt-5 mb-5">
                <h2>Survey results</h2>
            </div>
        </div>

        <!-- Not Likely SpA -->
        <div id="notLikely">
            <div class="row">
                <div class="col-sm-12 text-center mt-5 mb-5">
                    <h3 class="resultOutput text-success">Not Likely SpA</h3>
                </div>
            <div class="row">
                <div class="col-sm-12 text-center">
                    <span>
                        Based on your replies, it appears you do <strong>NOT LIKELY</strong> have seronegative arthritis or SpA.
                        <br /><br />
                        Nevertheless, if you are experiencing joint symptoms lasting longer than 
                        3 days, or several episodes of pain in a month, make an appointment see 
                        your family doctor who may be able to offer a definitive diagnosis.
                    </span>
                </div>
              </div>
            </div>
        </div>
        
        <!-- Possible Axial SpA -->
        <div id="possibleSpa">
            <div class="row">
                <div class="col-sm-12 text-center mt-5 mb-5">
                    <h3 class="resultOutput text-warning">Possible Axial SpA</h3>
                </div>
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <span>
                            Based on your replies, it appears <strong>POSSIBLE</strong> that you may 
                            have Axial SpA or another form of seronegative arthritis.
                            <br /><br />
                            Make an appointment to see your family doctor or a rheumatologist, who 
                            may be able to offer a definitive diagnosis.
                        </span>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Likely Axial SpA -->
        <div id="likelySpa">
            <div class="row">
                <div class="col-sm-12 text-center mt-5 mb-5">
                    <h3 class="resultOutput text-danger">Likely Axial SpA</h3>
                </div>
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <span>
                            Based on your replies, it appears <strong>LIKELY</strong> that you may 
                            have Axial SpA or another form of seronegative arthritis.
                            <br /><br />
                            Make an appointment to see your family doctor or a rheumatologist, who 
                            may be able to offer a definitive diagnosis.
                        </span>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Possible Peripheral SpA -->
        <div id="possiblePer">
            <div class="row">
                <div class="col-sm-12 text-center mt-5 mb-5">
                    <h3 class="resultOutput text-warning">Possible Peripheral SpA</h3>
                </div>
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <span>
                            Based on your replies, it appears <strong>POSSIBLE</strong> that you 
                            may have Peripheral SpA or another form of seronegative arthritis.
                            <br /><br />
                            Make an appointment to see your family doctor or a rheumatologist, who 
                            may be able to offer a definitive diagnosis.
                        </span>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Likely Peripheral SpA -->
        <div id="likelyPer">
            <div class="row">
                <div class="col-sm-12 text-center mt-5 mb-5">
                    <h3 class="resultOutput text-danger">Likely Peripheral SpA</h3>
                </div>
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <span>
                            Based on your replies, it appears <strong>LIKELY</strong> that you 
                            may have Peripheral SpA or another form of seronegative arthritis.
                            <br /><br />
                            Make an appointment to see your family doctor or a rheumatologist, who 
                            may be able to offer a definitive diagnosis.
                        </span>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Button for going to the resources page -->
        <div class="row">
            <div class="col-sm-12 text-center mt-5 mb-5">
                <a class="btn btn-primary btn-xl mt-5" href="#resourcesSection" onclick="visible(resourcesSection); hideTop(); hideEnd(); visible(myHeader);">Find out more</a>
            </div>
        </div>
    </div>
   

    <!-- Footer -->
    <footer class="footer text-center">
        <div class="container">
            <p class="text-muted small mb-0">Copyright &copy; SpAT Light 2018  &nbsp;&nbsp;<strong>|</strong>&nbsp;&nbsp; 
                SpAT Light is the brainchild of <strong>Dr. William Bensen</strong> and is dedicated to his memory.</p>
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