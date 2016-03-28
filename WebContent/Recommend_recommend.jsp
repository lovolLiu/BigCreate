<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en-us">
<head>
<title>Developer</title>

<!-- meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- stylesheet -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/owl.theme.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/adjector.css">

<!-- google font -->
<link href='http://fonts.useso.com/css?family=Oswald:300,400'
	rel='stylesheet'>
<link href='http://fonts.useso.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=PT+Sans' rel='stylesheet'
	type='text/css'>
<link href='http://fonts.useso.com/css?family=Roboto+Condensed:400,300'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Oxygen:400,300'
	rel='stylesheet' type='text/css'>
<link href="http://fonts.useso.com/css?family=Rouge+Script"
	rel="stylesheet" type="text/css">
<link href='http://fonts.useso.com/css?family=Milonga' rel='stylesheet'
	type='text/css'>
<style>
.echarts-tooltip a {
	color: white;
}

input[type="text"], input[type="email"], select {
	background: transparent none repeat scroll 0 0;
	border: 1px solid rgb(0, 129, 129);
	color: black;
	margin: 0 auto 20px;
	padding: 12px 15px;
	width: 65%;
}
</style>


</head>

<body>
	<div class="content-block" id="header">
		<div id="overlay-1">
			<header id="site-header" class="clearfix">
				<div class="pull-left">
					<h1>
						<a href="#header">FunJob</a>
					</h1>
				</div>
				<div class="pull-right">
					<nav class="navbar site-nav" role="navigation">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<i class="fa fa-bars fa-2x"></i>
							</button>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="active"><a href="#header"><i
										class="fa fa-home"></i> <span>主页</span></a></li>
								<li><a href="#services"><i class="fa fa-star"></i>
										大数据分析</a></li>
								<li><a href="#contact" id="contact-button"><i
										class="fa fa-user"></i> 信息输入</a></li>

								<li><a href="#portfolio-5" id="contact-button"><i
										class="fa fa-user"></i> 更多简历</a></li>

								<li><a href="#portfolio-1" id="tubutton-1"><i
										class="fa fa-bookmark"></i> 实力评估</a></li>
								<li><a href="#portfolio-3" id="tubutton-3"><i
										class="fa fa-bookmark"></i> 技能推荐</a></li>
								<li><a href="#portfolio-2" id="tubutton-2"><i
										class="fa fa-bookmark"></i> 薪资规划</a></li>

								<li><a href="#portfolio-4" id="tubutton-4"><i
										class="fa fa-bookmark"></i> 相似的人</a></li>
								<li><a href="#testimonials" id="tubutton-5"><i
										class="fa fa-bank"></i> 团队介绍</a></li>

							</ul>
						</div>
						<!-- /.navbar-collapse -->
					</nav>
				</div>
			</header>
			<!-- site-header -->

			<div class="middle text-center clearfix">
				<div class="container">

					<h1 class="pro-name">
						<span class="adject"> Seeking | Fun </span> <span class="adject">
							Job | Job </span> <span class="adject"> Fun | Seeking </span>
						<!-- <span style="color: #71b644;" > -->
						<!-- </span> -->
					</h1>
					<p class="tagline">大数据职业规划平台</p>
					<div class="skills"></div>
					<!-- skills -->
					<a href="#contact" target="_blank"
						class="btn btn-lg btn-hire wow animated zoomIn"
						id="contact-button-2">Hire me</a>
				</div>
				<!-- container -->
			</div>
			<!-- middle -->

			<div class="bottom text-center">
				<a href="#services"><i class="fa fa-angle-down fa-3x pulse"></i></a>
			</div>
		</div>
		<!-- overlay-1 -->
	</div>
	<!-- content-block -->

	<div id="services" class="content-block">
		<div id="numbers" class="parallax">
			<div class="overlay">
				<!-- title -->
				<div class="container-fluid numbers-title">
					<div class="container">
						<div class="row block-heading">
							<h1>我们拥有海量的数据</h1>
						</div>
					</div>
				</div>
				<div class="container-fluid">
					<!-- number list -->
					<ul class="numbersList">
						<li class="col-md-2 col-sm-4 col-xs-6">
							<h4>简历/条</h4> <span id="number1" class="count1 count-timer">240300</span>
						</li>
						<li class="col-md-2 col-sm-4 col-xs-6">
							<h4>学校/所</h4> <span id="number2" class="count2">2752</span>
						</li>
						<li class="col-md-2 col-sm-4 col-xs-6">
							<h4>公司/个</h4> <span id="number3" class="count3">28583</span>
						</li>
						<li class="col-md-2 col-sm-4 col-xs-6">
							<h4>技能/个</h4> <span id="number4" class="count4">1394</span>
						</li>

						<li class="col-md-2 col-sm-4 col-xs-6">
							<h4>职位/个</h4> <span id="number5" class="count5">94</span>
						</li>
					</ul>
					<!-- numbersList end -->
				</div>
				<!-- 
	                    
	                   end -->
			</div>
			<!-- overlay end -->
		</div>
	</div>
	</div>


	<div class="content-block" id="contact">
		<div class="overlay-3">
			<header class="block-heading cleafix text-center">
				<h1>为你精心策划的职业路线</h1>
				<!-- <p>Feel Free to Contact</p> -->
				<p>选择下面的一种方式输入简历信息，获取2种精准的职业分析和规划路线</p>
			</header>
			<div class="block-content text-center">
				<div class="container">
					<div class="row">
						<form id="header-form">
							<legend>填写简历信息</legend>
						</form>
						<br>
						<div class="col-md-6 wow animated fadeInLeft" id="tofadeInLeft">
							<form class="contact-form" id="contact-form"
								action="Recommend_recommend">
								<fieldset>
									<legend>教育信息*</legend>
									<p>
										年龄 <input type="text" name="age" value="${age }">
									</p>

									<p>
										学校 <input type="text" name="school" value="${school }">
									</p>

									<p>
										学位 <input type="text" name="background" value="${background }">
									</p>

									<p>
										专业 <input type="text" name="major" value="${major }">
									</p>
									<fieldset>
										<legend>期望工作*</legend>
										<p>
											期望职位
											<!-- 		<input type="text" name="position" value="Java工程师"> -->

											<select name="position">
												<option value=".net工程师">.net工程师</option>
												<option value="C/C++工程师">C/C++工程师</option>
												<option value="DBA工程师">DBA工程师</option>
												<option value="Hadoop工程师">Hadoop工程师</option>
												<option value="Java工程师">Java工程师</option>
												<option value="Perl工程师">Perl工程师</option>
												<option value="php开发工程师">php开发工程师</option>
												<option value="Python工程师">Python工程师</option>
												<option value="ruby工程师">ruby工程师</option>
												<option value="web前端开发工程师">web前端开发工程师</option>
												<option value="交互设计">交互设计</option>
												<option value="产品设计师">产品设计师</option>
												<option value="企业软件">企业软件</option>
												<option value="全栈工程师">全栈工程师</option>
												<option value="后端开发">后端开发</option>
												<option value="市场营销">市场营销</option>
												<option value="搜索算法">搜索算法</option>
												<option value="数据挖掘工程师">数据挖掘工程师</option>
												<option value="测试工程师">测试工程师</option>
												<option value="移动产品设计师">移动产品设计师</option>
												<option value="精准推荐">精准推荐</option>
												<option value="自然语言处理工程师">自然语言处理工程师</option>
												<option value="视觉设计">视觉设计</option>
												<option value="运维工程师">运维工程师</option>
												<option value="高端技术">高端技术</option>
											</select>
										</p>
										<p>
											期望月薪 <input type="number" name="salary" value="${salary }">
										</p>

									</fieldset>
						</div>
						<div class="col-md-6 wow animated fadeInRight" id="tofadeInRight">


							<fieldset>
								<legend>专业经历</legend>
								<p>
									熟悉技能
									<textarea type="text" name="skill" rows="6">${skill }</textarea>
								</p>
								项目经历
								<textarea type="text" name="project" rows="7">${project }</textarea>
							</fieldset>
							<input type="submit" value="提交">
							</form>
							<br> <br> <br>
						</div>

						<form id="header-form">
							<legend>上传简历文件</legend>
						</form>
						<br>
						<div class="col-md-6 wow animated fadeInLeft" id="tofadeInLeft">
							<p>
								<input type="file" name="file">
							</p>
						</div>
						<div class="col-md-6 wow animated fadeInRight" id="tofadeInRight">
							<input type="submit" value="提交">
						</div>
					</div>
				</div>
			</div>
			<!-- block-content -->
		</div>
		<!-- overlay-3 -->
	</div>
	<!-- content-block -->



