<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<base href="http://localhost:8080/BigCreate/ResumeJDModule/" />
<!-- 很重要的标签   -->
<script id="allmobilize" charset="utf-8"
	src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld" />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>内容运营-立方网-拉勾网-最专业的互联网招聘平台</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta
	content="内容运营 武汉 本科 3-5年 全职 运营 大家都来了 你还在等什么！！ 立方网 北京立方网信息技术有限公司 立方网努力尝试把许多人对互联网的需求从现有的娱乐、资讯和交流平台进一步引导到文化与生活伴侣的方面. 拉勾网-最专业的互联网招聘平台"
	name="description">
<meta
	content="内容运营 武汉 本科 3-5年 全职 运营 大家都来了 你还在等什么！！ 立方网 北京立方网信息技术有限公司 立方网努力尝试把许多人对互联网的需求从现有的娱乐、资讯和交流平台进一步引导到文化与生活伴侣的方面. 拉勾网-最专业的互联网招聘平台"
	name="keywords">
<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
	var ctx = "h";
	console.log(1);
</script>
<link rel="Shortcut Icon" href="h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="style/css/style.css" />
<link rel="stylesheet" type="text/css" href="style/css/external.min.css" />
<link rel="stylesheet" type="text/css" href="style/css/popup.css" />
<%-- <script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script> --%>
<%-- <script type="text/javascript" src="style/js/jquery.lib.min.js"></script> --%>
<%-- <script src="style/js/ajaxfileupload.js" type="text/javascript"></script> --%>
<%-- <script src="style/js/jquery-hbzx.js" type="text/javascript"></script> --%>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
	var youdao_conv_id = 271546;
