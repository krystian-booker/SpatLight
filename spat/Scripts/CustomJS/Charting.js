var hiddenValue = document.getElementById("chartData").value;
var statData = JSON.parse(hiddenValue);

var question1ctx = document.getElementById("QuestionOne").getContext('2d');
var question1Chart = new Chart(question1ctx, {
    type: 'bar',
    data: {
        labels: ["Male", "Female"],
        datasets: [{
            label: 'Selection count',
            data: [statData[0].statNum, statData[1].statNum],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
            ],
            borderWidth: 1
        }]
    },
    options: {
        legend: {
            labels: {
                fontColor: 'white'
            }
        },
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true,
                    fontColor: 'white'
                }
            }],
            xAxes: [{
                ticks: {
                    fontColor: 'white'
                },
            }]
        }
    }
});

var question2ctx = document.getElementById("QuestionTwo").getContext('2d');
var question2Chart = new Chart(question2ctx, {
    type: 'bar',
    data: {
        labels: ["Under 45 years of age", "45 years of age or older"],
        datasets: [{
            label: 'Selection count',
            data: [statData[2].statNum, statData[3].statNum],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
            ],
            borderWidth: 1
        }]
    },
    options: {
        legend: {
            labels: {
                fontColor: 'white'
            }
        },
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true,
                    fontColor: 'white'
                }
            }],
            xAxes: [{
                ticks: {
                    fontColor: 'white'
                },
            }]
        }
    }
});
var question3ctx = document.getElementById("QuestionThree").getContext('2d');
var question3Chart = new Chart(question3ctx, {
    type: 'bar',
    data: {
        labels: ["Yes", "No"],
        datasets: [{
            label: 'Selection count',
            data: [statData[4].statNum, statData[5].statNum],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
            ],
            borderWidth: 1
        }]
    },
    options: {
        legend: {
            labels: {
                fontColor: 'white'
            }
        },
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true,
                    fontColor: 'white'
                }
            }],
            xAxes: [{
                ticks: {
                    fontColor: 'white'
                },
            }]
        }
    }
});
var question5ctx = document.getElementById("QuestionFive").getContext('2d');
var question5Chart = new Chart(question5ctx, {
    type: 'bar',
    data: {
        labels: ["Less than 3 months", "More than 3 months"],
        datasets: [{
            label: 'Selection count',
            data: [statData[6].statNum, statData[7].statNum],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
            ],
            borderWidth: 1
        }]
    },
    options: {
        legend: {
            labels: {
                fontColor: 'white'
            }
        },
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true,
                    fontColor: 'white'
                }
            }],
            xAxes: [{
                ticks: {
                    fontColor: 'white'
                },
            }]
        }
    }
});
var question6ctx = document.getElementById("QuestionSix").getContext('2d');
var question6Chart = new Chart(question6ctx, {
    type: 'bar',
    data: {
        labels: ["Yes", "No"],
        datasets: [{
            label: 'Selection count',
            data: [statData[8].statNum, statData[9].statNum],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
            ],
            borderWidth: 1
        }]
    },
    options: {
        legend: {
            labels: {
                fontColor: 'white'
            }
        },
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true,
                    fontColor: 'white'
                }
            }],
            xAxes: [{
                ticks: {
                    fontColor: 'white'
                },
            }]
        }
    }
});
var question7ctx = document.getElementById("QuestionSeven").getContext('2d');
var question7Chart = new Chart(question7ctx, {
    type: 'bar',
    data: {
        labels: ["Improved", "Worse"],
        datasets: [{
            label: 'Selection count',
            data: [statData[10].statNum, statData[11].statNum],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
            ],
            borderWidth: 1
        }]
    },
    options: {
        legend: {
            labels: {
                fontColor: 'white'
            }
        },
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true,
                    fontColor: 'white'
                }
            }],
            xAxes: [{
                ticks: {
                    fontColor: 'white'
                },
            }]
        }
    }
});
var question8ctx = document.getElementById("QuestionEight").getContext('2d');
var question8Chart = new Chart(question8ctx, {
    type: 'bar',
    data: {
        labels: ["Yes", "No"],
        datasets: [{
            label: 'Selection count',
            data: [statData[12].statNum, statData[13].statNum],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
            ],
            borderWidth: 1
        }]
    },
    options: {
        legend: {
            labels: {
                fontColor: 'white'
            }
        },
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true,
                    fontColor: 'white'
                }
            }],
            xAxes: [{
                ticks: {
                    fontColor: 'white'
                },
            }]
        }
    }
});
var question9ctx = document.getElementById("QuestionNine").getContext('2d');
var question9Chart = new Chart(question9ctx, {
    type: 'bar',
    data: {
        labels: ["Yes", "No"],
        datasets: [{
            label: 'Selection count',
            data: [statData[14].statNum, statData[15].statNum],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
            ],
            borderWidth: 1
        }]
    },
    options: {
        legend: {
            labels: {
                fontColor: 'white'
            }
        },
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true,
                    fontColor: 'white'
                }
            }],
            xAxes: [{
                ticks: {
                    fontColor: 'white'
                },
            }]
        }
    }
});
var question10ctx = document.getElementById("QuestionTen").getContext('2d');
var question10Chart = new Chart(question10ctx, {
    type: 'bar',
    data: {
        labels: ["Uveitis", "Enthesitis", "Dactylitis","Psoriasis"],
        datasets: [{
            label: 'Selection count',
            data: [statData[16].statNum, statData[17].statNum, statData[18].statNum, statData[19].statNum],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        legend: {
            labels: {
                fontColor: 'white'
            }
        },
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true,
                    fontColor: 'white'
                }
            }],
            xAxes: [{
                ticks: {
                    fontColor: 'white'
                },
            }]
        }
    }
});
var question11ctx = document.getElementById("QuestionEleven").getContext('2d');
var question11Chart = new Chart(question11ctx, {
    type: 'bar',
    data: {
        labels: ["Yes", "No"],
        datasets: [{
            label: 'Selection count',
            data: [statData[21].statNum, statData[22].statNum],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
            ],
            borderWidth: 1
        }]
    },
    options: {
        legend: {
            labels: {
                fontColor: 'white'
            }
        },
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true,
                    fontColor: 'white'
                }
            }],
            xAxes: [{
                ticks: {
                    fontColor: 'white'
                },
            }]
        }
    }
});
var question12ctx = document.getElementById("QuestionTwelve").getContext('2d');
var question12Chart = new Chart(question12ctx, {
    type: 'bar',
    data: {
        labels: ["Yes", "No"],
        datasets: [{
            label: 'Selection count',
            data: [statData[23].statNum, statData[24].statNum],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
            ],
            borderWidth: 1
        }]
    },
    options: {
        legend: {
            labels: {
                fontColor: 'white'
            }
        },
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true,
                    fontColor: 'white'
                }
            }],
            xAxes: [{
                ticks: {
                    fontColor: 'white'
                },
            }]
        }
    }
});
var question13ctx = document.getElementById("QuestionThirteen").getContext('2d');
var question13Chart = new Chart(question13ctx, {
    type: 'bar',
    data: {
        labels: ["Seronegative", "Ankylosing", "Psoriasis", "Psoriatic", "Enteropathic", "IBD","Reactive"],
        datasets: [{
            label: 'Selection count',
            data: [statData[25].statNum, statData[26].statNum, statData[27].statNum, statData[28].statNum, statData[29].statNum, statData[30].statNum, statData[31].statNum],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(200, 100, 255, 0.2)'
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)',
                'rgba(200, 100, 255, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        legend: {
            labels: {
                fontColor: 'white'
            }
        },
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true,
                    fontColor: 'white'
                }
            }],
            xAxes: [{
                ticks: {
                    fontColor: 'white'
                },
            }]
        }
    }
});