<div class="content-block text-center" id="portfolio-5">
		<div class="overlay-4">
			<header class="block-heading cleafix">
				<h1>更多简历</h1>
				<!-- <p>Take a look at some of my recent products</p> -->
				<p>这里有很多人的经历.参考他们的职业轨迹，找到260000条简历中与他们相似的人</p>
			</header>

			<div id="resume-ul">
				<div class="resume-ul" style="height: 500px; width: 100%;">
					<div class="left" style="width: 13.5%; float: left; height: 400px;"></div>
					<div class="resume-single"
						style="width: 14%; float: left; height: 230px; background: rgba(255, 255, 255, 0.7); color: rgb(0, 129, 129); margin: 5px 10px 5px 0px; text-align: left;">
						<legend
							style="font-size: 15px; width: 80%; border-bottom-width: 2px;">
							<a style="" href="Recommend_recommend?age=30&school=北京邮电大学&background=本科&major=计算机科学&position=搜索算法&salary=&skill=自然语言处理 &project="> <img
								src="http://www.gravatar.com/avatar/hash"
								style="width: 40px; height: 40px; margin: 10px 10px 5px 10px;">
							</a> 李女士
						</legend>
						<div class="resume-content"
							style="width: 100%; margin-left: 10px; margin-right: 5px;">
							年龄: 30 <br> 学校: 北京邮电大学 <br> 学历: 本科 <br>
								专业: 计算机科学 <br> 技能: 自然语言处理 <br> 领域: 搜索算法
						</div>
					</div>
					<div class="resume-single"
						style="width: 14%; float: left; height: 230px; background: rgba(255, 255, 255, 0.7); color: rgb(0, 129, 129); margin: 5px 10px 5px 0px; text-align: left;">
						<legend
							style="font-size: 15px; width: 80%; border-bottom-width: 2px;">
							<a style="" href="Recommend_recommend?age=29&school=北京大学&background=硕士&major=计算机科学&position=精准推荐&salary=&skill=Haskell&project="> <img
								src="http://www.gravatar.com/avatar/hash"
								style="width: 40px; height: 40px; margin: 10px 10px 5px 10px;">
							</a> 张先生
						</legend>
						<div class="resume-content"
							style="width: 100%; margin-left: 10px; margin-right: 5px;">
							年龄: 29 <br> 学校: 北京大学 <br> 学历: 硕士 <br> 专业: 计算机科学
							<br> 技能: Haskell <br> 领域:精准推荐
						</div>
					</div>
					<div class="resume-single"
						style="width: 14%; float: left; height: 230px; background: rgba(255, 255, 255, 0.7); color: rgb(0, 129, 129); margin: 5px 10px 5px 0px; text-align: left;">
						<legend
							style="font-size: 15px; width: 80%; border-bottom-width: 2px;">
							<a style="" href="Recommend_recommend?age=20&school=清华大学&background=硕士&major=计算机科学&position=后端开发&salary=&skill=php&project="> <img
								src="http://www.gravatar.com/avatar/hash"
								style="width: 40px; height: 40px; margin: 10px 10px 5px 10px;">
							</a> 王先生
						</legend>
						<div class="resume-content"
							style="width: 100%; margin-left: 10px; margin-right: 5px;">
							年龄: 20 <br> 学校: 清华大学 <br> 学历: 硕士 <br> 专业: 计算机科学
							<br> 技能: php <br> 领域: 后端开发
						</div>
					</div>
					<div class="resume-single"
						style="width: 14%; float: left; height: 230px; background: rgba(255, 255, 255, 0.7); color: rgb(0, 129, 129); margin: 5px 10px 5px 0px; text-align: left;">
						<legend
							style="font-size: 15px; width: 80%; border-bottom-width: 2px;">
							<a style="" href="Recommend_recommend?age=39&school=电子科技大学&background=本科 &major=计算机科学&position=交互设计&salary=&skill=Haskell&project="> <img
								src="http://www.gravatar.com/avatar/hash"
								style="width: 40px; height: 40px; margin: 10px 10px 5px 10px;">
							</a> 杨先生
						</legend>
						<div class="resume-content"
							style="width: 100%; margin-left: 10px; margin-right: 5px;">
							年龄: 39 <br> 学校: 电子科技大学 <br> 学历: 本科 <br> 专业: 计算机科学
							<br> 技能: ps <br> 领域: 交互设计
						</div>
					</div>
					<div class="resume-single"
						style="width: 14%; float: left; height: 230px; background: rgba(255, 255, 255, 0.7); color: rgb(0, 129, 129); margin: 5px 10px 5px 0px; text-align: left;">
						<legend
							style="font-size: 15px; width: 80%; border-bottom-width: 2px;">
							<a style="" href="Recommend_recommend?age=40&school=北京邮电大学&background=硕士&major=计算机科学&position=高端技术&salary=&skill=Haskell&project="> <img
								src="http://www.gravatar.com/avatar/hash"
								style="width: 40px; height: 40px; margin: 10px 10px 5px 10px;">
							</a> 付女士
						</legend>
						<div class="resume-content"
							style="width: 100%; margin-left: 10px; margin-right: 5px;">
							年龄: 40 <br> 学校: 北京邮电大学 <br> 学历: 硕士 <br> 专业: 计算机科学
							<br> 技能: Haskell <br> 领域: 高端技术
						</div>
					</div>
					<div class="resume-single"
						style="width: 14%; float: left; height: 230px; background: rgba(255, 255, 255, 0.7); color: rgb(0, 129, 129); margin: 5px 10px 5px 0px; text-align: left;">
						<legend
							style="font-size: 15px; width: 80%; border-bottom-width: 2px;">
							<a style="" href="Recommend_recommend?age=42&school=西安电子科技大学&background=硕士&major=计算机科学&position=web前端开发工程师&salary=&skill=html&project="> <img
								src="http://www.gravatar.com/avatar/hash"
								style="width: 40px; height: 40px; margin: 10px 10px 5px 10px;">
							</a> 李女士
						</legend>
						<div class="resume-content"
							style="width: 100%; margin-left: 10px; margin-right: 5px;">
							年龄: 42 <br> 学校: 西安电子科技大学 <br> 学历: 硕士 <br> 专业: 计算机科学
							<br> 技能: html <br> 领域: web前端开发工程师
						</div>
					</div>
					<div class="resume-single"
						style="width: 14%; float: left; height: 230px; background: rgba(255, 255, 255, 0.7); color: rgb(0, 129, 129); margin: 5px 10px 5px 0px; text-align: left;">
						<legend
							style="font-size: 15px; width: 80%; border-bottom-width: 2px;">
							<a style="" href="Recommend_recommend?age=30&school=上海交大&background=本科&major=软件工程&position=Perl工程师&salary=&skill=java&project="> <img
								src="http://www.gravatar.com/avatar/hash"
								style="width: 40px; height: 40px; margin: 10px 10px 5px 10px;">
							</a> 李女士
						</legend>
						<div class="resume-content"
							style="width: 100%; margin-left: 10px; margin-right: 5px;">
							年龄:30<br> 学校 : 上海交大 <br> 学历 : 本科<br> 专业 : 软件工程<br> 技能 : java <br> 领域 : Perl工程师
						</div>
					</div>
					<div class="resume-single"
						style="width: 14%; float: left; height: 230px; background: rgba(255, 255, 255, 0.7); color: rgb(0, 129, 129); margin: 5px 10px 5px 0px; text-align: left;">
						<legend
							style="font-size: 15px; width: 80%; border-bottom-width: 2px;">
							<a style="" href="Recommend_recommend?age=27&school=北航&background=本科&major=软件工程&position=算法&salary=&skill=java&project="> <img
								src="http://www.gravatar.com/avatar/hash"
								style="width: 40px; height: 40px; margin: 10px 10px 5px 10px;">
							</a> 李女士
						</legend>
						<div class="resume-content"
							style="width: 100%; margin-left: 10px; margin-right: 5px;">
							年龄:27<br> 学校 : 北航 <br> 学历 : 本科<br> 专业 : 软件工程<br> 技能 : java <br> 领域 : 算法
						</div>
					</div>
					<div class="resume-single"
						style="width: 14%; float: left; height: 230px; background: rgba(255, 255, 255, 0.7); color: rgb(0, 129, 129); margin: 5px 10px 5px 0px; text-align: left;">
						<legend
							style="font-size: 15px; width: 80%; border-bottom-width: 2px;">
							<a style="" href="Recommend_recommend?age=30&school=北京邮电大学&background=硕士&major=计算机科学&position=算法分析&salary=&skill=Haskell&project="> <img
								src="http://www.gravatar.com/avatar/hash"
								style="width: 40px; height: 40px; margin: 10px 10px 5px 10px;">
							</a> 王女士
						</legend>
						<div class="resume-content"
							style="width: 100%; margin-left: 10px; margin-right: 5px;">
							年龄:30<br> 学校 : 北京邮电大学 <br> 学历 : 硕士<br> 专业 : 计算机科学<br> 技能 : C++ <br> 领域 : 算法分析
						</div>
					</div>
					<div class="resume-single"
						style="width: 14%; float: left; height: 230px; background: rgba(255, 255, 255, 0.7); color: rgb(0, 129, 129); margin: 5px 10px 5px 0px; text-align: left;">
						<legend
							style="font-size: 15px; width: 80%; border-bottom-width: 2px;">
							<a style="" href="Recommend_recommend?age=42&school=西安电子科技大学&background=硕士&major=计算机科学&position=前端开发&salary=&skill=html&project="> <img
								src="http://www.gravatar.com/avatar/hash"
								style="width: 40px; height: 40px; margin: 10px 10px 5px 10px;">
							</a> 张女士
						</legend>
						<div class="resume-content"
							style="width: 100%; margin-left: 10px; margin-right: 5px;">
