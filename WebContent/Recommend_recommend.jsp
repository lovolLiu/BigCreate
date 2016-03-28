
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/resumeDetails-1-0-7.css" rel="stylesheet" type="text/css" media="all" />
        <!--//theme-style-->
        <meta name="swipebox-sliderewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Acrostia Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--fonts-->
        <!--<link href='http://fonts.useso.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>-->
        <!--//fonts-->
        <style>
            .echarts-tooltip a{
                color: white;
            }
            body{
                font-family: "黑体";
            }
            #panel,#flip
            {
                padding:5px;
                text-align:center;
                border:none;
            }
            #panel
            {
                padding:50px;
                display:none;
                background: transparent;
                border: none;
            }
            

        </style>
        <script src="js/responsiveslides.min.js"></script>
        <script>
            $(function () {
                $("#slider").responsiveSlides({
                    auto: true,
                    nav: true,
                    speed: 500,
                    namespace: "callbacks",
                    pager: true,
                });
            });
        </script>
        <!---->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>


    </head>
    <body> 
        <!--header-->
        <!--banner-->
        <div class="banner" id="home">
            <div class="slider" >
                <div class="callbacks_container">
                    <ul class="rslides" id="slider">
                        <li>
                            <img src="images/bg.jpg" alt="" />
                            <div class="banner-matter">
                                <img class="img-responsive"  src="images/good1.png" alt="good" width="470" height="95">

                            </div>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
        <!---->
        <div class="header" style="position: fixed;">
            <div id = "headerbg" style="display: none;position: absolute; width: 100%; height: 104%; left: 0; top:0; background: black; opacity: 0.4;  z-index: -1;"></div>
            <div class="container">
                <div class="fixed-header" >

                    <div class="logo">
                        <a href="index.html"><img src="images/logo.png" alt=" "  width="120"/></a>
                    </div>

                    <div class="top-nav cssmenu" >
                        <nav class="nav clearfix" >
                            <a id="menu-toggle" class="anchor-link"><img src="images/menu.png" alt="" /></a>
                            <ul class="simple-toggle" id="nav">
                                <li class="current"><a href="#home" class="scroll"><font face="微软雅黑" color="ffffff"><b>首页</b></font></a></li>
                                <li><a href="#services" class="scroll"> <font face="微软雅黑" color="ffffff"><b>个人信息输入</b></font></a></li>
                                <li><a href="#radarChart" class="scroll"> <font face="微软雅黑" color="ffffff"><b>实力评估</b></font></a></li>
                                <li><a href="#about" class="scroll"><font face="微软雅黑" color="ffffff"><b>薪资规划</b></font></a></li>
                                <li><a href="#work" class="scroll"><font face="微软雅黑" color="ffffff"><b>职位波动</b></font></a></li>
                                <li><a href="#contact" class="scroll"><font face="微软雅黑" color="ffffff"><b>相似的人</b></font></a></li>
<!--                                                                 <li><a href="ResumeJDModule/create.html"> <font face="微软雅黑" color="ffffff"><b>招人才</b></font></a></li> -->
<!--                                 <li><a href="http://localhost:8080/BigCreate/ListPosition"> <font face="微软雅黑" color="ffffff"><b>找工作</b></font></a></li> -->
                            </ul>
                        </nav>

                        <script type="text/javascript">
                            $(document).ready(function () {

                                $('#menu-toggle').click(function () {
                                    $('#nav').toggleClass('open');
                                    e.preventDefault();
                                });

                            });
                        </script>
                        <!---->
                        <script src="js/jquery.nav.js"></script>
                        <script type="text/javascript">
                            $(document).ready(function () {
                                $('#nav').onePageNav({
                                    begin: function () {
                                        console.log('start')
                                    },
                                    end: function () {
                                        console.log('stop')
                                    }
                                });
                            });
                        </script>

                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>

        <script>
            $(document).ready(function () {
                var navoffeset = $(".header").offset().top;
                $(window).scroll(function () {
                    var scrollpos = $(window).scrollTop();
                    if (scrollpos >= navoffeset) {
                        $(".header").addClass("fixed");
                    } else {
                        $(".header").removeClass("fixed");
                    }
                });

            });
        </script>
        <!-- /script-for sticky-nav -->

        <!--content-->
        <div class="content">





            <!---->
            <div class="services" id="services">
                <div class="container">
                    <div class="service-head">
                        <h3>为您精心策划的职业路线</h3>
                        <span>输入以下信息，获取2种精准的职业分析和规划路线</span>

                    </div>


                    <p style="text-align: left; color: white; font-size: 17px; margin-bottom: 10px; margin-top: 50px; ">方式一 填写我的信息</p> 
                                      <div class=" services-grid" style="padding-top: 20px;">
						<form action="Recommend_recommend" class="mainform">
                        <div class="col-md-4 service-grid">