</script>
<script type="text/javascript" src="style/js/conv.js"></script>
</head>
<body>
	<div id="body">
		<div id="header">
			<div id="header">
				<div class="wrapper">
					<a href="../index.html" class="logo"> <img
						src="../images/logo.png" width="229" height="43"
						alt="拉勾招聘-专注互联网招聘" />
					</a>
					<ul class="reset" id="navheader">
						<li><a href="../index.html">首页</a></li>
						<li><a href="create.html">发布职位</a></li>
						<li class="current"><a
							href="http://localhost:8080/BigCreate/ListPosition"
							>找工作</a></li>
						<li><a href="about.html">关于我们</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- end #header -->
		<div id="container" style="margin-left: 350px;">
			<div class="clearfix">
				<div class="content_l">
					<dl class="job_detail">
						<dt>
							<h1 title="内容运营">
								<em></em>
								<div>${position.department }招聘</div>
								${position.positionName }
							</h1>

							<a class="inline jd_collection" href="#loginPop" title="登录">
							</a>
						</dt>
						<dd class="job_request">
							<span class="red">${position.salaryMin }k-${position.salaryMax }k</span>
							<span>${position.workAddress }</span> <br /> 职位诱惑 :
							${position.positionAdvantage }
							<div>发布时间：${position.createDate }</div>
						</dd>
						<dd class="job_bt">
							<h3 class="description">职位描述</h3>
							${position.jobDescription }
						</dd>



						<dd>
							<a href="create_resume.html?positionId=${id}"
								class="inline btn fr btn_apply">投个简历</a>
						</dd>
					</dl>
					<div id="weibolist"></div>
				</div>

			</div>
			<div style="background: #91cebe; width: 679px; height:50px; line-height: 50px; color: white; font-family: 微软雅黑; font-size: 20px;;">他们应聘了此职位</div>
			<ul class="reset resumeLists" style="width:679px;">
				<s:iterator value="resumes" var="resume">
					<li data-id="1686182" class="onlineResume">
					</label>
						<div class="resumeShow">
							<a title="预览在线简历" target="_blank" class="resumeImg"
								href="resumeView.html?deliverId=1686182"> <img
								src="style/images/default_headpic.png">
							</a>
							<div class="resumeIntro">
								<h3 class="unread">
									<a target="_blank" title="预览jason的简历"
										href="http://localhost:8080/BigCreate/ResumeDetail?id=${id }">${name } </a> <em></em>
								</h3>
								<span class="fr">投递时间：${date }</span>
								<div>
									${name } / ${age } / ${background } <br>  ${background } ·
									${school }
								</div>
								<div class="jdpublisher"></div>
							</div>

						
						<div class="contactInfo">
							<span class="c9">电话：</span>${phone } &nbsp;&nbsp;&nbsp; <span
								class="c9">邮箱：</span><a href="#">${email }</a>
						</div></li>
				</s:iterator>



			</ul>
			<input type="hidden" value="" name="userid" id="userid" /> <input
				type="hidden" value="" name="type" id="resend_type" /> <input
				type="hidden" value="140204" id="jobid" /> <input type="hidden"
				value="683" id="companyid" /> <input type="hidden" value=""
				id="positionLng" /> <input type="hidden" value="" id="positionLat" />

			<div id="tipOverlay"></div>
			<!-------------------------------------弹窗lightbox  ----------------------------------------->
			<div style="display: none;">
				<!-- 设置默认投递简历 -->
				<div id="setResume" class="popup" style="height: 280px;">
					<table width="100%">
						<tr>
							<td class="f18 c5">请选择你要投出去的简历：</td>
						</tr>
						<tr>
							<td>
								<form id="resumeSetForm" class="resumeSetForm">
									<label class="radio"> <input type="radio"
										name="resumeName" class="resume1" value="1" /> 在线简历： <span
										class="red">在线简历还不完善，请完善后选择投递</span>
									</label>
									<div class="setBtns">
										<a href="jianli.html" target="_blank">修改</a>
									</div>
									<div class="clear"></div>
									<label class="radio"> <input type="radio"
										name="resumeName" class="resume0" value="0" /> 附件简历： <span
										class="uploadedResume red">暂无附件简历</span>
									</label>
									<div class="setBtns">
										<a href="h/nearBy/downloadResume" class="downloadResume dn">下载</a>
										<span class="dn">|</span> <a target="_blank" title="上传附件简历"
											class="reUpload">上传附件简历</a> <input
											title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M" name="newResume"
											id="reUploadResume1" type="file"
											onchange="file_check(this,'h/nearBy/updateMyResume.json','reUploadResume1')" />
									</div>
									<div class="clear"></div>
									<span class="error" style="display: none;">只支持word、pdf、ppt、txt、wps格式文件，请重新上传</span>
									<label class="bgPink">默认使用此简历直接投递，下次不再提示</label> <span
										class="setTip error"></span> <input type="submit"
										class="btn_profile_save btn_s" value="保存设置" />
								</form>
							</td>
						</tr>
					</table>
				</div>
				<!--/#setResume-->

				<!-- 投递简历时  - 设置默认投递简历 -->
				<div id="setResumeApply" class="popup" style="height: 280px;">
					<table width="100%">
						<tr>
							<td class="f18 c5">请选择你要投出去的简历：</td>
						</tr>
						<tr>
							<td>
								<form id="resumeSendForm" class="resumeSetForm">
									<label class="radio"> <input type="radio"
										name="resumeName" class="resume1" value="1" /> 在线简历： <span
										class="red">在线简历还不完善，请完善后选择投递</span>
									</label>
									<div class="setBtns">
										<a href="jianli.html" target="_blank">修改</a>
									</div>
									<div class="clear"></div>
									<label class="radio"> <input type="radio"
										name="resumeName" class="resume0" value="0" /> 附件简历： <span
										class="uploadedResume red">暂无附件简历</span>
									</label>
									<div class="setBtns">
										<a href="h/nearBy/downloadResume" class="downloadResume dn">下载</a>
										<span class="dn">|</span> <a target="_blank" title="上传附件简历"
											class="reUpload">上传附件简历</a> <input
											title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M" name="newResume"
											id="reUploadResume2" type="file"
											onchange="file_check(this,'h/nearBy/updateMyResume.json','reUploadResume2')" />
									</div>
									<div class="clear"></div>
									<span class="error" style="display: none;">只支持word、pdf、ppt、txt、wps格式文件，请重新上传</span>
									<label class="bgPink"><input type="checkbox"
										checked="checked" />默认使用此简历直接投递，下次不再提示</label> <span
										class="setTip error"></span> <input type="submit"
										class="btn_profile_save btn_s" value="确认投递简历" />
								</form>
							</td>
						</tr>
					</table>
				</div>
				<!--/#setResumeApply-->

				<!-- 上传简历 -->
				<div id="uploadFile" class="popup">
					<table width="100%">
						<tr>
							<td align="center">
								<form>
									<a href="javascript:void(0);" class="btn_addPic"> <span>选择上传文件</span>
										<input tabindex="3"
										title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M" size="3"
										name="newResume" id="resumeUpload" class="filePrew"
										type="file"
										onchange="file_check(this,'h/nearBy/updateMyResume.json','resumeUpload')" />
									</a>
								</form>
							</td>
						</tr>
						<tr>
							<td align="left">支持word、pdf、ppt、txt、wps格式文件<br />文件大小需小于10M
							</td>
						</tr>
						<tr>
							<td align="left" style="color: #dd4a38; padding-top: 10px;">注：若从其它网站下载的word简历，请将文件另存为.docx格式后上传</td>
						</tr>
						<tr>
							<td align="center"><img src="style/images/loading.gif"
								width="55" height="16" id="loadingImg"
								style="visibility: hidden;" alt="loading" /></td>
						</tr>
					</table>
				</div>
				<!--/#uploadFile-->

				<!-- 简历上传成功 -->
				<div id="uploadFileSuccess" class="popup">
					<h4>简历上传成功！</h4>
					<table width="100%">
						<tr>
							<td align="center"><p>你可以将简历投给你中意的公司了。</p></td>
						</tr>
						<tr>
							<td align="center"><a
								href="javascript:top.location.reload();" class="btn_s">确&nbsp;定</a></td>
						</tr>
					</table>
				</div>
				<!--/#uploadFileSuccess-->

				<!-- 登录框 -->
				<div id="loginPop" class="popup" style="height: 240px;">
					<form id="loginForm">
						<input type="text" id="email" name="email" tabindex="1"
							placeholder="请输入登录邮箱地址" /> <input type="password" id="password"
							name="password" tabindex="2" placeholder="请输入密码" /> <span
							class="error" style="display: none;" id="beError"></span> <label
							class="fl" for="remember"><input type="checkbox"
							id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label>
						<a href="h/reset.html" class="fr">忘记密码？</a> <input type="submit"
							id="submitLogin" value="登 &nbsp; &nbsp; 录" />
					</form>
					<div class="login_right">
						<div>还没有拉勾帐号？</div>
						<a href="register.html" class="registor_now">立即注册</a>
						<div class="login_others">使用以下帐号直接登录:</div>
						<a href="h/ologin/auth/sina.html" target="_blank" class="icon_wb"
							title="使用新浪微博帐号登录"></a> <a href="h/ologin/auth/qq.html"
							class="icon_qq" target="_blank" title="使用腾讯QQ帐号登录"></a>
					</div>
				</div>
				<!--/#loginPop-->

				<!-- 投简历成功前填写基本信息 -->
				<style>