年龄:42<br> 学校 : 西安电子科技大学 <br> 学历 : 硕士<br> 专业 : 计算机科学<br> 技能 : C <br> 领域 : C语言工程师
						</div>
					</div>

					<div class="right" style="width: 10%; float: right; height: 400px;"></div>

				</div>
				<!-- isotope portfolio-items -->
			</div>
		</div>
	</div>
	<!-- content-block -->









	<div class="content-block text-center" id="portfolio-1">
		<div class="overlay-4" id="tu-1">
			<header class="block-heading cleafix">
				<h1>当前实力评估</h1>
				<!-- <p>Take a look at some of my recent products</p> -->
				<p>根据你输入的信息，我们对你的实力做出了如下评估</p>
			</header>

			<!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------图图图图图图---------->
			<div id="mainradar" style="height: 400px"></div>
			<!-- 雷达图 -->
		</div>
	</div>
	<!-- content-block -->



	<div class="content-block text-center" id="portfolio-3">
		<div class="overlay-4" id="tu-3">
			<header class="block-heading cleafix">
				<h1>当上CEO，实现人生逆袭</h1>
				<!-- <p>Take a look at some of my recent products</p> -->
				<p>我们为你量身定制了今后应学习的技能</p>
			</header>
			<!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------图图图图图图---------->
			<div id="main2" style="height: 400px"></div>
		</div>
	</div>
	<!-- content-block -->


	<div class="content-block text-center" id="portfolio-2">
		<div class="overlay-4" id="tu-2">
			<header class="block-heading cleafix">
				<h1>薪资节节高</h1>
				<!-- <p>Take a look at some of my recent products</p> -->
				<p>根据你给出的期望工资，我们对你的职业生涯做出了如下规划</p>
			</header>

			<!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------图图图图图图---------->
			<div id="main1" style="height: 400px"></div>
		</div>
	</div>
	<!-- content-block -->





	<div class="content-block text-center" id="portfolio-4">
		<div class="overlay-4" id="tu-4">
			<header class="block-heading cleafix">
				<h1>你不是一个人</h1>
				<!-- <p>Take a look at some of my recent products</p> -->
				<p>这里有很多人的经历与你相似.参考他们的职业轨迹，也许对你有帮助</p>
			</header>
			<!-------------------------------------------------------------------------------------------------------------------------------------------------------------图图图图图图---------->
			<div id="main3" style="height: 400px"></div>
			<!-- isotope portfolio-items -->
			<a href="#" class="btn btn-lg btn-view"> <i class="fa fa-eye"></i>
				<span>View All</span>
			</a>
		</div>
	</div>
	<!-- content-block -->

	


	<div class="content-block" id="testimonials">
		<header class="block-heading cleafix text-center" id="tu-5">
			<h1>团队介绍</h1>
			<!-- <p>Lorem Ipsum Text</p> -->
		</header>
		<div class="block-content text-center" id="tu-6">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<div class="owl-carousel">
							<div class="owl-item">
								<div class="testimonial">
									<img alt="Client Photo" src="img/lxt.jpg">
									<p>在这个项目中，负责协调和安排小组的工作进度，进行组内的人员协调和分工的工作安排,负责Hadoop的学习和使用。搭建伪分布式Hadoop平台，进行各个需要组件的安装和配置.</p>
									<strong>刘昕彤</strong><br> <span>组长, Hadoop研究</span>
								</div>
							</div>
							<!-- owl-item -->
							<div class="owl-item">
								<div class="testimonial">
									<img alt="Client Photo" src="img/sc.jpg">
									<p>在这个项目中，负责前台界面的设计，算法分析和数据预处理.
										将json格式的简历信息进行文本格式的处理与分析，使其成为自然语言处理可以接受的规范格式.</p>
									<strong>苏畅</strong><br> <span>项目成员, 算法分析</span>
								</div>
							</div>
							<!-- owl-item -->
							<div class="owl-item">
								<div class="testimonial">
									<img alt="Client Photo" src="img/yzq.jpg">
									<p>在这个项目中，负责后台逻辑实现，以及前台与后台的连接. 包括数据的收集与整理，建立本体树,
										数据的向量化，简历牛人二分类算法以及推荐算法的实现，利用echarts绘制职位展示效果图.</p>
									<strong>杨智淇</strong><br> <span>项目成员, 后台实现</span>
								</div>
							</div>
							<!-- owl-item -->
							<div class="owl-item">
								<div class="testimonial">
									<img alt="Client Photo" src="img/fy.jpg">
									<p>在这个项目中，负责后台逻辑实现，以及前台与后台的连接. 包括数据的收集与整理，建立本体树,
										数据的向量化，简历牛人二分类算法以及推荐算法的实现，利用echarts绘制职位展示效果图.</p>
									<strong>付钰</strong><br> <span>项目成员, 后台实现</span>
								</div>
							</div>
							<!-- owl-item -->
							<div class="owl-item">
								<div class="testimonial">
									<img alt="Client Photo" src="img/czq.jpg">
									<p>I在这个项目中，负责项目的大数据平台的迁移与算法分析.
										包括学习Hadoop搭建集群平台，使用Hbase建立数据库，通过Sqoop迁移MySQL中的数据，学习MapReduce以及Mahout.</p>
									<strong>崔仲奇</strong><br> <span>项目成员, Hadoop研究</span>
								</div>
							</div>
							<!-- owl-item -->
						</div>
						<!-- owl-carousel -->
					</div>
					<!-- col-md-12 -->
				</div>
				<!-- row -->
			</div>
			<!-- container -->
		</div>
		<!-- block-content -->
	</div>
	<!-- content-block -->
	</div>


	<footer id="site-footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="copyright">
						<ul class="social-box">
							<li>&copy; 2016 FunJob大数据分析招聘网站</li>
						</ul>
					</div>

				</div>
				<div class="col-sm-6">
					<ul class="social-box">
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li><a class="facebook-icon" href="#"><i
								class="fa fa-facebook"></i></a></li>
						<li><a class="twitter-icon" href="#"><i
								class="fa fa-twitter"></i></a></li>
						<li><a class="g-plus-icon" href="#"><i
								class="fa fa-google-plus"></i></a></li>
						<li><a class="linkedin-icon" href="#"><i
								class="fa fa-linkedin"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
		</div>
	</footer>
	<!-- site-footer -->


	<!-- js -->
	<script>
		new WOW().init();
	</script>

	<script src="js/jquery-2.1.3.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.actual.min.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.isonscreen.js"></script>
	<script src="js/adjector.js"></script>
	<script src="js/modernizr.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/main.js"></script>


	<script type="text/javascript">
		var position = "${position}";
		$("option[value='${position}']").attr("selected", "selected");
	</script>




	<script>
		$(document).ready(function() {
			$("#tu-1").animate({
				opacity : 0.25,
				left : "+=10000",
				height : "hide"
			}, 1000, function() {
				// Animation complete.
			});
			$("#tu-2").animate({
				opacity : 0.25,
				bottom : "+=10000",
				height : "hide"
			}, 1000, function() {
				// Animation complete.
			});
			$("#tu-3").animate({
				opacity : 0.25,
				bottom : "+=10000",
				height : "hide"
			}, 1000, function() {
				// Animation complete.
			});
			$("#tu-4").animate({
				opacity : 0.25,
				bottom : "+=10000",
				height : "hide"
			}, 1000, function() {
				// Animation complete.
			});
			$("#tu-5").animate({
				opacity : 0.25,
				bottom : "+=10000",
				height : "hide"
			}, 1000, function() {
				// Animation complete.
			});
			$("#tu-6").animate({
				opacity : 0.25,
				width : "hide"
			}, 1000, function() {
				// Animation complete.
			});
			$("#tofadeInLeft").animate({
				opacity : 1,
				left : "-=1000"
			/*height: "toggle"*/
			}, 1500, function() {
				// Animation complete.
			});
			$("#tofadeInRight").animate({
				opacity : 1,
				left : "+=1000"
			/*height: "toggle"*/
			}, 1500, function() {
				// Animation complete.
			});
			$(".pro-name .adject").adjector({
				sep : "|",
				arm : 0
			});
			$("#contact-button").click(function() {
				if (!$("#tofadeInLeft").hasClass("animatedaa")) {
					$("#tofadeInLeft").animate({
						opacity : 1,
						left : "+=1000"
					/*height: "toggle"*/
					}, 1700, function() {
						// Animation complete.
					});
					$("#tofadeInRight").animate({
						opacity : 1,
						left : "-=1000"
					/*height: "toggle"*/
					}, 1700, function() {
						// Animation complete.
					});
					$("#tofadeInLeft").addClass('animatedaa');
				}
			});
			$("#contact-button-2").click(function() {
				if (!$("#tofadeInLeft").hasClass("animatedaa")) {
					$("#tofadeInLeft").animate({
						opacity : 1,
						left : "+=1000"
					/*height: "toggle"*/
					}, 1700, function() {
						// Animation complete.
					});
					$("#tofadeInRight").animate({
						opacity : 1,
						left : "-=1000"
					/*height: "toggle"*/
					}, 1700, function() {
						// Animation complete.
					});
					$("#tofadeInLeft").addClass('animatedaa');
				}
			});
			$("#tubutton-1").click(function() {
				if (!$("#tu-1").hasClass("animatedaa")) {
					$("#tu-1").animate({
						opacity : 1,
						left : "-=10000",
						height : "show"
					}, 1500, function() {
						// Animation complete.
					});

					$("#tu-1").addClass('animatedaa');
				}
			});
			$("#tubutton-2").click(function() {
				if (!$("#tu-2").hasClass("animatedaa")) {
					$("#tu-2").animate({
						opacity : 1,
						bottom : "-=10000",
						height : "show"
					}, 1500, function() {
						// Animation complete.
					});

					$("#tu-2").addClass('animatedaa');
				}
			});
			$("#tubutton-3").click(function() {
				if (!$("#tu-3").hasClass("animatedaa")) {
					$("#tu-3").animate({
						opacity : 1,
						bottom : "-=10000",
						height : "show"
					}, 1500, function() {
						// Animation complete.
					});

					$("#tu-3").addClass('animatedaa');
				}
			});
			$("#tubutton-4").click(function() {
				if (!$("#tu-4").hasClass("animatedaa")) {
					$("#tu-4").animate({
						opacity : 1,
						bottom : "-=10000",
						height : "show"
					}, 1500, function() {
						// Animation complete.
					});

					$("#tu-4").addClass('animatedaa');
				}
			});
			$("#tubutton-5").click(function() {
				if (!$("#tu-5").hasClass("animatedaa")) {
					$("#tu-5").animate({
						opacity : 1,
						bottom : "-=10000",
						height : "show"
					}, 2000, function() {
						// Animation complete.
					});

					$("#tu-5").addClass('animatedaa');
				}
				if (!$("#tu-6").hasClass("animatedaa")) {
					$("#tu-6").animate({
						opacity : 1,
						window : "show"
					}, 3000, function() {
						// Animation complete.
					});

					$("#tu-6").addClass('animatedaa');
				}
			});
			$('.owl-carousel').owlCarousel({
				loop : true,
				margin : 10,
				autoplay : true,
				autoplayTimeout : 3000,
				autoplayHoverPause : true,
				responsiveClass : true,
				responsive : {
					0 : {
						items : 1,
					},
					600 : {
						items : 1,
					},
					1000 : {
						items : 1,
					}
				}
			})
		});
	</script>




	

	<!-- ###### -->
	<script src="src/dist/echarts.js"></script>


	<!--杨智淇图表js-->
	<script type="text/javascript">
		// 路径配置
		require.config({
			paths : {
				echarts : 'src' //first 路径
			}
		});

		// 使用
		require([ 'echarts', 'echarts/theme/red', //这句话必须放在图表之前!
		'echarts/chart/bar', // 使用柱状图就加载bar模块，按需加载
		'echarts/chart/force', //second 路径
		], function(ec, theme) {
			// 基于准备好的dom，初始化echarts图表
			var myChart = ec.init(document.getElementById('main3'), theme);

			option3 = {
				tooltip : {
					trigger : 'item',
					formatter : '{a}  {b}'
				},
				toolbox : {
					show : true,
					feature : {
						restore : {
							show : true
						},
						magicType : {
							show : true,
							type : [ 'force', 'chord' ]
						},
						saveAsImage : {
							show : true
						}
					}
				},
				legend : {
					x : 'left',
					data : [ '您', '其他人' ],
					textStyle : {
						color : "white"
					}
				},
				series : [ {
					type : 'force',
					name : "",
					ribbonType : false,
					categories : [ {
						name : '您'
					}, {
						name : '其他人'
					}, {
						name : '朋友'
					} ],
					itemStyle : {
						normal : {
							label : {
								show : true,
								textStyle : {
									color : 'white',
									fontFamily : "黑体",
									fontSize : 15
								}
							},
							nodeStyle : {
								brushType : 'both',
								borderColor : 'rgba(255,215,0,0.4)',
								borderWidth : 0
							},
							linkStyle : {
								type : 'line'
							}
						},
						emphasis : {
							label : {
								show : false
							// textStyle: null      // 默认使用全局文本样式，详见TEXTSTYLE
							},
							nodeStyle : {
							//r: 30
							},
							linkStyle : {}
						}
					},
					useWorker : false,
					minRadius : 15,
					maxRadius : 25,
					gravity : 1.1,
					scaling : 1.1,
					roam : 'move',
					nodes : [ {
						category : 0,
						name : '您',
						value : 10,
						label : '您'
					}, {
						category : 1,
						name : '大牛一',
						value : 2,
						label : ' '
					}, {
						category : 1,
						name : '大牛二',
						value : 3,
						label : ' '
					}, {
						category : 1,
						name : '大牛三',
						value : 3,
						label : ' '
					}, {
						category : 1,
						name : '大牛四',
						value : 7,
						label : ' '
					}, {
						category : 2,
						name : '大牛五',
						value : 5,
						label : ' '
					}, {
						category : 2,
						name : '大牛六',
						value : 8,
						label : ' '
					}, {
						category : 2,
						name : '大牛七',
						value : 4,
						label : ' '
					}, {
						category : 2,
						name : '大牛八',
						value : 4,
						label : ' '
					}, {
						category : 2,
						name : '大牛九',
						value : 4,
						label : ' '
					}, {
						category : 2,
						name : '大牛十',
						value : 1,
						label : ' '
					}, ],
					links : [ {
						source : '大牛一',
						target : '您',
						weight : 1,
						name : '${similarPerson1}'
					}, {
						source : '大牛二',
						target : '您',
						weight : 2,
						name : '${similarPerson2}'
					}, {
						source : '大牛三',
						target : '您',
						weight : 1,
						name : '${similarPerson3}'
					}, {
						source : '大牛四',
						target : '您',
						weight : 2,
						name : '${similarPerson4}'
					}, {
						source : '大牛五',
						target : '您',
						weight : 1,
						name : '${similarPerson5}'
					}, {
						source : '大牛六',
						target : '您',
						weight : 1,
						name : '${similarPerson6}'
					}, {
						source : '大牛七',
						target : '您',
						weight : 2,
						name : '${similarPerson7}'
					}, {
						source : '大牛八',
						target : '您',
						weight : 1,
						name : '${similarPerson8}'
					}, {
						source : '大牛九',
						target : '您',
						weight : 1,
						name : '${similarPerson9}'
					}, {
						source : '大牛十',
						target : '您',
						weight : 1,
						name : '${similarPerson10}'
					}, ]
				} ]
			};
			var ecConfig = require('echarts/config');
			function focus(param) {
				var data = param.data;
				var links = option3.series[0].links;
				var nodes = option3.series[0].nodes;
				if (data.source !== undefined && data.target !== undefined) { //点击的是边
					var sourceNode = nodes.filter(function(n) {
						return n.name == data.source
					})[0];
					var targetNode = nodes.filter(function(n) {
						return n.name == data.target
					})[0];
					console.log("选中了边 " + sourceNode.name + ' -> '
							+ targetNode.name + ' (' + data.weight + ')');
				} else { // 点击的是点
					console.log("选中了" + data.name + '(' + data.value + ')');
				}
			}
			myChart.on(ecConfig.EVENT.CLICK, focus)

			myChart.on(ecConfig.EVENT.FORCE_LAYOUT_END, function() {
				console.log(myChart.chart.force.getPosition());
			});

			// 为echarts对象加载数据 
			myChart.setOption(option3);
		});
	</script>



	<script src="src/theme/mythemes.js"></script>
	<!--引入 theme1 和 theme2 -->
	<script src="src/dist/echarts-all.js"></script>
	<!-- ###### -->
	<!--radar图表js-->
	<script type="text/javascript">
		// 基于准备好的dom，初始化echarts图表
		var myChart0 = echarts.init(document.getElementById('mainradar'),
				theme1);

		
		var labelTop = {
			    normal : {
			        label : {
			            show : true,
			            position : 'center',
			            formatter : '{b}',
			            textStyle: {
			                baseline : 'bottom'
			            }
			        },
			        labelLine : {
			            show : false
			        }
			    }
			};
			var labelFromatter = {
			    normal : {
			        label : {
			            formatter : function (params){
			                return 100 - params.value + '%'
			            },
			            textStyle: {
			                baseline : 'top'
			            }
			        }
			    },
			}
			var labelBottom = {
			    normal : {
			        color: '#ccc',
			        label : {
			            show : true,
			            position : 'center'
			        },
			        labelLine : {
			            show : false
			        }
			    },
			    emphasis: {
			        color: 'rgba(0,0,0,0)'
			    }
			};
			var radius = [25, 28];
		
		
		var option0 = {

			    legend: {
			        x : 'center',
			        y : 'bottom',
			        data:[
			            '年龄','性别','地区','婚姻状况','学校',
			            '学历', '专业', '工龄', '职位', '技能','公司','项目经历'
			        ]
			    },
			      tooltip : {
			        trigger: 'axis'
			    },

			    toolbox: {
			        show : true,
			        feature : {
			            mark : {show: true},
			            dataView : {show: true, readOnly: false},
			            restore : {show: true},
			            saveAsImage : {show: true}
			        }
			    },
			    toolbox: {
			        show : true,
			        feature : {
			            dataView : {show: false, readOnly: false},
			            magicType : {
			                show:false, 
			                type: ['pie', 'funnel'],
			                option: {
			                    funnel: {
			                        width: '20%',
			                        height: '30%',
			                        itemStyle : {
			                            normal : {
			                                label : {
			                                    formatter : function (params){
			                                        return 'other\n' + params.value + '%\n'
			                                    },
			                                    textStyle: {
			                                        baseline : 'middle'
			                                    }
			                                }
			                            },
			                        } 
			                    }
			                }
			            },
			            restore : {show: false},
			            saveAsImage : {show: true}
			        }
			    },
			  polar : [
			       {
			           indicator : [
			               { text: '年龄', max: 100},
			               { text: '性别', max: 100},
			               { text: '地区', max: 100},
			               { text: '婚姻状况', max: 100},
			               { text: '学校', max: 100},
			               { text: '学历', max: 100},
			               { text: '专业', max: 100},
			               { text: '工龄', max: 100},
			               { text: '职位', max: 100},
			               { text: '技能', max: 100},
			               { text: '公司', max: 100},
			               { text: '项目经历', max: 100},
			             
			            ]
			        }
			    ],
			    series : [
			        {
			            type : 'pie',
			            center : ['10%', '7.5%'],
			            radius : radius,
			            x: '0%', // for funnel
			            itemStyle : labelFromatter,
			            data : [
			                {name:'other', value:100-'${age_score}', itemStyle : labelBottom},
			                {name:'年龄', value:'${age_score}',itemStyle : labelTop}
			            ]
			        },
			        {
			            type : 'pie',
			            center : ['10%', '22.5%'],
			            radius : radius,
			            x:'20%', // for funnel
			            itemStyle : labelFromatter,
			            data : [
			                {name:'other', value:56, itemStyle : labelBottom},
			                {name:'性别', value:44,itemStyle : labelTop}
			            ]
			        },
			        {
			            type : 'pie',
			            center : ['10%', '37.5%'],
			            radius : radius,
			            x:'40%', // for funnel
			            itemStyle : labelFromatter,
			            data : [
			                {name:'other', value:65, itemStyle : labelBottom},
			                {name:'地区', value:35,itemStyle : labelTop}
			            ]
			        },
			        {
			            type : 'pie',
			            center : ['10%', '52.5%'],
			            radius : radius,
			            x:'60%', // for funnel
			            itemStyle : labelFromatter,
			            data : [
			                {name:'other', value:70, itemStyle : labelBottom},
			                {name:'婚姻状况', value:30,itemStyle : labelTop}
			            ]
			        },
			        {
			            type : 'pie',
			            center : ['10%', '67.5%'],
			            radius : radius,
			            x:'80%', // for funnel
			            itemStyle : labelFromatter,
			            data : [
			                {name:'other', value:100-'${school_score}', itemStyle : labelBottom},
			                {name:'学校', value:'${school_score}',itemStyle : labelTop}
			            ]
			        },
			        {
			            type : 'pie',
			            center : ['10%', '82.5%'],
			            radius : radius,
			            y: '55%',   // for funnel
			            x: '0%',    // for funnel
			            itemStyle : labelFromatter,
			            data : [
			                {name:'other', value:100-'${background_score}', itemStyle : labelBottom},
			                {name:'学历', value:'${background_score}',itemStyle : labelTop}
			            ]
			        },
			        {
			            type : 'pie',
			            center : ['90%', '7.5%'],
			            radius : radius,
			            y: '55%',   // for funnel
			            x:'20%',    // for funnel
			            itemStyle : labelFromatter,
			            data : [
			                {name:'other', value:100-'${major_score}', itemStyle : labelBottom},
			                {name:'专业', value:'${major_score}',itemStyle : labelTop}
			            ]
			        },
			               {
			            type : 'pie',
			            center : ['90%', '22.5%'],
			            radius : radius,
			            y: '55%',   // for funnel
			            x:'80%', // for funnel
			            itemStyle : labelFromatter,
			            data : [
			                {name:'other', value:89, itemStyle : labelBottom},
			                {name:'工龄', value:11,itemStyle : labelTop}
			            ]
			        },
			        {
			            type : 'pie',
			            center : ['90%', '37.5%'],
			            radius : radius,
			            y: '55%',   // for funnel
			            x:'40%', // for funnel
			            itemStyle : labelFromatter,
			            data : [
			                {name:'other', value:100-'${position_score}', itemStyle : labelBottom},
			                {name:'职位', value:'${position_score}',itemStyle : labelTop}
			            ]
			        },
			        {
			            type : 'pie',
			            center : ['90%', '52.5%'],
			            radius : radius,
			            y: '55%',   // for funnel
			            x:'60%', // for funnel
			            itemStyle : labelFromatter,
			            data : [
			                {name:'other', value:83, itemStyle : labelBottom},
			                {name:'技能', value:17,itemStyle : labelTop}
			            ]
			        },
			        {
			            type : 'pie',
			            center : ['90%', '67.5%'],
			            radius : radius,
			            y: '55%',   // for funnel
			            x:'80%', // for funnel
			            itemStyle : labelFromatter,
			            data : [
			                {name:'other', value:89, itemStyle : labelBottom},
			                {name:'公司', value:11,itemStyle : labelTop}
			            ]
			        },
			        {
			            type : 'pie',
			            center : ['90%', '82.5%'],
			            radius : radius,
			            y: '55%',   // for funnel
			            x:'80%', // for funnel
			            itemStyle : labelFromatter,
			            data : [
			                {name:'other', value:89, itemStyle : labelBottom},
			                {name:'项目经历', value:11,itemStyle : labelTop}
			            ]
			        },
			      {
			            name: '分数',
			            type: 'radar',
			            data : [
			                {
			                    value : ['${age_score}', 100, 100, 97,'${school_score}', '${background_score}','${major_score}',100,'${position_score}',100,90,89],
			                    name : '分数'
			                }

			            ]
			        }
			    ]

		};

		// 为echarts对象加载数据 
		myChart0.setOption(option0);
		
		
		
	//&&&&&	
