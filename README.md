![SpatLight Logo](https://github.com/krystianBooker/SpatLight/blob/master/spatLightImages/logo.png)

**Operating Instructions**
April 11, 2018
Team:<br>
Booker, Krystian<br>
Flood, Isaiah<br>
Stephen, Lauren<br>
Szucsik, Michael<br>


## Contents

- Introduction
- Operating Instructions
- Build Instructions
- Seronegative Arthritis Screening Survey
- Seronegative Arthritis Information Portal
- SpAT Light Administration Portal
- Login
- Manage Questions
- View Statistics
- Outstanding Issues
- Future Plans


## Introduction

This document outlines Operating Instructions for the SpAT Light web application. Due to ongoing development, screenshots may appear slightly different than the actual application.

## Operating Instructions

This section outlines basic operating and build instructions for the SpAT Light Web
Application (screening survey and information portal) and the SpAT Light Administration
Portal

## Build Instructions

1. Download and unzip the spatLight-master.zip file
2. Open the spatLight directory
3. Open spat.sln with Visual Studio
4. In Solution Explorer expand the Webpages folder
5. Set Default.aspx as the Start Page and run project to access Spat Light app
6. Set AdminPortal.aspx as Start Page to access Admin Portal

## Seronegative Arthritis Screening Survey

1. Navigate to the SpAT Light Web Application
2. Select the ​ **Take Survey** ​​ option
    <br/>
    <img src="https://github.com/krystianBooker/SpatLight/blob/master/spatLightImages/mainPage.png" width="600" height="500">
    <br/>
3. Answer each question by selecting the relevant answer option(s). There are three
    types of question responses:
       a. Radio buttons, that require the user to select one option only.
          <br/>
          <img src="https://github.com/krystianBooker/SpatLight/blob/master/spatLightImages/radioQuestion.png" width="300" height="250">
          <br/>
       b. Checkboxes where a user may select one response, multiple responses, or
          no response
          <br/>
          <img src="https://github.com/krystianBooker/SpatLight/blob/master/spatLightImages/checkBoxQuestion.png" width="300" height="250">
          <br/>
       c. A human body joint map (homunculus) where users can indicate where they
          have experienced joint pain - a user may select one joint, multiple joints, or no
          joints
          <br/>
          <img src="https://github.com/krystianBooker/SpatLight/blob/master/spatLightImages/homunculusQuestion.png" width="300" height="300">
          <br/>
4. After entering your response to a question, select ​ **Next** ​​ to move to the next question
    <br/>
    <img src="https://github.com/krystianBooker/SpatLight/blob/master/spatLightImages/nextButton.png" width="300" height="150">
    <br/>
5. To go back to a previous question to review or change your answer, select ​ **Previous**
    <br/>
    <img src="https://github.com/krystianBooker/SpatLight/blob/master/spatLightImages/backButton.png" width="300" height="150">
    <br/>
6. If you wish to see information about why we are asking a particular question, select
    the ​ **_Why are we asking this question?_** ​​ link that appears below each question
       <br/>
       <img src="https://github.com/krystianBooker/SpatLight/blob/master/spatLightImages/whyQuestion.png" width="300" height="250">
       <br/>
7. If you wish to see information about a particular illness or health condition the survey
    asks about, select the information icon beside each illness
8. After you have completed all questions, select ​ **Submit** ​​ to submit your answers and
    receive results
9. Results might be that the user does NOT LIKELY have SpA, has POSSIBLE SpA, or
    LIKELY has SpA and will recommend next steps such as a doctor’s visit

## Seronegative Arthritis Information Portal

1. Navigate to the SpAT Light Web Application
2. Select the ​ **Information** ​​ option
    <br/>
    <img src="https://github.com/krystianBooker/SpatLight/blob/master/spatLightImages/informationPage.png" width="600" height="500">
    <br/>
3. You will be taken to a page of links providing reputable information about
    seronegative arthritis​_._

## SpAT Light Administration Portal

## Login

1. Navigate to the SpAT Light Administration Portal
2. Login by entering:
    a. Username:​ ​​ _spatAdmin_
    b. Password: ​ arthritis^
    c. Select ​ Login
    <br/>
    <img src="https://github.com/krystianBooker/SpatLight/blob/master/spatLightImages/adminLogin.png" width="300" height="200">
    <br/>

## Manage Questions

To manage survey questions, select ​ **Manage Questions** ​​ in the top right corner of the admin
page.
![Manage Questions](https://github.com/krystianBooker/SpatLight/blob/master/spatLightImages/manageQuestions.png)
You have the options to:
- Edit Question text
- Edit Question Description text
- Edit Answer option text
- Change the point weight of questions (affects screening algorithm)
- Add an answer option
_Note: Because of the sensitive algorithm we use to identify possible SpA, functionality to add
or delete questions is not currently available_


Make sure to select ​ **Save Changes** ​​ after you have made your desired changes
![Edit Questions](https://github.com/krystianBooker/SpatLight/blob/master/spatLightImages/editQuestion.png)

## View Statistics

Select ​ **View Statistics** ​​ in the top right corner of the Admin page to view SpAT Light
statistics.

![Statistics page](https://github.com/krystianBooker/SpatLight/blob/master/spatLightImages/statistics.png)

## Outstanding Issues

This application should be considered a Prototype / Proof of Concept rather than a finished,
deployable product. There are some bugs and incomplete features.
- Some of the explanatory text and links to resources should be considered
placeholders. They are accurate / reliable information to the best of our knowledge,
but our client will need to have final say on all information / resources provided.
- There is a bug where if you change question text in the admin portal it can reverse
the Survey Question with the Why Are We Asking This explanation.
- Once the application has determined that you have Likely SpA, going back and
changing your answers will not currently change this result – this will need to be fixed
before final deployment.
- Our algorithm for determining SpA is quite sophisticated. Initial testing shows it to be
accurate according to our understanding of what it should be. However, there may be
specific instances where the application would provide a different diagnosis than a
doctor. Complete testing of this feature will require additional input from our clients,
and possibly some sort of clinical trial with actual patients.
- The app is still not as ‘user friendly’ on small screens as it needs to be. Font size
likely needs to be increased further, and the homunculus (joint map) can be a
challenge on small screens.
- There are joints that need to be added to the homunculus (joint map), specifically
back and neck joints. These points exist in code but are currently hidden from users.
The homunculus diagram likely needs to be reworked/resized somewhat to
accommodate these new points.


## Future Plans

Our group is currently discussing the future of this project and who will be continuing work on
the project. These discussions are ongoing. It seems likely that some ​ _but not all_ ​ members
will continue working on this project.
If no members choose to continue with the project, then we are willing to hand off the project
to other students at Mohawk and / or to the client to continue the project. Again, though, it
seems likely that at least some of our members will continue to work on the project in the
medium term.

Future Features to Add
The client would like to add some sort of chat forum for users to interact with each other,
share support information and resources. There are plugins that can accomplish this fairly
easily we think, although a chat forum would require ongoing moderation.
Online resources for SpA are fragmented and confusing. Our resources page could
distinguish itself by prioritizing the best online resources, offering explanatory summaries,
and in some cases creating original content designed for ordinary people. At the moment we
offer the ability to share resources. Evaluating and summarizing content for users (curating
content) would add a lot of value to SpAT Light.