#cboxContent {
	overflow: visible;
}

#colorbox, #cboxOverlay, #cboxWrapper {
	overflow: visible;
}
</style>
				<div id="infoBeforeDeliverResume" class="popup"
					style="height: 300px; overflow: visible;">
					<div class="f18">为方便所投递企业HR查阅，请确认个人信息</div>
					<form id="basicInfoForm" method="post">
						<table width="100%">
							<tr>
								<td valign="middle"><span class="redstar">*</span></td>
								<td><input type="text" name="name" placeholder="姓名" /></td>
								<td valign="middle"><span class="redstar">*</span></td>
								<td><input type="hidden" name="degree" value="" id="degree" />
									<input type="button"
									class="profile_select_190 profile_select_normal"
									id="select_degree" value="最高学历" />
									<div id="box_degree" class="boxUpDown boxUpDown_190 dn"></div>
								</td>
							</tr>
							<tr>
								<td valign="middle"><span class="redstar">*</span></td>
								<td><input type="hidden" name="workyear" value=""
									id="workyear" /> <input type="button"
									class="profile_select_190 profile_select_normal"
									id="select_workyear" value="工作年限" />
									<div id="box_workyear" class="boxUpDown boxUpDown_190 dn"></div>
								</td>
								<td valign="middle"><span class="redstar">*</span></td>
								<td><input type="hidden" name="expectCity" value=""
									id="expectCity" /> <input type="button"
									class="profile_select_190 profile_select_normal"
									id="select_expectCity" value="期望工作城市" />
									<div id="box_expectCity" class="boxUpDown boxUpDown_596 dn"></div>
								</td>
							</tr>
							<tr>
								<td valign="middle"><span class="redstar">*</span></td>
								<td><input type="text" name="tel" placeholder="联系电话" /></td>
								<td valign="middle"><span class="redstar">*</span></td>
								<td><input type="text" name="email" placeholder="邮箱地址" />
								</td>
							</tr>
							<tr>
								<td></td>
								<td colspan="3"><input type="hidden" name="type" value="" />
									<input type="submit" class="btn" value="确认并投递" /></td>
							</tr>
						</table>
					</form>
				</div>
				<!--/#infoBeforeDeliverResume-->

				<!-- 上传附件简历操作说明-重新上传 -->
				<div id="fileResumeUpload" class="popup">
					<table width="100%">
						<tr>
							<td>
								<div class="f18 mb10">请上传标准格式的word简历</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="f16">
									操作说明：<br /> 打开需要上传的文件 - 点击文件另存为 - 选择.docx - 保存
								</div>
							</td>
						</tr>
						<tr>
							<td align="center"><a class="inline btn" href="#uploadFile"
								title="上传附件简历">重新上传</a></td>
						</tr>
					</table>
				</div>
				<!--/#fileResumeUpload-->

				<!-- 上传附件简历操作说明-重新上传 -->
				<div id="fileResumeUploadSize" class="popup">
					<table width="100%">
						<tr>
							<td>
								<div class="f18 mb10">上传文件大小超出限制</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="f16">
									提示：<br /> 单个附件不能超过10M，请重新选择附件简历！
								</div>
							</td>
						</tr>
						<tr>
							<td align="center"><a class="inline btn" href="#uploadFile"
								title="上传附件简历">重新上传</a></td>
						</tr>
					</table>
				</div>
				<!--/#deliverResumeConfirm-->

				<!-- 投简历成功前二次确认 -->
				<div id="deliverResumeConfirm" class="popup">
					<table width="100%">
						<tr>
							<td class="msg">
								<div class="f18">你的简历中：</div>
								<div class="f16 count">
									<span class="f18 confirm_field">学历、工作年限、期望工作城市</span>与该职位要求不匹配，确认要投递吗？
								</div>
							</td>
						</tr>
						<tr>
							<td align="center"><input type="hidden" name="type" value="" />
								<a href="javascript:sendResume(,140204,true,true);" class="btn">确认投递</a>
								<a href="javascript:;" class="btn_s">放弃投递</a> <a
								href="javascript:;" class="f20 edit_field">修改信息</a></td>
						</tr>
					</table>
				</div>
				<!--/#deliverResumeConfirm-->

				<!-- 投简历成功 -->
				<div id="deliverResumesSuccess" class="popup"
					style="width: 440px; padding-bottom: 10px;">
					<table width="100%">
						<tr class="drawGGJ">
							<td align="center">
								<p class="font_16 count"></p>
								<p class="font_16 share dn">
									邀请好友成功注册拉勾，可提升每日投递量 &nbsp;&nbsp; <a href="h/share/invite.html"
										target="_blank">邀请好友>></a>
								</p>
							</td>
						</tr>
						<tr class="drawQD">
							<td align="center"><a
								href="javascript:top.location.reload();" class="btn_s">确&nbsp;定</a></td>
						</tr>
						<tr class="weixinQR dn">
							<td>
								<div class="weixin">
									<div class="qr">
										<img src="" width="120" height="120" />

										<div>[仅限本人使用]</div>
									</div>
									<div class="qr_text">
										想知道HR是否看过你的简历？<br /> 想在微信中收到面试通知？<br /> <span><<
											微信扫一扫，一并解决</span>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<!--/#deliverResumesSuccess-->

				<!-- 投递时，一个简历都没有弹窗 -->
				<div id="sendNoResume" class="popup">
					<table width="100%">
						<tr>
							<td class="f18 c5" align="center">你还没有可以投递的简历呢</td>
						</tr>
						<tr>
							<td class="c5" align="center">请上传附件简历或填写在线简历后再投递吧~</td>
						</tr>
						<tr>
							<td align="center">
								<form>
									<a href="javascript:void(0);" class="btn_addPic"> <span>选择上传文件</span>
										<input title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M" size="3"
										name="newResume" id="resumeUpload2" class="filePrew"
										type="file"
										onchange="file_check(this,'h/nearBy/updateMyResume.json','resumeUpload2')" />
									</a>
								</form> <a class="btn" href="jianli.html" target="_blank">完善在线简历</a>
							</td>
						</tr>
					</table>
				</div>
				<!--/#sendNoResume-->

				<!-- 没有简历请上传 -->
				<div id="deliverResumesNo" class="popup">
					<table width="100%">
						<tr>
							<td align="center"><p class="font_16">你在拉勾还没有简历，请先上传一份</p></td>
						</tr>
						<tr>
							<td align="center">
								<form>
									<a href="javascript:void(0);" class="btn_addPic"> <span>选择上传文件</span>
										<input title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M" size="3"
										name="newResume" id="resumeUpload1" class="filePrew"
										type="file"
										onchange="file_check(this,'h/nearBy/updateMyResume.json','resumeUpload1')" />
									</a>
								</form>
							</td>
						</tr>
						<tr>
							<td align="center">支持word、pdf、ppt、txt、wps格式文件，大小不超过10M</td>
						</tr>
					</table>
				</div>
				<!--/#deliverResumesNo-->

				<!--
    	激活邮箱
		登录邮箱未验证时，
	 	点击上传附件简历、申请职位、订阅职位、发布职位出现该弹窗
	-->
				<div id="activePop" class="popup" style="height: 240px;">
					<h4>登录邮箱未验证</h4>
					<p>请验证你的登录邮箱以使用拉勾网的所有功能！</p>
					<p>
						我们已将验证邮件发送至：<a></a>，请点击邮件内的链接完成验证。
					</p>
					<p>
						<a href="javascript:void(0)" id="resend">重新发送验证邮件 </a> | <a
							href="register.html" target="_blank"> 换个邮箱？ </a>
					</p>
				</div>
				<!--/#activePop-->

				<!--
    	激活邮箱
		验证邮件发送成功弹窗
	-->
				<div id="resend_success" class="popup">
					<p>
						我们已将激活邮件发送至：<a></a>，请点击邮件内的链接完成验证。
					</p>
				</div>
				<!--/#resend_success-->

				<!--地图弹窗-->
				<div id="baiduMap" class="popup">
					<div id="allmap"></div>
				</div>
				<!--/#baiduMap-->
			</div>
			<!------------------------------------- end ----------------------------------------->

			<script type="text/javascript" src="style/js/job_detail.js"></script>
			<script type="text/javascript" src="style/js/count.js"></script>

			<script>
				$(function() {
					$('#weibolist .cookietxte').text('推荐本职位给好友');
					$(document).bind('cbox_complete', function() {
						hbzxJQ("#gaosutapt .pttui a").trigger("click");
						hbzxJQ("#mepingpt .pttui a").trigger("click");
					});
					$('#cboxOverlay').bind('click', function() {
						top.location.reload();
					});
					$('#colorbox')
							.on(
									'click',
									'#cboxClose',
									function() {
										if ($(this).siblings(
												'#cboxLoadedContent').children(
												'div').attr('id') == 'deliverResumesSuccess'
												|| $(this).siblings(
														'#cboxLoadedContent')
														.children('div').attr(
																'id') == 'uploadFileSuccess') {
											top.location.reload();
										}
									});
				})
			</script>

			<script type="text/javascript"
				src="http://api.map.baidu.com/api?v=2.0&ak=3d6a9f4b807441569414b01eecc20959"></script>
			<script type="text/javascript">
				//百度地图API功能
				var sMap = new BMap.Map("smallmap");
				sMap.enableScrollWheelZoom(true);

				if ($('#positionLat').val() && $('#positionLng').val()) {
					var sPoint = new BMap.Point($('#positionLng').val(), $(
							'#positionLat').val());
					sMap.centerAndZoom(sPoint, 12);
					sMap.addOverlay(new BMap.Marker(sPoint)); // 将标注添加到地图中

				} else {
					// 创建地址解析器实例
					var sMyGeo = new BMap.Geocoder();
					// 将地址解析结果显示在地图上,并调整地图视野
					sMyGeo.getPoint("武汉市武昌区螃蟹岬凤凰大厦A1-1301", function(sPoint) {
						if (sPoint) {
							sMap.centerAndZoom(sPoint, 16);
							sMap.addOverlay(new BMap.Marker(sPoint));
						}
					}, "武汉");
				}

				/*弹窗大地图*/
				var map = new BMap.Map("allmap");
				map.addControl(new BMap.NavigationControl());
				map.addControl(new BMap.MapTypeControl());
				map.addControl(new BMap.OverviewMapControl());
				map.enableScrollWheelZoom(true);
				// 创建地址解析器实例
				var gc = new BMap.Geocoder();
				$(function() {
					$('#mapPreview')
							.bind(
									'click',
									function() {
										$.colorbox({
											inline : true,
											href : "#baiduMap",
											title : "公司地址"
										});
										var address = "武汉市武昌区螃蟹岬凤凰大厦A1-1301";
										var city = "武汉";
										var lat = $('#positionLat').val();
										var lng = $('#positionLng').val();
										map.setCurrentCity(city);
										map.setZoom(12);
										if (lat && lng) {
											var p = new BMap.Point(lng, lat);
											var marker = new BMap.Marker(p); // 创建标注
											map.addOverlay(marker); // 将标注添加到地图中
											setTimeout(function() {
												map.centerAndZoom(p, 15);
											}, 1000);
											map.setCenter(p);
											map.setZoom(15);
											var sContent = "<h4 style='margin:0 0 5px 0;padding:0.2em 0'>"
													+ city
													+ "</h4>"
													+ "<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>"
													+ address
													+ "</p>"
													+ "</div>";
											var infoWindow = new BMap.InfoWindow(
													sContent); // 创建信息窗口对象
											//图片加载完毕重绘infowindow
											marker.openInfoWindow(infoWindow);
										} else {
											gc
													.getPoint(
															address,
															function(point) {
																if (point) {
																	var p = new BMap.Point(
																			point.lng,
																			point.lat);
																	var marker = new BMap.Marker(
																			p); // 创建标注
																	map
																			.addOverlay(marker); // 将标注添加到地图中
																	setTimeout(
																			function() {
																				map
																						.centerAndZoom(
																								p,
																								15);
																			},
																			1000);
																	map
																			.setZoom(14);
																	var sContent = "<h4 style='margin:0 0 5px 0;padding:0.2em 0'>"
																			+ city
																			+ "</h4>"
																			+ "<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>"
																			+ address
																			+ "</p>"
																			+ "</div>";
																	var infoWindow = new BMap.InfoWindow(
																			sContent); // 创建信息窗口对象
																	//图片加载完毕重绘infowindow
																	marker
																			.openInfoWindow(infoWindow);
																}
															}, city);
										}

									});

				});
			</script>
			<div class="clear"></div>
			<input type="hidden" id="resubmitToken"
				value="6e1925fdbe7142468f154abd1d33f5a8" /> <a id="backtop"
				title="回到顶部" rel="nofollow"></a>
		</div>
		<!-- end #container -->
	</div>
	<!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a href="h/about.html" target="_blank" rel="nofollow">联系我们</a> <a
				href="h/af/zhaopin.html" target="_blank">互联网公司导航</a> <a
				href="http://e.weibo.com/lagou720" target="_blank" rel="nofollow">拉勾微博</a>
			<a class="footer_qr" href="javascript:void(0)" rel="nofollow">拉勾微信<i></i></a>
			<div class="copyright">
				&copy;2013-2014 Lagou <a target="_blank"
					href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">京ICP备14023790号-2</a>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="style/js/core.min.js"></script>
	<script type="text/javascript" src="style/js/popup.min.js"></script>

	<!--  -->

</body>
</html>