//			value : [ '${age_score}', '${school_score}',
//			'${background_score}', '${major_score}',
//			'${position_score}' ],
		
		
		
	</script>
	<!-- ###### -->
	<!--刘欣彤图表js-->
	<script type="text/javascript">
		/*刘欣彤图表*/
		// 基于准备好的dom，初始化echarts图表
		var myChart1 = echarts.init(document.getElementById('main1'), theme1);
		var value = [];
		value[0] = ${nodeSet.node0};
		value[1] = ${nodeSet.node1};
		value[2] = ${nodeSet.node2};
		value[3] = ${nodeSet.node3};
		value[4] = ${nodeSet.node4};
		value[5] = ${nodeSet.node5};
		value[6] = ${nodeSet.node6};

		var option1 = {
			grid : {
				borderColor : "#ccc",

			},

			tooltip : {
				show : false,
				trigger : 'axis',
				textStyle : {
					color : 'black',
					fontFamily : '黑体',
					fontSize : 15,
				},
				formatter : function(params, ticket, callback) {
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

					setTimeout(function() {
						// 仅为了模拟异步回调
						callback(ticket, res);
					}, 1)
					return 'loading';
				}
			},
			legend : {
				data : [ '薪资规划' ],
				textStyle : {
					color : "#008acd"
				}
			},
			toolbox : {
				show : false,
				feature : {
					mark : {
						show : true
					},
					dataView : {
						show : true,
						readOnly : false
					},
					magicType : {
						show : true,
						type : [ 'line', 'bar', 'stack', 'tiled' ]
					},
					restore : {
						show : true
					},
					saveAsImage : {
						show : true
					}
				}
			},
			calculable : true,
			xAxis : [ {
				type : 'category',
				boundaryGap : false,
				data : [ '0', '2', '4', '6', '8', '10', '12' ],
				axisLabel : {
					textStyle : {
						color : "#008acd"
					}
				}
			} ],
			yAxis : [ {
				type : 'value',
				axisLabel : {
					textStyle : {
						color : "#008acd"
					}
				}
			} ],
			//                    series: [
			//                        {
			//                            name: '薪资规划',
			//                            type: 'line',
			//                            stack: '总量',
			//                            data: [3000, 5000, 10000, 15000, 20000, 25000, 30000]
			//                        }
			//                    ]
			series : [
					{
						name : '薪资规划',
						type : 'line',
						stack : '总量',
						symbol : 'none',
						itemStyle : {
							normal : {
								areaStyle : {
									// 区域图，纵向渐变填充
									color : (function() {
										var zrColor = require('zrender/tool/color');
										return zrColor
												.getLinearGradient(
														0,
														50,
														0,
														400,
														[
																[ 0,
																		'rgba(229,207,0,0.8)' ],
																[ 0.8,
																		'rgba(255,255,255,0.1)' ] ])
									})()
								}
							}
						},
						data : [ {
							value : value[0],
							symbol : 'star6',
							symbolSize : 20,
							symbolRotate : 10,
							itemStyle : {// 数据级个性化折线样式
								normal : {
									color : 'orange'
								},
								emphasis : {
									color : 'yellowgreen',
									label : {
										show : true,
										position : 'inside',
										textStyle : {
											fontSize : '20',
											color : "red"
										}
									}
								}
							}
						}, {
							value : value[1],
							symbol : 'star6',
							symbolSize : 20,
							symbolRotate : 10,
							itemStyle : {// 数据级个性化折线样式
								normal : {
									color : 'orange'
								},
								emphasis : {
									color : 'yellowgreen',
									label : {
										show : true,
										position : 'inside',
										textStyle : {
											fontSize : '20',
											color : "red"
										}
									}
								}
							}
						}, {
							value : value[2],
							symbol : 'star6',
							symbolSize : 20,
							symbolRotate : 10,
							itemStyle : {// 数据级个性化折线样式
								normal : {
									color : 'orange'
								},
								emphasis : {
									color : 'yellowgreen',
									label : {
										show : true,
										position : 'inside',
										textStyle : {
											fontSize : '20',
											color : "red"
										}
									}
								}
							}
						}, {
							value : value[3],
							symbol : 'star6',
							symbolSize : 20,
							symbolRotate : 10,
							itemStyle : {// 数据级个性化折线样式
								normal : {
									color : 'orange'
								},
								emphasis : {
									color : 'yellowgreen',
									label : {
										show : true,
										position : 'inside',
										textStyle : {
											fontSize : '20',
											color : "red"
										}
									}
								}
							}
						}, {
							value : value[4],
							symbol : 'star6',
							symbolSize : 20,
							symbolRotate : 10,
							itemStyle : {// 数据级个性化折线样式
								normal : {
									color : 'orange'
								},
								emphasis : {
									color : 'yellowgreen',
									label : {
										show : true,
										position : 'inside',
										textStyle : {
											fontSize : '20',
											color : "red"
										}
									}
								}
							}
						}, {
							value : value[5],
							symbol : 'star6',
							symbolSize : 20,
							symbolRotate : 10,
							itemStyle : {// 数据级个性化折线样式
								normal : {
									color : 'orange'
								},
								emphasis : {
									color : 'yellowgreen',
									label : {
										show : true,
										position : 'inside',
										textStyle : {
											fontSize : '20',
											color : "red"
										}
									}
								}
							}
						}, {
							value : value[6],
							symbol : 'star6',
							symbolSize : 20,
							symbolRotate : 10,
							itemStyle : {// 数据级个性化折线样式
								normal : {
									color : 'orange'
								},
								emphasis : {
									color : 'yellowgreen',
									label : {
										show : true,
										position : 'inside',
										textStyle : {
											fontSize : '20',
											color : "red"
										}
									}
								}
							}
						}, ]
					}, ]

		};

		// 为echarts对象加载数据 
		myChart1.setOption(option1);
	</script>
	<!-- ###### -->
	<!--漏斗技能图表js-->
	<script type="text/javascript">
		/*漏斗技能图表*/
		// 基于准备好的dom，初始化echarts图表
		var myChart2 = echarts.init(document.getElementById('main2'), theme2);

		var skillArr = [];

		skillArr[0] = '${recommendSkills1}';
		skillArr[1] = '${recommendSkills2}';
		skillArr[2] = '${recommendSkills3}';

		var option2 = {
			title : {
				text : '',
				subtext : ''
			},
			tooltip : {
				trigger : 'item',
				formatter : "{b}"
			},
			toolbox : {
				show : false,
				feature : {
					mark : {
						show : true
					},
					dataView : {
						show : true,
						readOnly : false
					},
					restore : {
						show : true
					},
					saveAsImage : {
						show : true
					}
				}
			},
			legend : {
				data : []
			},
			calculable : true,
			series : [ {
				name : '漏斗图',
				type : 'funnel',
				width : '28%',

				minSize : '100%',
				x : '5%',
				itemStyle : {
					normal : {
						// color: 各异,
						label : {
							position : 'center'
						}
					}
				},
				data : [ {
					value : 100,
					name : skillArr[0].split(",")[0]
				}, {
					value : 100,
					name : skillArr[0].split(",")[1]
				}, {
					value : 100,
					name : skillArr[0].split(",")[2]
				},

				]
			}, {
				name : '金字塔',
				type : 'funnel',
				width : '28%',
				minSize : '100%',
				borderWidth : '0px',
				x : '36%',
				sort : 'ascending',
				itemStyle : {
					normal : {
						// color: 各异,
						label : {
							position : 'center'
						}
					}
				},
				data : [ {
					value : 60,
					name : skillArr[1].split(",")[0]
				}, {
					value : 40,
					name : skillArr[1].split(",")[1]
				}, {
					value : 20,
					name : skillArr[1].split(",")[2]
				},

				]
			}, {
				name : '漏斗图',
				type : 'funnel',
				width : '28%',
				x : '67%',
				minSize : '100%',
				itemStyle : {
					normal : {
						// color: 各异,
						label : {
							position : 'center'
						}
					}
				},
				data : [ {
					value : 100,
					name : skillArr[2].split(",")[0]
				}, {
					value : 100,
					name : skillArr[2].split(",")[1]
				}, {
					value : 100,
					name : skillArr[2].split(",")[2]
				}, ]
			} ]
		};
		// 为echarts对象加载数据 
		myChart2.setOption(option2);
	</script>
</body>
</html>
