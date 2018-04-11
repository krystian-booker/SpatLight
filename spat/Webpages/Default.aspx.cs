using spat.Managers;
using spat.Models;
using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace spat
{
    public partial class _Default : Page
    {
        private IServerConnectionManager _serverConnection;

        protected void Page_Load(object sender, EventArgs e)
        {
            _serverConnection = new ServerConnectionManager();

            GenerateSurvey();
        }

        private void GenerateSurvey()
        {
            var questionList = _serverConnection.GetSurveyQuestions();

            foreach (var question in questionList)
            {
                var questionHTML = string.Empty;
                switch (question.QuestionType)
                {
                    case 0:
                        GererateNewRadioQuestion(question);
                        break;
                    case 2:
                        GenerateCheckBoxQuestion(question);
                        break;
                    case 3:
                        GenerateHomunculusChart(question);
                        break;
                }
            }
        }

        private void GererateNewRadioQuestion(QuestionModel question)
        {
            var previousQuestionId = question.QuestionId;
            var nextQuestionId = question.QuestionId;
            previousQuestionId--;
            nextQuestionId++;

            var surveyAnswerList = GenerateRadioButtonList(question.QuestionId);

            var htmlObjectList = new List<object>
            {
                //Question type 1
                new LiteralControl(string.Format("<section class=\"content-section\" class=\"questionTypeTwo\" id=\"question{0}\">", question.QuestionId)),
                new LiteralControl("<div class=\"container text-center\">"),
                new LiteralControl("<div class=\"row\">"),
                new LiteralControl("<div class=\"col-lg-10 mx-auto\">"),
                new LiteralControl(string.Format("<h1 class=\"not_bold\">Question {0}/13</h1>", question.QuestionId)),
                new LiteralControl("<p class=\"lead mb-2\">"),
                new LiteralControl("</p>"),
                new LiteralControl(string.Format("<p class=\"lead mt-5 question_bold\">{0}<br></p>", question.QuestionText)),
                new LiteralControl(string.Format("<a href=\"\" data-toggle=\"modal\" data-target=\"#whyAsking{0}\">Why are we asking this?</a>", question.QuestionId)),
                new LiteralControl("<div class=\"info m-4\" align=\"center\">"),
                surveyAnswerList,
                new LiteralControl("</div>"),
                new LiteralControl("</p>"),
                new LiteralControl(string.Format("<a class=\"btn btn-dark btn-xl js-scroll-trigger\" href=\"#question{0}\" style=\"margin: 5px;\">Previous</a>", previousQuestionId)),
                new LiteralControl(string.Format("<a class=\"btn btn-dark btn-xl js-scroll-trigger\" href=\"#question{0}\" onclick=\"visible(question{0});Question{1}();\">&nbsp;&nbsp;&nbsp; Next &nbsp;&nbsp;&nbsp;</a>", nextQuestionId, question.QuestionId)),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),

                //Popup
                new LiteralControl(string.Format("<div id=\"whyAsking{0}\" class=\"modal fade\" role=\"dialog\">", question.QuestionId)),
                new LiteralControl("<div class=\"modal-dialog\">"),
                new LiteralControl("<div class=\"modal-content\">"),
                new LiteralControl("<div class=\"modal-header\">"),
                new LiteralControl("<h4 class=\"modal-title\">Why are we asking this?</h4>"),
                new LiteralControl("<button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>"),
                new LiteralControl("</div>"),
                new LiteralControl("<div class=\"modal-body\">"),
                new LiteralControl(string.Format("<p class=\"insideModal\">{0}</p>", question.QuestionDescription)),
                new LiteralControl("</div>"),
                new LiteralControl("<div class=\"modal-footer\">"),
                new LiteralControl("<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>"),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),
                new LiteralControl("</section>")
            };
            PlaceUIObjects(htmlObjectList);
        }

        private void GenerateCheckBoxQuestion(QuestionModel question)
        {
            var previousQuestionId = question.QuestionId;
            var nextQuestionId = question.QuestionId;
            previousQuestionId--;
            nextQuestionId++;

            var surveyAnswerList = GenerateCheckBoxList(question.QuestionId);

            var htmlObjectList = new List<object>
            {
                //Question type 2
                new LiteralControl(string.Format("<section class=\"content-section\" class=\"questionTypeThree\" id=\"question{0}\">", question.QuestionId)),
                new LiteralControl("<div class=\"container text-center\">"),
                new LiteralControl("<div class=\"row\">"),
                new LiteralControl("<div class=\"col-lg-10 mx-auto\">"),
                new LiteralControl(string.Format("<h1 class=\"not_bold\">Question {0}/13</h1>", question.QuestionId)),
                new LiteralControl("<p class=\"lead mb-2\">"),
                new LiteralControl(string.Format("<p class=\"lead mt-5 question_bold\">{0}<br></p>", question.QuestionText)),
                new LiteralControl(string.Format("<a href=\"\" data-toggle=\"modal\" data-target=\"#whyAsking{0}\">Why are we asking this?</a>", question.QuestionId)),
                new LiteralControl("<div class=\"info m-4\" align=\"center\">"),
                surveyAnswerList,
                new LiteralControl("</div>"),
                new LiteralControl("</p>"),
                new LiteralControl(string.Format("<a class=\"btn btn-dark btn-xl js-scroll-trigger\" href=\"#question{0}\" style=\"margin: 5px;\">Previous</a>", previousQuestionId))
            };

            LiteralControl buttonNextFinish = null;
            if (question.QuestionId == 13)
                buttonNextFinish = new LiteralControl(string.Format("<a class=\"btn btn-dark btn-xl js-scroll-trigger\" href=\"#endOfSurvey\" onclick=\"visible(endOfSurvey); hideTop(); visible(myHeader); enableScroll(); ShowResults()\">&nbsp;&nbsp;&nbsp; End &nbsp;&nbsp;&nbsp;</a>"));
            else
                buttonNextFinish = new LiteralControl(string.Format("<a class=\"btn btn-dark btn-xl js-scroll-trigger\" href=\"#question{0}\" onclick=\"visible(question{0});Question{1}();\">&nbsp;&nbsp;&nbsp; Next &nbsp;&nbsp;&nbsp;</a>", nextQuestionId, question.QuestionId));

            var bottomHtmlList = new List<object>
            {
                buttonNextFinish,
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),

                //Popup
                new LiteralControl(string.Format("<div id=\"whyAsking{0}\" class=\"modal fade\" role=\"dialog\">", question.QuestionId)),
                new LiteralControl("<div class=\"modal-dialog\">"),
                new LiteralControl("<div class=\"modal-content\">"),
                new LiteralControl("<div class=\"modal-header\">"),
                new LiteralControl("<h4 class=\"modal-title\">Why are we asking this?</h4>"),
                new LiteralControl("<button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>"),
                new LiteralControl("</div>"),
                new LiteralControl("<div class=\"modal-body\">"),
                new LiteralControl(string.Format("<p class=\"insideModal\">{0}</p>", question.QuestionDescription)),
                new LiteralControl("</div>"),
                new LiteralControl("<div class=\"modal-footer\">"),
                new LiteralControl("<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>"),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),
                new LiteralControl("</section>"),
            };
            htmlObjectList.AddRange(bottomHtmlList);

            PlaceUIObjects(htmlObjectList);
        }

        private void GenerateHomunculusChart(QuestionModel question)
        {
            var previousQuestionId = question.QuestionId;
            var nextQuestionId = question.QuestionId;
            previousQuestionId--;
            nextQuestionId++;


            var htmlObjectList = new List<object>
            {
                //Question type 3
                new LiteralControl(string.Format("<section class=\"content-section\" class=\"questionTypeOne\" id=\"question{0}\">", question.QuestionId)),
                new LiteralControl("<div class=\"container text-center\">"),
                new LiteralControl("<div class=\"row\">"),
                new LiteralControl("<div class=\"col-lg-10 mx-auto\">"),
                new LiteralControl(string.Format("<h1 class=\"not_bold\">Question {0}/13</h1>", question.QuestionId)),
                new LiteralControl("<p class=\"lead mb-2\">"),
                new LiteralControl("<p class=\"lead mt-5 question_bold\">Where does it hurt? Click on <strong>ALL</strong> of the joints where you experience pain.<br></p>"),
                new LiteralControl(string.Format("<a href=\"\" data-toggle=\"modal\" data-target=\"#whyAsking{0}\">Why are we asking this?</a>", question.QuestionId)),
                new LiteralControl("<div class=\"info\">"),

                //Homuculous chart
                //new LiteralControl("<img src=\"../Images/homo.png\" height=\"500em\" width=\"400em\"/>"),
                new LiteralControl("<div id=\"myChart\"></div>"),
                new LiteralControl("<img src=\"/Images/homo.png\" id=\"Homunculus\" usemap=\"#img_map\" width=\"246\" height=\"305\" style=\"position: relative;\" />"),
                new LiteralControl("<map name=\"img_map\">"),
                new LiteralControl("<area coords=\"110,35,6\" shape=\"circle\" href=\"javascript:JointSelected(leftCheek)\" id=\"leftCheek\">"),
                new LiteralControl("<area coords=\"131,33,6\" shape=\"circle\" href=\"javascript:JointSelected(rightCheek)\" id=\"rightCheek\">"),
                new LiteralControl("<area coords=\"100,51,3\" shape=\"circle\" href=\"javascript:JointSelected(leftUpperShoulder)\" id=\"leftUpperShoulder\">"),
                new LiteralControl("<area coords=\"142,50,3\" shape=\"circle\" href=\"javascript:JointSelected(rightUpperShoulder)\" id=\"rightUpperShoulder\">"),
                new LiteralControl("<area coords=\"114,55,5\" shape=\"circle\" href=\"javascript:JointSelected(leftNeck)\" id=\"leftNeck\">"),
                new LiteralControl("<area coords=\"128,54,5\" shape=\"circle\" href=\"javascript:JointSelected(rightNeck)\" id=\"rightNeck\">"),
                new LiteralControl("<area coords=\"94,62,8\" shape=\"circle\" href=\"javascript:JointSelected(leftShoulder)\" id=\"leftShoulder\">"),
                new LiteralControl("<area coords=\"149,58,8\" shape=\"circle\" href=\"javascript:JointSelected(rightShoulder)\" id=\"rightShoulder\">"),
                new LiteralControl("<area coords=\"91,98,8\" shape=\"circle\" href=\"javascript:JointSelected(leftElbow)\" id=\"leftElbow\">"),
                new LiteralControl("<area coords=\"155,93,8\" shape=\"circle\" href=\"javascript:JointSelected(rightElbow)\" id=\"rightElbow\">"),
                new LiteralControl("<area coords=\"84,132,9\" shape=\"circle\" href=\"javascript:JointSelected(leftWrist)\" id=\"leftWrist\">"),
                new LiteralControl("<area coords=\"168,119,9\" shape=\"circle\" href=\"javascript:JointSelected(rightWrist)\" id=\"rightWrist\">"),
                new LiteralControl("<area coords=\"107,135,7\" shape=\"circle\" href=\"javascript:JointSelected(leftHip)\" id=\"leftHip\">"),
                new LiteralControl("<area coords=\"136,132,7\" shape=\"circle\" href=\"javascript:JointSelected(rightHip)\" id=\"rightHip\">"),
                new LiteralControl("<area coords=\"40,143,7\" shape=\"circle\" href=\"javascript:JointSelected(leftHand1)\" id=\"leftHand1\">"),
                new LiteralControl("<area coords=\"49,154,7\" shape=\"circle\" href=\"javascript:JointSelected(leftHand2)\" id=\"leftHand2\">"),
                new LiteralControl("<area coords=\"59,163,7\" shape=\"circle\" href=\"javascript:JointSelected(leftHand3)\" id=\"leftHand3\">"),
                new LiteralControl("<area coords=\"71,169,7\" shape=\"circle\" href=\"javascript:JointSelected(leftHand4)\" id=\"leftHand4\">"),
                new LiteralControl("<area coords=\"81,179,7\" shape=\"circle\" href=\"javascript:JointSelected(leftHand5)\" id=\"leftHand5\">"),
                new LiteralControl("<area coords=\"24,159,6\" shape=\"circle\" href=\"javascript:JointSelected(leftKnucle1)\" id=\"leftKnucle1\">"),
                new LiteralControl("<area coords=\"29,173,6\" shape=\"circle\" href=\"javascript:JointSelected(leftKnucle2)\" id=\"leftKnucle2\">"),
                new LiteralControl("<area coords=\"40,183,6\" shape=\"circle\" href=\"javascript:JointSelected(leftKnucle3)\" id=\"leftKnucle3\">"),
                new LiteralControl("<area coords=\"57,191,6\" shape=\"circle\" href=\"javascript:JointSelected(leftKnucle4)\" id=\"leftKnucle4\">"),
                new LiteralControl("<area coords=\"70,194,6\" shape=\"circle\" href=\"javascript:JointSelected(leftKnucle5)\" id=\"leftKnucle5\">"),
                new LiteralControl("<area coords=\"16,170,7\" shape=\"circle\" href=\"javascript:JointSelected(leftFinger1)\" id=\"leftFinger1\">"),
                new LiteralControl("<area coords=\"17,187,7\" shape=\"circle\" href=\"javascript:JointSelected(leftFinger2)\" id=\"leftFinger2\">"),
                new LiteralControl("<area coords=\"26,198,7\" shape=\"circle\" href=\"javascript:JointSelected(leftFinger3)\" id=\"leftFinger3\">"),
                new LiteralControl("<area coords=\"43,208,7\" shape=\"circle\" href=\"javascript:JointSelected(leftFinger4)\" id=\"leftFinger4\">"),
                new LiteralControl("<area coords=\"200,127,7\" shape=\"circle\" href=\"javascript:JointSelected(rightHand1)\" id=\"rightHand1\">"),
                new LiteralControl("<area coords=\"192,137,7\" shape=\"circle\" href=\"javascript:JointSelected(rightHand2)\" id=\"rightHand2\">"),
                new LiteralControl("<area coords=\"184,148,7\" shape=\"circle\" href=\"javascript:JointSelected(rightHand3)\" id=\"rightHand3\">"),
                new LiteralControl("<area coords=\"172,156,7\" shape=\"circle\" href=\"javascript:JointSelected(rightHand4)\" id=\"rightHand4\">"),
                new LiteralControl("<area coords=\"165,169,7\" shape=\"circle\" href=\"javascript:JointSelected(rightHand5)\" id=\"rightHand5\">"),
                new LiteralControl("<area coords=\"219,139,7\" shape=\"circle\" href=\"javascript:JointSelected(rightKnucle1)\" id=\"rightKnucle1\">"),
                new LiteralControl("<area coords=\"215,155,7\" shape=\"circle\" href=\"javascript:JointSelected(rightKnucle2)\" id=\"rightKnucle2\">"),
                new LiteralControl("<area coords=\"205,167,7\" shape=\"circle\" href=\"javascript:JointSelected(rightKnucle3)\" id=\"rightKnucle3\">"),
                new LiteralControl("<area coords=\"189,179,7\" shape=\"circle\" href=\"javascript:JointSelected(rightKnucle4)\" id=\"rightKnucle4\">"),
                new LiteralControl("<area coords=\"177,182,7\" shape=\"circle\" href=\"javascript:JointSelected(rightKnucle5)\" id=\"rightKnucle5\">"),
                new LiteralControl("<area coords=\"229,149,7\" shape=\"circle\" href=\"javascript:JointSelected(rightFinger1)\" id=\"rightFinger1\">"),
                new LiteralControl("<area coords=\"228,167,7\" shape=\"circle\" href=\"javascript:JointSelected(rightFinger2)\" id=\"rightFinger2\">"),
                new LiteralControl("<area coords=\"220,179,7\" shape=\"circle\" href=\"javascript:JointSelected(rightFinger3)\" id=\"rightFinger3\">"),
                new LiteralControl("<area coords=\"205,193,7\" shape=\"circle\" href=\"javascript:JointSelected(rightFinger4)\" id=\"rightFinger4\">"),
                new LiteralControl("<area coords=\"110,190,9\" shape=\"circle\" href=\"javascript:JointSelected(leftKnee)\" id=\"leftKnee\">"),
                new LiteralControl("<area coords=\"138,189,8\" shape=\"circle\" href=\"javascript:JointSelected(rightKnee)\" id=\"rightKnee\">"),
                new LiteralControl("<area coords=\"109,241,8\" shape=\"circle\" href=\"javascript:JointSelected(leftAnkle)\" id=\"leftAnkle\">"),
                new LiteralControl("<area coords=\"136,245,8\" shape=\"circle\" href=\"javascript:JointSelected(rightAnkle)\" id=\"rightAnkle\">"),
                new LiteralControl("<area coords=\"97,247,4\" shape=\"circle\" href=\"javascript:JointSelected(leftLowerAnkle1)\" id=\"leftLowerAnkle1\">"),
                new LiteralControl("<area coords=\"107,255,4\" shape=\"circle\" href=\"javascript:JointSelected(leftLowerAnkle2)\" id=\"leftLowerAnkle2\">"),
                new LiteralControl("<area coords=\"58,244,6\" shape=\"circle\" href=\"javascript:JointSelected(leftFootKnuckle1)\" id=\"leftFootKnuckle1\">"),
                new LiteralControl("<area coords=\"66,255,6\" shape=\"circle\" href=\"javascript:JointSelected(leftFootKnuckle2)\" id=\"leftFootKnuckle2\">"),
                new LiteralControl("<area coords=\"77,263,6\" shape=\"circle\" href=\"javascript:JointSelected(leftFootKnuckle3)\" id=\"leftFootKnuckle3\">"),
                new LiteralControl("<area coords=\"89,269,6\" shape=\"circle\" href=\"javascript:JointSelected(leftFootKnuckle4)\" id=\"leftFootKnuckle4\">"),
                new LiteralControl("<area coords=\"102,271,6\" shape=\"circle\" href=\"javascript:JointSelected(leftFootKnuckle5)\" id=\"leftFootKnuckle5\">"),
                new LiteralControl("<area coords=\"45,252,7\" shape=\"circle\" href=\"javascript:JointSelected(leftToe1)\" id=\"leftToe1\">"),
                new LiteralControl("<area coords=\"53,264,7\" shape=\"circle\" href=\"javascript:JointSelected(leftToe2)\" id=\"leftToe2\">"),
                new LiteralControl("<area coords=\"66,271,7\" shape=\"circle\" href=\"javascript:JointSelected(leftToe3)\" id=\"leftToe3\">"),
                new LiteralControl("<area coords=\"79,279,7\" shape=\"circle\" href=\"javascript:JointSelected(leftToe4)\" id=\"leftToe4\">"),
                new LiteralControl("<area coords=\"96,284,7\" shape=\"circle\" href=\"javascript:JointSelected(leftToe5)\" id=\"leftToe5\">"),
                new LiteralControl("<area coords=\"137,258,4\" shape=\"circle\" href=\"javascript:JointSelected(rightLowerAnkle1)\" id=\"rightLowerAnkle1\">"),
                new LiteralControl("<area coords=\"148,253,4\" shape=\"circle\" href=\"javascript:JointSelected(rightLowerAnkle2)\" id=\"rightLowerAnkle2\">"),
                new LiteralControl("<area coords=\"176,248,6\" shape=\"circle\" href=\"javascript:JointSelected(rightFootKnuckle1)\" id=\"rightFootKnuckle1\">"),
                new LiteralControl("<area coords=\"166,257,6\" shape=\"circle\" href=\"javascript:JointSelected(rightFootKnuckle2)\" id=\"rightFootKnuckle2\">"),
                new LiteralControl("<area coords=\"157,265,6\" shape=\"circle\" href=\"javascript:JointSelected(rightFootKnuckle3)\" id=\"rightFootKnuckle3\">"),
                new LiteralControl("<area coords=\"145,272,6\" shape=\"circle\" href=\"javascript:JointSelected(rightFootKnuckle4)\" id=\"rightFootKnuckle4\">"),
                new LiteralControl("<area coords=\"132,276,6\" shape=\"circle\" href=\"javascript:JointSelected(rightFootKnuckle5)\" id=\"rightFootKnuckle5\">"),
                new LiteralControl("<area coords=\"186,257,6\" shape=\"circle\" href=\"javascript:JointSelected(rightToe1)\" id=\"rightToe1\">"),
                new LiteralControl("<area coords=\"175,267,6\" shape=\"circle\" href=\"javascript:JointSelected(rightToe2)\" id=\"rightToe2\">"),
                new LiteralControl("<area coords=\"163,277,6\" shape=\"circle\" href=\"javascript:JointSelected(rightToe3)\" id=\"rightToe3\">"),
                new LiteralControl("<area coords=\"152,284,6\" shape=\"circle\" href=\"javascript:JointSelected(rightToe4)\" id=\"rightToe4\">"),
                new LiteralControl("<area coords=\"138,288,6\" shape=\"circle\" href=\"javascript:JointSelected(rightToe5)\" id=\"rightToe5\">"),
                new LiteralControl("</map>"),
                new LiteralControl("<asp:HiddenField ID=\"JointsSelected\" runat=\"server\" />"),
                new LiteralControl(string.Format("<img src=\"../Images/info.png\" height=\"25\" width=\"25\" data-toggle=\"modal\" data-target=\"#infoPopup{0}\" class=\"infoButton\"/>",question.QuestionId)),
                //end of image map

                new LiteralControl("</div>"),
                new LiteralControl("</p>"),
                new LiteralControl(string.Format("<a class=\"btn btn-dark btn-xl js-scroll-trigger\" href=\"#question{0}\" style=\"margin: 5px;\">Previous</a>", previousQuestionId)),
                new LiteralControl(string.Format("<a class=\"btn btn-dark btn-xl js-scroll-trigger\" href=\"#question{0}\" onclick=\"visible(question{0});\">&nbsp;&nbsp;&nbsp; Next &nbsp;&nbsp;&nbsp;</a>", nextQuestionId)),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),

                //Modal popup
                new LiteralControl(string.Format("<div id=\"whyAsking{0}\" class=\"modal fade\" role=\"dialog\">", question.QuestionId)),
                new LiteralControl("<div class=\"modal-dialog\">"),
                new LiteralControl("<div class=\"modal-content\">"),
                new LiteralControl("<div class=\"modal-header\">"),
                new LiteralControl("<h4 class=\"modal-title\">Why are we asking this?</h4>"),
                new LiteralControl("<button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>"),
                new LiteralControl("</div>"),
                new LiteralControl("<div class=\"modal-body\">"),
                new LiteralControl(string.Format("<p class=\"insideModal\">{0}</p>", question.QuestionDescription)),
                new LiteralControl("</div>"),
                new LiteralControl("<div class=\"modal-footer\">"),
                new LiteralControl("<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>"),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),

                //Info popup
                new LiteralControl(string.Format("<div id=\"infoPopup{0}\" class=\"modal fade\" role=\"dialog\">", question.QuestionId)),
                new LiteralControl("<div class=\"modal-dialog\">"),
                new LiteralControl("<div class=\"modal-content\">"),
                new LiteralControl("<div class=\"modal-header\">"),
                new LiteralControl("<h4 class=\"modal-title\">Information</h4>"),
                new LiteralControl("<button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>"),
                new LiteralControl("</div>"),
                new LiteralControl("<div class=\"modal-body\">"),
                new LiteralControl("<p class=\"insideModal\">This is a homunculus diagram, click on the joints that you feel pain with your cursor.</p>"),
                new LiteralControl("</div>"),
                new LiteralControl("<div class=\"modal-footer\">"),
                new LiteralControl("<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>"),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),
                new LiteralControl("</div>"),
                new LiteralControl("</section>")
            };
            PlaceUIObjects(htmlObjectList);
        }

        private RadioButtonList GenerateRadioButtonList(int QuestionId)
        {
            var surveyAnswerList = new RadioButtonList
            {
                ID = "answerGroup" + QuestionId
            };

            var answers = _serverConnection.GetSurveyAnswers(QuestionId);

            foreach (var answer in answers)
                surveyAnswerList.Items.Add(answer.AnswerText);

            return surveyAnswerList;
        }

        private CheckBoxList GenerateCheckBoxList(int QuestionId)
        {
            var surveyAnswerList = new CheckBoxList
            {
                ID = "answerGroup" + QuestionId
            };

            var answers = _serverConnection.GetSurveyAnswers(QuestionId);

            foreach (var answer in answers)
            {
                surveyAnswerList.Items.Add(string.Format("{0} <img src=\"/Images/info.png\" height=\"20\" width=\"20\" data-toggle=\"modal\" data-target=\"#answerDescription{1}\" class=\"infoButton\"/>", answer.AnswerText, answer.AnswerId));
                var htmlObjectList = new List<object>
                {
                    new LiteralControl(string.Format("<div id=\"answerDescription{0}\" class=\"modal fade\" role=\"dialog\">", answer.AnswerId)),
                    new LiteralControl("<div class=\"modal-dialog\">"),
                    new LiteralControl("<div class=\"modal-content\">"),
                    new LiteralControl("<div class=\"modal-header\">"),
                    new LiteralControl("<h4 class=\"modal-title\">Why are we asking this?</h4>"),
                    new LiteralControl("<button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>"),
                    new LiteralControl("</div>"),
                    new LiteralControl("<div class=\"modal-body\">"),
                    new LiteralControl(string.Format("<p class=\"insideModal\">{0}<br/><img src=\"{1}\" height=\"217\" width=\"400\"/></p>", answer.AnswerDescription, answer.AnswerImagePath)),
                    new LiteralControl("</div>"),
                    new LiteralControl("<div class=\"modal-footer\">"),
                    new LiteralControl("<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>"),
                    new LiteralControl("</div>"),
                    new LiteralControl("</div>"),
                    new LiteralControl("</div>"),
                    new LiteralControl("</div>"),
                };
                PlaceUIObjects(htmlObjectList);
            }

            return surveyAnswerList;
        }

        private void PlaceUIObjects(List<object> UiObjects)
        {
            foreach (var control in UiObjects)
                allQuestions.Controls.Add((Control)control);
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    var test = JointsSelected.Value;
        //}
    }
}