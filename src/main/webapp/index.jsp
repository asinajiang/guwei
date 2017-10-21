<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Homepage of spark</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
         
    </style>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/index.css">
    <script type="text/javascript" src="js/jquery-1.12.0.min.js"></script>
    <script type="text/javascript" src="js/jquery.color.js"></script>
    <script type="text/javascript">
        var n, count;
           $(document).ready(function() {
            //回顶部代码

            $(window).scroll(function() {
                var len = $(document).scrollTop();
                if (len > 40) {
                    $("#reTop").removeClass("reTop");
                } else {
                    $("#reTop").addClass("reTop");
                }
            });
            $("#sideboxyincang").hide();

        });



        //tab分页部分的Javascript代码
        function ownclick(n) {
            var countTab = $("#tabs li").length;
            var i = 0;
            while (i < countTab) {
                if (i == n) {

                    $("#tabs li").eq(i).addClass("tabons");
                    $("#tabpage div").eq(i).fadeIn(2);
                } else {

                    $("#tabs li").eq(i).removeClass("tabons");
                    $("#tabpage div").eq(i).fadeOut(2);
                }
                i++;
            }
        }
        
      //tabyincang分页部分的Javascript代码
        function ownclickyincang(m) {
            var countTabyincang = $("#tabsyincang li").length;
            var j = 0;
            while (j < countTabyincang) {
                if (j == m) {

                    $("#tabsyincang li").eq(j).addClass("tabonsyincang");
                    $("#tabpageyincang div").eq(j).fadeIn(2);
                } else {

                    $("#tabsyincang li").eq(j).removeClass("tabonsyincang");
                    $("#tabpageyincang div").eq(j).fadeOut(2);
                }
                j++;
            }
        }
        
        function cornerBtn(){
        	$("#sideboxyincang").toggle();
        }
        

        function tetTop() {

            var s = $(document).scrollTop();
            while (s > 0) {
                $(this).animate($(document).scrollTop(s--), 3000);
            }
        }
    </script>
  </head>
  
  
  <body>
    <button id="cornerBtn" ondblclick="cornerBtn()"></button>
    <div id="topbox">
        <img class="topboxpic" src="<%=path%>/images/nightsky.jpg" />
    </div>
    <div style="float:left; width:600px;">
		<form action="http://www.baidu.com/baidu" target="_blank">
			<input name=tn type=hidden value=baidu/>
			<a href="http://www.baidu.com/" ><img src="http://img.baidu.com/img/logo-80px.gif" alt="Baidu" align="bottom" border="0"></a>
			<input type=text name=word size=30/>
			<input type="submit" value="百度搜索"/>
		</form>
	</div>
	
	<div>
		<FORM method=GET action="http://www.google.com/search" target="_blank">
			<A HREF="http://www.google.com" target="_blank">
			<IMG SRC="http://www.google.com/logos/Logo_40wht.gif" border="0" ALT="Google" align="absmiddle"></A>
			<INPUT TYPE=text name=q size=31 maxlength=255 value="">
			<INPUT TYPE=hidden name=hl  value=zh-CN>
			<INPUT type=submit name=btnG  value="Google搜索">
		</FORM>
	</div>


    <div id="sidebox">
        <!--tab分页标签-->
        <div id="tabcontent">
            <div id="tar_bar">
                <ul id="tabs">
                    <li id="tab1" onclick="ownclick(0)" class="tabons">最大点击</li>
                    <li id="tab2" onclick="ownclick(1)">JAVA</li>
                    <li id="tab3" onclick="ownclick(2)">资源汇总</li>
                    <li id="tab3" onclick="ownclick(3)">华科系列</li>
                    <li id="tab3" onclick="ownclick(4)">生活相关</li>
                    <li id="tab3" onclick="ownclick(5)">娱乐系列</li>
                    <li id="tab3" onclick="ownclick(6)">日常关注</li>
                    <li id="tab3" onclick="ownclick(7)">其他</li>
                    <li id="tab3" onclick="ownclick(8)">休闲论坛</li>
                    <li id="tab3" onclick="ownclick(9)">日语、ps等学习</li>
                    
                </ul>
            </div>
            <div>
                <ul id="tabpage" style="margin: 0; padding: 0;">
                    <div class="tabcss" id="page1" style="display: inline-block;" value="最大点击">
                        <ul class="pages">
                        	<table>
								<tr class="biaoge">
									<td><a href="#">test1</a></td>
									<td><a href="#">test2</a></td>
									<td><a href="#">test3</a></td>
									<td><a href="#">test4</a></td>
									<td><a href="#">test5</a></td>
									<td><a href="#">test6</a></td>
									<td><a href="#">test7</a></td>
								</tr>
								<tr  class="biaoge">
									<td><a href="#">test1</a></td>
									<td><a href="#">test1</a></td>
									<td><a href="#">test1</a></td>
									<td><a href="#">test1</a></td>
									<td><a href="#">test1</a></td>
									<td><a href="#">test1</a></td>
									<td><a href="#">test1</a></td>
								</tr>
							</table>
                        </ul>
                    </div>
                    <div class="tabcss" id="page2"  value="JAVA">
                        <ul class="pages">
                            <table>
								<tr class="biaoge">
									<td><a href="http://tool.lu/coderunner/"  target="_blank">在线编译运行网</a></td>
									<td><a href="http://ifeve.com/"  target="_blank">并发编程网</a></td>
									<td><a href="http://www.importnew.com/"  target="_blank">ImportNew</a></td>
									<td><a href="http://www.infoq.com/cn/"  target="_blank">InfoQ</a></td>
									<td><a href="http://www.oschina.net/"  target="_blank">开源中国</a></td>
									<td><a href="https://www.ibm.com/developerworks/cn/"  target="_blank">IBM开发者</a></td>
									<td><a href="https://segmentfault.com/"  target="_blank">SegmentFault</a></td>
								</tr>
								<tr  class="biaoge">
									<td><a href="https://www.tuicool.com/"  target="_blank">JAVA 推酷</a></td>
									<td><a href="http://www.csdn.net/"  target="_blank">CSDN</a></td>
									<td><a href="https://www.cnblogs.com/"  target="_blank">博客园</a></td>
									<td><a href="http://www.iteye.com/"  target="_blank">ITeye</a></td>
									<td><a href="http://www.jdon.com/"  target="_blank">架构之道</a></td>
									<td><a href="http://blog.jobbole.com/"  target="_blank">伯乐在线</a></td>
									<td><a href="https://www.nowcoder.com/"  target="_blank">牛客网</a></td>
								</tr>
								<tr  class="biaoge">
									<td><a href="https://leetcode.com/"  target="_blank">Leetcode</a></td>
									<td><a href="https://www.topcoder.com/"  target="_blank">TopCoder</a></td>
									<td><a href="http://en.jsrun.net/"  target="_blank">js在线分享及运行1</a></td>
									<td><a href="http://runjs.cn/"  target="_blank">js在线分享及运行2</a></td>
									<td><a href="http://tool.oschina.net/apidocs"  target="_blank">在线API文档</a></td>
									<td><a href="http://tool.lu/"  target="_blank">CS在线工具</a></td>
									<td><a href="http://canvas.qq.com/index" title="简化html5中画图的canvas使用的网站" target="_blank">canvas</a></td>
								</tr>
								<tr  class="biaoge">
								    <td><a href="https://git-scm.com/doc"  target="_blank">Git Documentation</a></td>
								    <td><a href="#"  target="_blank">test1</a></td>
								    <td><a href="#"  target="_blank">test1</a></td>
								    <td><a href="#"  target="_blank">test1</a></td>
								    <td><a href="#"  target="_blank">test1</a></td>
								    <td><a href="#"  target="_blank">test1</a></td>
								    <td><a href="#"  target="_blank">test1</a></td>
								</tr>
							</table>
                        </ul>
                    </div>
                    <div class="tabcss" id="page3"  value="资源汇总">
                        <ul class="pages">
                            <table>
								<tr class="biaoge">
									<td><a href="http://muchong.com/bbs/index.php"  target="_blank">小木虫</a></td>
									<td><a href="http://www.pansou.com/"  target="_blank">网盘搜索</a></td>
									<td><a href="http://www.panbaidu.net/"  target="_blank">百度网盘论坛</a></td>
									<td><a href="http://book.mihua.net/"  target="_blank">米花图书下载</a></td>
									<td><a href="http://www.51pptmoban.com/"  target="_blank">51ppt模板</a></td>
									<td><a href="http://cn.linux.vbird.org/"  target="_blank">鸟哥的私房菜</a></td>
									<td><a href="http://www.nruan.com/"  target="_blank">N软网</a></td>
								</tr>
								<tr  class="biaoge">
									<td><a href="http://gqzzw.com/"  target="_blank">高清杂志网</a></td>
									<td><a href="http://www.verycd.com/"  target="_blank">电驴大全</a></td>
									<td><a href="http://www.iplaysoft.com/"  target="_blank">异次元软件世界</a></td>
									<td><a href="http://bbs.kafan.cn/"  target="_blank">卡饭论坛-软件</a></td>
									<td><a href="http://www.gpbeta.com/post/develop/sao-utils/"  target="_blank">sao风格启动</a></td>
									<td><a href="http://www.popzitizh.com/"  target="_blank">艺术字在线</a></td>
									<td><a href="https://smallpdf.com/cn"  target="_blank">pdf-X互转</a></td>
								</tr>
								<tr  class="biaoge">
									<td><a href="http://btkitty.pet/"  target="_blank">BT Kitty</a></td>
									<td><a href="https://freessr.win/"  target="_blank">免费影梭ss账号</a></td>
									<td><a href="https://uzer.me/z/apps" title="针对一些类似visio这样不常用的应用" target="_blank">云端应用-visio等</a></td>
									<td><a href="http://www.1080.net/forum.php" title="高清影视资源，电影、演唱会、电视剧等" target="_blank">1080.NET</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
							</table>
                        </ul>
                    </div>
                    <div class="tabcss" id="page4"  value="华科系列">
                        <ul class="pages">
                            <table>
								<tr class="biaoge">
									<td><a href="http://www.hust.edu.cn/"  target="_blank">华科官网</a></td>
									<td><a href="http://myself.hust.edu.cn:8080/selfservice/"  target="_blank">校园网充值</a></td>
									<td><a href="http://202.114.18.218/Main.aspx"  target="_blank">宿舍电量查询</a></td>
									<td><a href="http://122.205.9.85/xg/"  target="_blank">华科学生综合服务</a></td>
									<td><a href="http://hub.hust.edu.cn/index.jsp"  target="_blank">华科hub系统</a></td>
									<td><a href="http://fiscal.hust.edu.cn/portal/login.aspx"  target="_blank">华科网上财务平台</a></td>
									<td><a href="http://115.156.150.131/admin/"  target="_blank">光电实验室预约</a></td>
								</tr>
								<tr  class="biaoge">
									<td><a href="https://hudbt.hust.edu.cn/torrents.php"  target="_blank">华科蝴蝶</a></td>
									<td><a href="https://cms.hust.edu.cn:9999/system/caslogin.jsp;jsessionid=EA60E1B468051291008D781375270A61"  target="_blank">华科网站群管理</a></td>
									<td><a href="http://career.hust.edu.cn/default.html" title="华科研究生就业信息网" target="_blank">华科研究生就业网</a></td>
									<td><a href="http://ocr.wdku.net/" title="识别图片中的文本并保存" target="_blank">在线图文转换</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
							</table>
                        </ul>
                    </div>
                    <div class="tabcss" id="page5"  value="生活相关">
                        <ul class="pages">
                            <table>
								<tr class="biaoge">
									<td><a href="http://weibo.com/u/2881400970/home?wvr=5" target="_blank">微博</a></td>
									<td><a href="https://www.icloud.com/"  target="_blank">Apple iCloud</a></td>
									<td><a href="http://wh.meituan.com/"  target="_blank">美团</a></td>
									<td><a href="https://www.zhihu.com/"  target="_blank">知乎</a></td>
									<td><a href="http://www.mtime.com/"  target="_blank">时光网</a></td>
									<td><a href="http://wuhan.leying.com/home/index"  target="_blank">乐影网</a></td>
									<td><a href="http://www.mafengwo.cn/"  target="_blank">马蜂窝-旅游</a></td>
								</tr>
								<tr  class="biaoge">
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
							</table>
                        </ul>
                    </div>
                    <div class="tabcss" id="page6"  value="娱乐系列">
                        <ul class="pages">
                            <table>
								<tr class="biaoge">
									<td><a href="http://www.hanju.cc/hanjuxiazai/"  target="_blank">韩剧网</a></td>
									<td><a href="http://www.zimuzu.tv/"  target="_blank">YYeTs字幕组</a></td>
									<td><a href="http://www.imdb.cn/IMDB250/"  target="_blank">IMDB电影排名</a></td>
									<td><a href="http://www.dytt8.net/?qqdrsign=0203f"  target="_blank">电影天堂</a></td>
									<td><a href="https://www.zhibo8.cc/zuqiu/luxiang.htm"  target="_blank">足球赛录播</a></td>
									<td><a href="http://manhua.fzdm.com/058/171/"  target="_blank">食戟之灵漫画续</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
								<tr  class="biaoge">
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
							</table>
                        </ul>
                    </div>
                    <div class="tabcss" id="page7"  value="日常关注">
                        <ul class="pages">
                            <table>
								<tr class="biaoge">
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
								<tr  class="biaoge">
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
							</table>
                        </ul>
                    </div>
                    <div class="tabcss" id="page8"  value="其他">
                        <ul class="pages">
                            <table>
								<tr class="biaoge">
									<td><a href="http://www.open-open.com/news/view/9d8136" title="挺有意思，注意用Chrome浏览器" target="_blank">WebGL示例</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
								<tr  class="biaoge">
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
							</table>
                        </ul>
                    </div>
                    <div class="tabcss" id="page9"  value="休闲论坛">
                        <ul class="pages">
                            <table>
								<tr class="biaoge">
									<td><a href="http://bbs.whnet.edu.cn/main.html"  target="_blank">白云黄鹤</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
								<tr  class="biaoge">
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
							</table>
                        </ul>
                    </div>
                    <div class="tabcss" id="page10"  value="日语、ps等学习">
                        <ul class="pages">
                            <table>
								<tr class="biaoge">
									<td><a href="http://www.jpwind.com/#!/index"  target="_blank">和风日语网校</a></td>
									<td><a href="http://www.ribenyu.cn/home.php"  target="_blank">日语家园</a></td>
									<td><a href="http://www.51voa.com/"  target="_blank">美国之音voa</a></td>
									<td><a href="http://www.wwenglish.org/"  target="_blank">旺旺英语</a></td>
									<td><a href="http://www.putclub.com/"  target="_blank">普特英语</a></td>
									<td><a href="http://www.languageweb.net/japanese.html"  target="_blank">速读日语</a></td>
									<td><a href="https://www.nhk.or.jp/lesson/chinese/"  target="_blank">简明日语</a></td>
								</tr>
								<tr  class="biaoge">
									<td><a href="http://bulo.hujiang.com/"  target="_blank">沪江部落</a></td>
									<td><a href="http://riyu.net/"  target="_blank">日语网</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
								<tr  class="biaoge">
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
							</table>
                        </ul>
                    </div>
                      
                </ul>
            </div>
        </div>
    </div>
    
    
    <!-- 隐藏部分begin -->
    <div id="sideboxyincang">
        <!--tab分页标签-->
        <div id="tabcontentyincang">
            <div id="tar_baryincang">
                <ul id="tabsyincang">
                    <li id="tab1" onclick="ownclickyincang(0)" class="tabonsyincang">在线视频网</li>
                    <li id="tab2" onclick="ownclickyincang(1)">BT搜索及资源</li>
                    <li id="tab3" onclick="ownclickyincang(2)">浏览型网站</li>
                    <li id="tab3" onclick="ownclickyincang(3)">照片网站</li>
                    <li id="tab3" onclick="ownclickyincang(4)">综合导航网</li>
                    <li id="tab3" onclick="ownclickyincang(5)">其他</li>
                    <li id="tab3" onclick="ownclickyincang(6)">在线视频网2</li>
                    <li id="tab3" onclick="ownclickyincang(7)">在线视频网3</li>
                    <li id="tab3" onclick="ownclickyincang(8)">直播</li>
                    <li id="tab3" onclick="ownclickyincang(9)">空5</li>
                    
                </ul>
            </div>
            <div>
                <ul id="tabpageyincang" style="margin: 0; padding: 0;">
                    <div class="tabcssyincang" id="page1" style="display: inline-block;" value="在线视频网">
                        <ul class="pagesyincang">
                        	<table>
								<tr class="biaogeyincang">
									<td><a href="http://www.pornhub.com"  target="_blank">PornHub网</a></td>
									<td><a target="_blank" href="http://www.xvideos.com/">xVideos</a></td>
									<td><a target="_blank" href="http://xhamster.com/">xHamster</a></td>
									<td><a target="_blank" href="http://www.xnxx.com/">XNXX</a></td>
									<td><a target="_blank" href="http://www.youporn.com/">YouPorn</a></td>
									<td><a target="_blank" href="http://www.youjizz.com/">YouJizz</a></td>
									<td><a target="_blank" href="http://www.hclips.com/">HClips</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a target="_blank" href="https://www.tnaflix.com/">TnaFlix</a></td>
									<td><a target="_blank" href="http://www.tube8.com/">Tube8</a></td>
									<td><a target="_blank" href="http://spankbang.com/">Spankbang</a></td>
									<td><a target="_blank" href="http://www.drtuber.com/">DrTuber</a></td>
									<td><a target="_blank" href="http://www.spankwire.com/">Spankwire</a></td>
									<td><a target="_blank" href="http://www.keezmovies.com/">KeezMovies</a></td>
									<td><a target="_blank" href="http://www.nuvid.com/">Nuvid</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a target="_blank" href="http://www.sunporno.com/">SunPorno</a></td>
									<td><a target="_blank" href="http://www.bravotube.net/">BravoTube</a></td>
									<td><a target="_blank" href="http://www.pornhd.com/">PornHD</a></td>
									<td><a target="_blank" href="http://www.eporner.com/">Eporner</a></td>
									<td><a target="_blank" href="https://www.sexvid.xxx/">SexVid</a></td>
									<td><a target="_blank" href="http://xxxbunker.com/">XXXBunker</a></td>
									<td><a target="_blank" href="http://www.thenewporn.com/">TheNewPorn</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a target="_blank" href="http://www.mofosex.com/">Mofosex</a></td>
									<td><a target="_blank" href="http://www.porndreamer.com/">PornDreamer</a></td>
									<td><a target="_blank" href="http://www.x18.xxx/">X18</a></td>
									<td><a target="_blank" href="http://xbabe.com/">Xbabe</a></td>
									<td><a target="_blank" href="http://www.updatetube.com/">UpdateTube</a></td>
									<td><a target="_blank" href="http://www.befuck.com/">BeFuck</a></td>
									<td><a target="_blank" href="http://www.hdmovz.com/">Hdmovz</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a target="_blank" href="https://www.pornrox.com/">PornRox</a></td>
									<td><a target="_blank" href="http://pornmaki.com/">PornMaki</a></td>
									<td><a target="_blank" href="https://www.pornid.xxx/">Pornid</a></td>
									<td><a target="_blank" href="http://topfreepornvideos.com/">TopFreePornVideos</a></td>
									<td><a target="_blank" href="http://www.slutload.com/">Slutload</a></td>
									<td><a target="_blank" href="http://www.proporn.com/">ProPorn</a></td>
									<td><a target="_blank" href="https://www.fakeporn.tv/">FakePorn</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a target="_blank" href="http://www.pornhost.com/">Pornhost</a></td>
									<td><a target="_blank" href="http://www.handjobhub.com/">HandjobHub</a></td>
									<td><a target="_blank" href="http://www.myxvids.com/">MyXVids</a></td>
									<td><a target="_blank" href="http://www.pornicom.com/">Pornicom</a></td>
									<td><a target="_blank" href="http://www.dansmovies.com/">DansMovies</a></td>
									<td><a target="_blank" href="http://www.wetplace.com/">Wetplace</a></td>
									<td><a target="_blank" href="http://adultfreex.com/home/">AdultFreex</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a target="_blank" href="http://www.wankflix.com/">Wankflix</a></td>
									<td><a target="_blank" href="http://www.88fuck.com/">88fuck</a></td>
									<td><a target="_blank" href="http://fapdu.com/">Fapdu</a></td>
									<td><a target="_blank" href="http://rude.com/">Rude</a></td>
									<td><a target="_blank" href="http://www.freudbox.com/">FreudBox</a></td>
									<td><a target="_blank" href="https://adultinc.com/">AdultInc</a></td>
									<td><a target="_blank" href="http://www.pornheed.com/">PornHeed</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a target="_blank" href="http://www.hdporn.net/">HdPorn</a></td>
									<td><a target="_blank" href="http://www.orgasm.com/">Orgasm</a></td>
									<td><a target="_blank" href="http://www.pornrabbit.com/">PornRabbit</a></td>
									<td><a target="_blank" href="http://www.madthumbs.com/">MadThumbs</a></td>
									<td><a target="_blank" href="http://www.fux.com/">Fux</a></td>
									<td><a target="_blank" href="http://www.eroxia.com/">Eroxia</a></td>
									<td><a target="_blank" href="http://www.deviantclip.com/">DeviantClip</a></td>
								</tr>
							</table>
                        </ul>
                    </div>
                    <div class="tabcssyincang" id="page2"  value="BT搜索及资源">
                        <ul class="pagesyincang">
                            <table>
								<tr class="biaogeyincang">
									<td><a href="http://pornolab.net/forum/index.php " target="_blank ">pornolab</a></td>
									<td><a href="http://iptorrents.com/torrents/ " target="_blank ">iptorrents</a></td>
									<td><a href="http://rarbg.com/torrents.php?category=4 " target="_blank ">rarbg</a></td>
									<td><a href="http://www.pussytorrents.org/ " target="_blank ">pussytorrents</a></td>
									<td><a href="http://www.bootytape.com/ " target="_blank ">bootytape</a></td>
									<td><a href="http://www.cilisoba.net/"  target="_blank">CiLiBaBa</a></td>
									<td><a href="http://www.bt177.org/"  target="_blank">BT177</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a href="http://www.torrentso.org/cn/"  target="_blank">Torrent so</a></td>
									<td><a href="https://www.ziyuanmao.com/#/home"  target="_blank">资源猫搜索</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
							</table>
                        </ul>
                    </div>
                    
                    <div class="tabcssyincang" id="page4"  value="浏览型网站">
                        <ul class="pagesyincang">
                            <table>
								<tr class="biaogeyincang">
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
							</table>
                        </ul>
                    </div>
                    <div class="tabcssyincang" id="page5"  value="照片网站">
                        <ul class="pagesyincang">
                            <table>
								<tr class="biaogeyincang">
									<td><a href="http://www.erotica7.com/ " target="_blank ">erotica7</a></td>
									<td><a href="http://stufferdb.com/ " target="_blank ">stufferdb</a></td>
									<td><a href="http://www.sexforums.com/gallery/ " target="_blank ">sexforums</a></td>
									<td><a href="http://imagearn.com/ " target="_blank ">imagearn</a></td>
									<td><a href="http://www.totallynsfw.com/ " target="_blank ">totallynsfw</a></td>
									<td><a href="http://anotherpornblog.tumblr.com/ " target="_blank ">anotherpornblog</a></td>
									<td><a href="http://www.thongsaroundtheworld.com/ " target="_blank ">TATV</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a href="http://www.dirtyrottenwhore.com/ " target="_blank ">dirtyrottenwhore</a></td>
									<td><a href="http://apina.biz/ " target="_blank ">apina</a></td>
									<td><a href="http://www.babe-lounge.com/ " target="_blank ">babe-lounge</a></td>
									<td><a href="http://fuskator.com/ " target="_blank ">fuskator</a></td>
								</tr>
							</table>
                        </ul>
                    </div>
                    <div class="tabcssyincang" id="page6"  value="综合导航网">
                        <ul class="pagesyincang">
                            <table>
								<tr class="biaogeyincang">
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
							</table>
                        </ul>
                    </div>
                    <div class="tabcssyincang" id="page7"  value="其他">
                        <ul class="pagesyincang">
                            <table>
								<tr class="biaogeyincang">
									<td><a href="http://clickme.net/ " target="_blank ">ClickMe</a></td>
									<td><a target="_blank" href="http://www.thisav.com/">thisav</a></td>
									<td><a target="_blank" href="http://www.wokao.co/">wokao</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
							</table>
                        </ul>
                    </div>
                    <div class="tabcssyincang" id="page8"  value="在线视频网2">
                        <ul class="pagesyincang">
                            <table>
								<tr class="biaogeyincang">
									<td><a target="_blank" href="http://h2porn.com/">H2porn</a></td>
									<td><a target="_blank" href="http://porn-wanted.com/">Porn-Wanted</a></td>
									<td><a target="_blank" href="http://www.apetube.com/">ApeTube</a></td>
									<td><a target="_blank" href="http://www.metaporn.com/">MetaPorn</a></td>
									<td><a target="_blank" href="http://www.yourlustmovies.com/">YourLustMovies</a></td>
									<td><a target="_blank" href="http://www.elephanttube.com/">ElephantTube</a></td>
									<td><a target="_blank" href="http://long.xxx/">Long</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a target="_blank" href="http://www.pornerbros.com/">PornerBros</a></td>
									<td><a target="_blank" href="http://www.tubegalore.com/">Tubegalore</a></td>
									<td><a href="http://pron.tv/" target="_blank">pronTV</a></td>
									<td><a href="http://pornplanner.com/" target="_blank">pornPlanner</a></td>
									<td><a href="http://mypornbible.com/" target="_blank">MyPornBible</a></td>
									<td><a href="https://fappingclub.com/" target="_blank">FappingClub</a></td>
									<td><a href="http://www.badjojo.com/" target="_blank">badjojo</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a href="http://findtubes.com/" target="_blank">findtubes</a></td>
									<td><a href="http://www.lasmejoreswebsporno.com/en/" target="_blank">lasmejoreswebsporno</a></td>
									<td><a href="http://www.pornmd.com/" target="_blank">pornmd</a></td>
									<td><a href="http://www.nudevista.com/" target="_blank">nudevista</a></td>
									<td><a href="http://adultvideofinder.com/" target="_blank">adultvideofinder</a></td>
									<td><a href="http://www.youramateurporn.com/" target="_blank">youramateurporn</a></td>
									<td><a href="https://www.watchmyexgf.net/" target="_blank">watchmyexgf</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a href="https://watchmygf.cc/" target="_blank">watchmygf</a></td>
									<td><a href="http://fantasti.cc/" target="_blank">fantasti</a></td>
									<td><a href="http://www.watchmygf.me/" target="_blank">watchmygf.ee</a></td>
									<td><a href="http://join.thestripperexperience.com/track/NzkyLjUuMTMuMjkuMC4wLjAuMC4w" target="_blank">sripperexperience</a></td>
									<td><a href="http://www.iknowthatgirl.com/tour4/?ats=eyJhIjoxMDc0NCwiYyI6NDQ3NDc0ODgsIm4iOjE1LCJzIjoxODEsImUiOjU4NSwicCI6MTF9" target="_blank">iknowthatgirl</a></td>
									<td><a href="http://www.bigmouthfuls.com/t1/pps=mattew69/" target="_blank">bigmouthfuls</a></td>
									<td><a href="http://join.spizoo.com/track/NzkyLjcuMTIuMjguMC4wLjAuMC4w" target="_blank">spizoo</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a href="http://www.daredorm.com/main.htm?id=mattew69" target="_blank">daredorm</a></td>
									<td><a href="http://www.crazycollegegfs.com/main.htm?id=mattew69" target="_blank">crazycollegegfs</a></td>
									<td><a href="http://www.pervsonpatrol.com/default/?ats=eyJhIjoxMDc0NCwiYyI6NDQ3NDc0ODgsIm4iOjE1LCJzIjoxODMsImUiOjU0OCwicCI6MTF9" target="_blank">pervsonpatrol</a></td>
									<td><a href="http://www.streetblowjobs.com/main.htm?id=mattew69" target="_blank">streetblowjobs</a></td>
									<td><a href="http://www.extremetube.com/" target="_blank">extremetube</a></td>
									<td><a href="http://www.zzcartoon.com/" target="_blank">zzcartoon</a></td>
									<td><a href="http://hentaihaven.org/" target="_blank">hentaihaven</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a href="http://www.simply-hentai.com/" target="_blank">simply-hentai</a></td>
									<td><a href="http://hentaigasm.com/" target="_blank">hentaigasm</a></td>
									<td><a href="http://www.fakku.net/" target="_blank">fakku</a></td>
									<td><a href="http://gelbooru.com/" target="_blank">gelbooru</a></td>
									<td><a href="http://hentaipulse.com/" target="_blank">hentaipulse</a></td>
									<td><a href="http://hentaischool.com/" target="_blank">hentaischool</a></td>
									<td><a href="http://chan.sankakucomplex.com/" target="_blank">sankakucomplex</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a href="http://hentai4manga.com/" target="_blank">hentai4manga</a></td>
									<td><a href="http://www.lolhentai.net/" target="_blank">lolhentai</a></td>
									<td><a href="http://www.hentairules.net/" target="_blank">hentairules</a></td>
									<td><a href="http://www.hentai-foundry.com/" target="_blank">hentai-foundry</a></td>
									<td><a href="https://babesrater.com/" target="_blank">babesrater</a></td>
									<td><a href="http://punchpin.com/" target="_blank">punchpin</a></td>
									<td><a href="http://vintagepinupgirls.net/" target="_blank">vintagepinupgirls</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a href="http://www.lustpin.com/" target="_blank">lustpin</a></td>
									<td><a href="http://www.pornpin.com/" target="_blank">pornpin</a></td>
									<td><a target="_blank" href="http://www.porn.com/pornstars.html">Porn/Pornstars</a></td>
									<td><a target="_blank" href="http://www.yourdailypornstars.com/">YourDailyPornstars</a></td>
									<td><a target="_blank" href="http://www.babepedia.com/">Babepedia</a></td>
									<td><a target="_blank" href="http://www.kindgirls.com/">KindGirls</a></td>
									<td><a target="_blank" href="http://www.nurglesnymphs.com/">NurglesNymphs</a></td>
								</tr>
							</table>
                        </ul>
                    </div>
                    <div class="tabcssyincang" id="page9"  value="在线视频网3">
                        <ul class="pagesyincang">
                            <table>
								<tr class="biaogeyincang">
									<td><a target="_blank" href="http://thechive.com/category/girls/">TheChive</a></td>
									<td><a target="_blank" href="http://www.craveonline.com/girls">CraveOnline</a></td>
									<td><a target="_blank" href="http://www.ebaumsworld.com/categories/sexy/">EbaumsWorld</a></td>
									<td><a target="_blank" href="http://www.playindianporn.com/">PlayIndianPorn</a></td>
									<td><a target="_blank" href="http://www.viewdesisex.com/">ViewDesiSex</a></td>
									<td><a target="_blank" href="http://www.hotsouthindiansex.com/">HotSouthIndianSex</a></td>
									<td><a target="_blank" href="http://www.watchindianporn.net/">WatchIndianPorn</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a target="_blank" href="http://www.xpaja.net/">Xpaja</a></td>
									<td><a target="_blank" href="http://www.lesbian8.com/">Lesbian8</a></td>
									<td><a target="_blank" href="http://romcomics.org/">RomComics</a></td>
									<td><a target="_blank" href="https://www.kirtu.com/">Kirtu</a></td>
									<td><a target="_blank" href="http://www.efukt.com/">Efukt</a></td>
									<td><a target="_blank" href="http://69games.xxx/">69Games</a></td>
									<td><a target="_blank" href="http://gamcore.com/">GamCore</a></td>
								</tr>
								<tr class="biaogeyincang">
									<td><a target="_blank" href="https://assist.lifeselector.com/track/MTMwMzEuNDYxLjMuMy4xLjAuMC4wLjA">LifeSelector</a></td>
									<td><a target="_blank" href="http://playforceone.com/">PlayForceOne</a></td>
									<td><a target="_blank" href="http://adultfriendfinder.com/go/g1424946">Adultfinder</a></td>
									<td><a target="_blank" href="http://www.xxxdating.com/?ainfo=Mzg2MzV8MTAzfDE1NjY">XxxDating</a></td>
									<td><a target="_blank" href="http://getiton.com/go/g1417327">GetItOn</a></td>
									<td><a target="_blank" href="http://nostringsattached.com/go/g1417327">NoStringsAttached</a></td>
									<td><a target="_blank" href="http://xhookups.com/go/g1417327">Xhookups</a></td>
								</tr>
								<tr class="biaogeyincang">
									<td><a target="_blank" href="http://passion.com/go/g1424946">Passion</a></td>
									<td><a target="_blank" href="http://www.hornymatches.com/dating/visit.php?campaign_id=61385">Horny Matches</a></td>
									<td><a target="_blank" href="http://www.celebuzz.com/">CeleBuzz</a></td>
									<td><a target="_blank" href="http://perezhilton.com/">PerezHilton</a></td>
									<td><a target="_blank" href="http://www.thehollywoodgossip.com/">TheHollywoodGossip</a></td>
									<td><a target="_blank" href="http://www.justjared.com/">JustJared</a></td>
									<td><a target="_blank" href="http://www.laineygossip.com/">LaineyGossip</a></td>
								</tr>
								<tr class="biaogeyincang">
									<td><a target="_blank" href="http://hollywoodlife.com/">HollywoodLife</a></td>
									<td><a target="_blank" href="http://www.nakednews.com/">NakedNews</a></td>
									<td><a target="_blank" href="http://www.avn.com/">AVN</a></td>
									<td><a target="_blank" href="http://www.maxim.com/">Maxim</a></td>
									<td><a target="_blank" href="http://www.playboy.com/magazine">PlayBoy</a></td>
									<td><a target="_blank" href="http://www.menshealth.com/sex-women/">MensHealth</a></td>
									<td><a target="_blank" href="http://www.sexforums.com/">SexForums</a></td>
								</tr>
								<tr class="biaogeyincang">
									<td><a target="_blank" href="http://forum.xnxx.com/">Forum.Xnxx</a></td>
									<td><a target="_blank" href="http://www.pornbb.org/">Pornbb</a></td>
									<td><a target="_blank" href="http://forumophilia.com/">ForumOphilia</a></td>
									<td><a target="_blank" href="http://www.freeones.com/">FreeOnes</a></td>
									<td><a target="_blank" href="http://forum.oneclickchicks.com/">OneClickChicks</a></td>
									<td><a target="_blank" href="http://peachyforum.com/">PeachyForum</a></td>
									<td><a target="_blank" href="http://www.ixxx.com/">iXXX</a></td>
								</tr>
								<tr class="biaogeyincang">
									<td><a target="_blank" href="https://www.empflix.com/">empflix</a></td>
									<td><a target="_blank" href="http://www.newbigtube.com/en/">newbigtube</a></td>
									<td><a target="_blank" href="http://www.eskimotube.com/">eskimotube</a></td>
									<td><a target="_blank" href="https://www.porn.com/">porn</a></td>
									<td><a target="_blank" href="http://www.hustlertube.com/stxt_index.php">hustlertube</a></td>
									<td><a target="_blank" href="http://www.porzo.com/">pornzo</a></td>
									<td><a target="_blank" href="https://www.xtube.com/">xtube</a></td>
								</tr>
								<tr class="biaogeyincang">
									<td><a target="_blank" href="https://www.redtube.com/">redtube</a></td>
									<td><a target="_blank" href="http://dfjav.com/">dfjav</a></td>
									<td><a target="_blank" href="http://www.5278.mobi/">5278wang</a></td>
									
								</tr>
							</table>
                        </ul>
                    </div>
                    <div class="tabcssyincang" id="page10"  value="直播">
                        <ul class="pagesyincang">
                            <table>
								<tr class="biaogeyincang">
									<td><a target="_blank" href="http://www.afreecatv.com/">afreecatv直播</a></td>
									<td><a target="_blank" href="http://www.livestar.com/">livestar直播</a></td>
									<td><a target="_blank" href="http://www.winktv.co.kr/main/home">winktv直播</a></td>
									<td><a href="http://www.cantv.com.ve/"  target="_blank">cantv直播</a></td>
									<td><a href="http://www.evilangellive.com/?AFNO=1-264593-2 " target="_blank ">evilangellive</a></td>
									<td><a href="http://www.liveprivates.com/girls/?category=girls&pstool=15_1&psprogram=PPS&pstour=t1&campaign_id=81929&psid=m4rc0f " target="_blank ">liveprivates</a></td>
									<td><a href="http://www.joyourself.com/girls/?category=girls&pstool=15_1&psprogram=PPS&pstour=t1&campaign_id=81929&psid=m4rc0f " target="_blank ">joyourself</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a href="http://www.xlovecam.com/prm/textlink/?id_affilie=12667&p=online " target="_blank ">xlovecam</a></td>
									<td><a href="http://www.streamate.com/?DF=0&AFNO=1-0-641359-358335&UHNSMTY=303 " target="_blank ">streamate</a></td>
									<td><a href="http://cams.com/go/g1417327 " target="_blank ">cams</a></td>
									<td><a href="http://www.pornication.com/?AFNO=1-264593-2 " target="_blank ">pornication</a></td>
									<td><a href="https://www.delhisexchat.com/?affID=TOPPRN " target="_blank ">delhisexchat</a></td>
									<td><a href="http://www.webcams.com/link.php?reseller=crawford&rev=0&type=2&misc1=&misc2=&_u=http://tours.webcams.com/static/webcams-1.19-credits-offer/?wca=1&mcat_id=" target=" _blank ">webcams</a></td>
									<td><a href="http://sexier.com/services/directlinkhandler.ashx?WID=126370604790&LinkID=1080&queryid=138&promocode=BCODEL0000021_00000 " target="_blank ">sexier</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a href="http://secure.vividcams.com/track/MjAzMDY5LjI2LjQ2Ljc1LjIuMC4wLjAuMA " target="_blank ">vividcams</a></td>
									<td><a href="http://www.privatefeeds.com/?AFNO=1-264593-2 " target="_blank ">privatefeeds</a></td>
									<td><a href="http://www.camcrush.com/main.htm?id=mattew69 " target="_blank ">camcrush</a></td>
									
								</tr>
							</table>
                        </ul>
                    </div>
					
					<div class="tabcssyincang" id="page3"  value="空5">
                        <ul class="pagesyincang">
                            <table>
								<tr class="biaogeyincang">
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
								<tr  class="biaogeyincang">
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
									<td><a href="#"  target="_blank">test1</a></td>
								</tr>
							</table>
                        </ul>
                    </div>
                      
                </ul>
            </div>
        </div>
    </div>
    <!-- 隐藏部分end -->
    
    
    
    <!--回顶部-->
    <div id="reTop" class="reTop" onclick="tetTop()">回顶部</div>
    
    <div style="height:3px;"></div>
	<div id="qita">
	
	</div>

    <footer id="footer">
        <p style="font-size: 12px; margin: 2px;  text-align: center">Dsesign by Souger @spark</p>
    </footer>
  </body>
</html>