<!--                             <form action="/example/html/form_action.asp" method="get"> -->
                                <p>工龄: <input class="text" type="text" name="age" style="color: black" value="${age }"/>*</p>
                                <p>学校: <input class="text" type="text" name="school" style="color: black" value="${school }"/>*</p>
<!--                             </form> -->
                        </div>
                        <div class="col-md-4 service-grid">
<!--                             <form action="/example/html/form_action.asp" method="get"> -->
                                <p>学位: <input class="text" type="text" name="background" style="color: black" value="${background }"/>*</p>
                                <p>专业: <input class="text" type="text" name="major" style="color: black" value="${major }"/>*</p>
<!--                             </form> -->
                        </div>
                        <div class="col-md-4 service-grid">
<!--                             <form action="/example/html/form_action.asp" method="get"> -->
                                <p>职位: <input class="text" type="text" name="position" style="color: black" value="${position }"/>*</p>
                                <p>技能: <input class="text" type="text" name="skill" style="color: black" value="${skill }"/></p>
<!--                             </form> -->
                        </div>
                        <div class="col-md-4 service-grid ">
<!--                             <form action="/example/html/form_action.asp" method="get"> -->
                                <p>项目: <input class="text" type="text" name="project" style="color: black" value="${project }"/></p>
                                <p>薪资: <input class="text" type="text" name="salary" style="color: black" value="${salary }"/></p>
                               <p> <input type="submit" value="提交" style="background-color: rgb(196,81,88);border:solid 1px;"/></p>
<!--                             </form> -->
                        </div>
            
						</form>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <!--<input class="btn submit" type="submit" value="提交" style="color: white; background: indianred;"/>-->
                        </div>
                    </div>

                    <p style="text-align: left; color: white;font-size: 17px; margin-top: 40px; margin-bottom: 50px;">方式二 上传简历文件</p> 
                    <div style="text-align: left;"><input class="text" type="text" name="fname" value="C:\myrusume.doc" style=" padding: 3px;"/>&nbsp;&nbsp;&nbsp;<input class="btn submit" type="submit" value="上传我的简历" style="color: white; background: indianred;"/>
                    </div>

                    <script>
                        $(document).ready(function () {
                            $("#flip1").click(function () {
                                $("#panel1").slideToggle("slow");
                            });
                        });
                        $(document).ready(function () {
                            $("#flip2").click(function () {
                                $("#panel2").slideToggle("slow");
                            });
                        });
                    </script>

                </div>
            </div>
            <!---->

            <div class="service-head" id="radarChart" style="background:url(images/ba3.jpg); padding-top: 140px;">
                <div class="container">
                    <div class="service-head" style=" text-align: center;">
                        <h3>当前实力评估</h3>
                        <span style=" font-size: 17px;">根据您输入的信息,我们对您的实力作出了如下评估</span>
                    </div>
<!--                     <div style="text-align: center"><span style="color:red; font-size: 30px; display:  inline;">7500</span>/月 预估薪资</div> -->
                    <div id="mainradar" style="height:400px"></div>
                </div>
            </div>



            <div class="team" id="about">
                <div class="container">
                    <div class="team-head">
                        <h3>薪资节节高</h3>
                        <p style="color: white">根据您给出的期望工资, 我们对你的职业生涯作出了如下规划</p>
                    </div>
                    <div class=" team-top" style="padding-top: 20px;">
                        <div id="main1" style="height:400px"></div>   
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
           
            <div class="work" id="work">
                <div class="container">
                    <div class="work-head" style="border: none;">
                        <h3 style="border: none;">当上CEO</h3>
                        <p style="border: none;">我们为您量身打造了今后十二年的职业路线</p>					
                    </div>
                    <div class="work-top" style="border: none;">					

                        <div id="main2" style="height:400px"></div>
                        <div class="clearfix"> </div>
                    </div>
                    <div id="portfoliolist">
                        Script for gallery Here
                        <script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
                        <script type="text/javascript">
                        $(function () {

                            var filterList = {
                                init: function () {

                                    // MixItUp plugin
                                    // http://mixitup.io
                                    $('#portfoliolist').mixitup({
                                        targetSelector: '.portfolio',
                                        filterSelector: '.filter',
                                        effects: ['fade'],
                                        easing: 'snap',
                                        // call the hover effect
                                        onMixEnd: filterList.hoverEffect()
                                    });

                                },
                                hoverEffect: function () {

                                    // Simple parallax effect
                                    $('#portfoliolist .portfolio').hover(
                                            function () {
                                                $(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
                                                $(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');
                                            },
                                            function () {
                                                $(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
                                                $(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');
                                            }
                                    );

                                }

                            };

                            // Run the show!
                            filterList.init();
                        });
                         </script>
<!--                         Gallery Script Ends -->
                    </div>
                </div>
                <!---->
                <link rel="stylesheet" href="css/swipebox.css">
                <script src="js/jquery.swipebox.min.js"></script> 
                <script type="text/javascript">
                        jQuery(function ($) {
                            $(".swipebox").swipebox();
                        });
                </script>

                <!---->

                <!---->
                <div class="contact" id="contact">
                    <div class="container">
                        <div class="contact-head">
                            <h3>你并不是一个人</h3>
                            <p>这里有很多人的经历与你相似.参考一下他们的职业生涯,也许对你有帮助</p>					
                        </div>
                        <div id="main3" style="height:400px"></div>
                        <div class="clearfix"> </div>
                    </div>

                </div>
            </div>

            <!--footer-->
            <div class="footer">
                <div class="container">

                    <p class="footer-class">Copyright &copy; 2015.FoodEase All rights reserved.</p>
                </div>	
                <script type="text/javascript">
                    $(document).ready(function () {
                        /*
                         var defaults = {
                         containerID: 'toTop', // fading element id
                         containerHoverID: 'toTopHover', // fading element hover id
                         scrollSpeed: 1200,
                         easingType: 'linear' 
                         };
                         */

                        $().UItoTop({easingType: 'easeOutQuart'});

                    });
                </script>

                <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

            </div>

            <!--<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>-->






            <script src="src/dist/echarts.js"></script>


            <!--杨智淇图表js-->
            <script type="text/javascript">
                    // 路径配置
                    require.config({
                        paths: {
                            echarts: 'src'            //first 路径
                        }
                    });

                    // 使用
                    require(
                            [
                                'echarts',
                                'echarts/theme/red', //这句话必须放在图表之前!
                                'echarts/chart/bar', // 使用柱状图就加载bar模块，按需加载
                                'echarts/chart/force', //second 路径
                            ],
                            function (ec, theme) {
                                // 基于准备好的dom，初始化echarts图表
                                var myChart = ec.init(document.getElementById('main3'), theme);

                                option3 = {
                                    tooltip: {
                                        trigger: 'item',
                                        formatter: '{a}  {b}'
                                    },
                                    toolbox: {
                                        show: true,
                                        feature: {
                                            restore: {show: true},
                                            magicType: {show: true, type: ['force', 'chord']},
                                            saveAsImage: {show: true}
                                        }
                                    },
                                    legend: {
                                        x: 'left',
                                        data: ['您', '其他人'],
                                        textStyle: {
                                            color: "white"
                                        }
                                    },
                                    series: [
                                        {
                                            type: 'force',
                                            name: "",
                                            ribbonType: false,
                                            categories: [
                                                {
                                                    name: '您'
                                                },
                                                {
                                                    name: '其他人'
                                                },
                                                {
                                                    name: '朋友'
                                                }
                                            ],
                                            itemStyle: {
                                                normal: {
                                                    label: {
                                                        show: true,
                                                        textStyle: {
                                                            color: 'white',
                                                            fontFamily: "黑体",
                                                            fontSize: 15
                                                        }
                                                    },
                                                    nodeStyle: {
                                                        brushType: 'both',
                                                        borderColor: 'rgba(255,215,0,0.4)',
                                                        borderWidth: 0
                                                    },
                                                    linkStyle: {
                                                        type: 'line'
                                                    }
                                                },
                                                emphasis: {
                                                    label: {
                                                        show: false
                                                                // textStyle: null      // 默认使用全局文本样式，详见TEXTSTYLE
                                                    },
                                                    nodeStyle: {
                                                        //r: 30
                                                    },
                                                    linkStyle: {}
                                                }
                                            },
                                            useWorker: false,
                                            minRadius: 15,
                                            maxRadius: 25,
                                            gravity: 1.1,
                                            scaling: 1.1,
                                            roam: 'move',
                                            nodes: [
                                                {category: 0, name: '您', value: 10, label: '您'},
                                                {category: 1, name: '大牛一', value: 2, label: ' '},
                                                {category: 1, name: '大牛二', value: 3, label: ' '},
                                                {category: 1, name: '大牛三', value: 3, label: ' '},
                                                {category: 1, name: '大牛四', value: 7, label: ' '},
                                                {category: 2, name: '大牛五', value: 5, label: ' '},
                                                {category: 2, name: '大牛六', value: 8, label: ' '},
                                                {category: 2, name: '大牛七', value: 4, label: ' '},
                                                {category: 2, name: '大牛八', value: 4, label: ' '},
                                                {category: 2, name: '大牛九', value: 4, label: ' '},
                                                {category: 2, name: '大牛十', value: 1, label: ' '},
                                            ],
                                            links: [
                                                {source: '大牛一', target: '您', weight: 1, name: '${similarPerson1}'},
                                                {source: '大牛二', target: '您', weight: 2, name: '${similarPerson2}'},
                                                {source: '大牛三', target: '您', weight: 1, name: '${similarPerson3}'},
                                                {source: '大牛四', target: '您', weight: 2, name: '${similarPerson4}'},
                                                {source: '大牛五', target: '您', weight: 1, name: '${similarPerson5}'},
                                                {source: '大牛六', target: '您', weight: 1, name: '${similarPerson6}'},
                                                {source: '大牛七', target: '您', weight: 2, name: '${similarPerson7}'},
                                                {source: '大牛八', target: '您', weight: 1, name: '${similarPerson8}'},
                                                {source: '大牛九', target: '您', weight: 1, name: '${similarPerson9}'},
                                                {source: '大牛十', target: '您', weight: 1, name: '${similarPerson10}'},
                                            ]
                                        }
                                    ]
                                };
                                var ecConfig = require('echarts/config');
                                function focus(param) {
                                    var data = param.data;
                                    var links = option3.series[0].links;
                                    var nodes = option3.series[0].nodes;
                                    if (
                                            data.source !== undefined
                                            && data.target !== undefined
                                            ) { //点击的是边
                                        var sourceNode = nodes.filter(function (n) {
                                            return n.name == data.source
                                        })[0];
                                        var targetNode = nodes.filter(function (n) {
                                            return n.name == data.target
                                        })[0];
                                        console.log("选中了边 " + sourceNode.name + ' -> ' + targetNode.name + ' (' + data.weight + ')');
                                    } else { // 点击的是点
                                        console.log("选中了" + data.name + '(' + data.value + ')');
                                    }
                                }
                                myChart.on(ecConfig.EVENT.CLICK, focus)

                                myChart.on(ecConfig.EVENT.FORCE_LAYOUT_END, function () {
                                    console.log(myChart.chart.force.getPosition());
                                });








                                // 为echarts对象加载数据 
                                myChart.setOption(option3);
                            }
                    );
            </script>



            <script src="src/theme/mythemes.js"></script>    <!--引入 theme1 和 theme2 -->
            <script src="src/dist/echarts-all.js"></script>
            <!--radar图表js-->
            <script type="text/javascript">
                    // 基于准备好的dom，初始化echarts图表
                    var myChart0 = echarts.init(document.getElementById('mainradar'), theme1);


                    var option0 = {
                        tooltip: {
                            trigger: 'axis',
                            formatter: '{d}: {c}分'
                        },
                        toolbox: {
                            show: true,
                            feature: {
                                mark: {show: true},
                                dataView: {show: true, readOnly: false},
                                restore: {show: true},
                                saveAsImage: {show: true}
                            }
                        },
                        calculable: true,
                        polar: [
                            {
                                indicator: [
                                    {text: '工龄', max: 100},
                                    {text: '学校', max: 100},
                                    {text: '学位', max: 100},
                                    {text: '专业', max: 100},
                                    {text: '职位', max: 100},
                                ],
                                radius: 130
                            }
                        ],
                        series: [
                            {
                                name: ' ',
                                type: 'radar',
                                itemStyle: {
                                    normal: {
                                        areaStyle: {
                                            type: 'default'
                                        }
                                    }
                                },
                                data: [
                                    {
                                        value: ['${age_score}','${school_score}', '${background_score}', '${major_score}', '${position_score}'],
                                        name: ' '
                                    }
                                ]
                            }
                        ]
                    };

                    // 为echarts对象加载数据 
                    myChart0.setOption(option0);
            </script>

            <!--刘欣彤图表js-->
            <script type="text/javascript">
                /*刘欣彤图表*/
                // 基于准备好的dom，初始化echarts图表
                var myChart1 = echarts.init(document.getElementById('main1'), theme1);


                var option1 = {
                    tooltip: {
                        trigger: 'axis',
                        textStyle: {
                            color: 'white',
                            fontFamily: '黑体',
                            fontSize: 15,
                        },
                        formatter: function (params, ticket, callback) {
                            console.log(params)
                            // var res = '所需技能 : <br/>' + params[0].name;
                            var res = '所需技能 : ';
                            for (var i = 0, l = params.length; i < l; i++) {
                                //res += '<br/>' + params[i].seriesName + ' : ' + params[i].value;
                                if (params[0].name == "2") {
                                    res += 'python, php';
                                }
                                if (params[0].name == "4") {
                                    res += 'html, css';
                                }
                                if (params[0].name == "6") {
                                    res += '精通设计模式';
                                }
                                if (params[0].name == "8") {
                                    res += '软件工程相关知识';
                                }
                                if (params[0].name == "10") {
                                    res += '前沿系统架构';
                                }
                                if (params[0].name == "12") {
                                    res += '较强的管理能力';
                                }
                            }

                            setTimeout(function () {
                                // 仅为了模拟异步回调
                                callback(ticket, res);
                            }, 1)
                            return 'loading';
                        }
                    },
                    legend: {
                        data: ['薪资规划'],
                        textStyle: {
                            color: "white"
                        }
                    },
                    toolbox: {
                        show: true,
                        feature: {
                            mark: {show: true},
                            dataView: {show: true, readOnly: false},
                            magicType: {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                            restore: {show: true},
                            saveAsImage: {show: true}
                        }
                    },
                    calculable: true,
                    xAxis: [
                        {
                            type: 'category',
                            boundaryGap: false,
                            data: ['0', '2', '4', '6', '8', '10', '12'],
                            axisLabel: {textStyle: {color: "white"}}
                        }
                    ],
                    yAxis: [
                        {
                            type: 'value',
                            axisLabel: {textStyle: {color: "white"}}
                        }
                    ],
//                    series: [
//                        {
//                            name: '薪资规划',
//                            type: 'line',
//                            stack: '总量',
//                            data: [3000, 5000, 10000, 15000, 20000, 25000, 30000]
//                        }
//                    ]
                    series: [
                        {
                            name: '薪资规划',
                            type: 'line',
                            stack: '总量',
                            symbol: 'none',
                            itemStyle: {
                                normal: {
                                    areaStyle: {
                                        // 区域图，纵向渐变填充
                                        color: (function () {
                                            var zrColor = require('zrender/tool/color');
                                            return zrColor.getLinearGradient(
                                                    0, 50, 0, 400,
                                                    [[0, 'rgba(100,100,0,0.8)'], [0.8, 'rgba(255,255,255,0.1)']]
                                                    )
                                        })()
                                    }
                                }
                            },
                            data: [
                                {
                                    value: 3000,
                                    symbol: 'star6',
                                    symbolSize: 20,
                                    symbolRotate: 10,
                                    itemStyle: {// 数据级个性化折线样式
                                        normal: {
                                            color: 'yellowgreen'
                                        },
                                        emphasis: {
                                            color: 'orange',
                                            label: {
                                                show: true,
                                                position: 'inside',
                                                textStyle: {
                                                    fontSize: '20'
                                                }
                                            }
                                        }
                                    }
                                },
                                {
                                    value: 5000,
                                    symbol: 'star6',
                                    symbolSize: 20,
                                    symbolRotate: 10,
                                    itemStyle: {// 数据级个性化折线样式
                                        normal: {
                                            color: 'yellowgreen'
                                        },
                                        emphasis: {
                                            color: 'orange',
                                            label: {
                                                show: true,
                                                position: 'inside',
                                                textStyle: {
                                                    fontSize: '20'
                                                }
                                            }
                                        }
                                    }
                                },
                                {
                                    value: 8000,
                                    symbol: 'star6',
                                    symbolSize: 20,
                                    symbolRotate: 10,
                                    itemStyle: {// 数据级个性化折线样式
                                        normal: {
                                            color: 'yellowgreen'
                                        },
                                        emphasis: {
                                            color: 'orange',
                                            label: {
                                                show: true,
                                                position: 'inside',
                                                textStyle: {
                                                    fontSize: '20'
                                                }
                                            }
                                        }
                                    }
                                },
                                {
                                    value: 12000,
                                    symbol: 'star6',
                                    symbolSize: 20,
                                    symbolRotate: 10,
                                    itemStyle: {// 数据级个性化折线样式
                                        normal: {
                                            color: 'yellowgreen'
                                        },
                                        emphasis: {
                                            color: 'orange',
                                            label: {
                                                show: true,
                                                position: 'inside',
                                                textStyle: {
                                                    fontSize: '20'
                                                }
                                            }
                                        }
                                    }
                                },
                                {
                                    value: 15000,
                                    symbol: 'star6',
                                    symbolSize: 20,
                                    symbolRotate: 10,
                                    itemStyle: {// 数据级个性化折线样式
                                        normal: {
                                            color: 'yellowgreen'
                                        },
                                        emphasis: {
                                            color: 'orange',
                                            label: {
                                                show: true,
                                                position: 'inside',
                                                textStyle: {
                                                    fontSize: '20'
                                                }
                                            }
                                        }
                                    }
                                },
                                {
                                    value: 20000,
                                    symbol: 'star6',
                                    symbolSize: 20,
                                    symbolRotate: 10,
                                    itemStyle: {// 数据级个性化折线样式
                                        normal: {
                                            color: 'yellowgreen'
                                        },
                                        emphasis: {
                                            color: 'orange',
                                            label: {
                                                show: true,
                                                position: 'inside',
                                                textStyle: {
                                                    fontSize: '20'
                                                }
                                            }
                                        }
                                    }
                                },
                                {
                                    value: 30000,
                                    symbol: 'star6',
                                    symbolSize: 20,
                                    symbolRotate: 10,
                                    itemStyle: {// 数据级个性化折线样式
                                        normal: {
                                            color: 'yellowgreen'
                                        },
                                        emphasis: {
                                            color: 'orange',
                                            label: {
                                                show: true,
                                                position: 'inside',
                                                textStyle: {
                                                    fontSize: '20'
                                                }
                                            }
                                        }
                                    }
                                },
                            ]
                        },
                    ]

                };

                // 为echarts对象加载数据 
                myChart1.setOption(option1);
            </script>

            <!--付钰图表js-->
            <script type="text/javascript">
                /*付钰图表*/
                // 基于准备好的dom，初始化echarts图表
                var myChart2 = echarts.init(document.getElementById('main2'), theme2);


                var option2 = {
                    tooltip: {
                        trigger: 'item',
                        enterable: true
                    },
                    legend: {
                        data: ['技术开发', '项目管理'],
                        textStyle: {
                            color: "white"
                        }
                    },
                    toolbox: {
                        show: true,
                        feature: {
                            mark: {show: true},
                            restore: {show: true},
                            saveAsImage: {show: true}
                        }
                    },
                    xAxis: [
                        {
                            type: 'time',
                            boundaryGap: [0.05, 0.1],
                            axisLabel: {textStyle: {color: "white"}}
                        }
                    ],
                    series: [
                        {
                            "name": "技术开发",
                            "type": "eventRiver",
                            "weight": 123,
                            "data": [
                                {
                                    "name": "软件工程师",
                                    "weight": 123,
                                    "evolution": [
                                        {
                                            "time": "2015",
                                            "value": 20,
                                            "detail": {
                                                "text": "---C---"

                                            }
                                        },
                                        {
                                            "time": "2016",
                                            "value": 30,
                                            "detail": {
                                                "text": "---C++---"

                                            }
                                        },
                                        {
                                            "time": "2017",
                                            "value": 20,
                                            "detail": {
                                                "text": "---Java---"

                                            }
                                        },
                                        {
                                            "time": "2018",
                                            "value": 10,
                                            "detail": {
                                                "text": "---python---"

                                            }
                                        }
                                    ]
                                },
                                {
                                    "name": "前台开发",
                                    "weight": 123,
                                    "evolution": [
                                        {
                                            "time": "2017",
                                            "value": 20,
                                            "detail": {
                                                "text": "---JavaEE---"
                                            }
                                        },
                                        {
                                            "time": "2019",
                                            "value": 25,
                                            "detail": {
                                                "text": "---HTML5---"

                                            }
                                        }

                                    ]
                                },
                                {
                                    "name": "后台开发",
                                    "weight": 123,
                                    "evolution": [
                                        {
                                            "time": "2017",
                                            "value": 30,
                                            "detail": {
                                                "text": "---C#---"

                                            }
                                        },
                                        {
                                            "time": "2019",
                                            "value": 30,
                                            "detail": {
                                                "text": "---Python---"

                                            }
                                        },
                                        {
                                            "time": "2021",
                                            "value": 30,
                                            "detail": {
                                                "text": "---PHP---"

                                            }
                                        }

                                    ]
                                }
                            ]
                        },
                        {
                            "name": "项目管理",
                            "type": "eventRiver",
                            "weight": 123,
                            "data": [
                                {
                                    "name": "产品经理",
                                    "weight": 123,
                                    "evolution": [
                                        {
                                            "time": "2019",
                                            "value": 30,
                                            "detail": {
                                                "text": "---基本软件---"

                                            }
                                        },
                                        {
                                            "time": "2023",
                                            "value": 30,
                                            "detail": {
                                                "text": "---软件测试---"

                                            }
                                        }

                                    ]
                                },
                                {
                                    "name": "项目经理",
                                    "weight": 123,
                                    "evolution": [
                                        {
                                            "time": "2022",
                                            "value": 25,
                                            "detail": {
                                                "text": "---数据库---"

                                            }

                                        },
                                        {
                                            "time": "2024",
                                            "value": 25,
                                            "detail": {
                                                "text": "---软件测试---"

                                            }
                                        }
                                    ]
                                }

                            ]
                        }
                    ]
                };
                // 为echarts对象加载数据 
                myChart2.setOption(option2);
            </script>




    </body>
</html>