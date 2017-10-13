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

        });

        function showAuto() {
            n = n >= (count - 1) ? 0 : ++n;
            $("#carousel li").eq(n).trigger('click');
        }


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

        function tetTop() {

            var s = $(document).scrollTop();
            while (s > 0) {
                $(this).animate($(document).scrollTop(s--), 3000);
            }
        }
    </script>
  </head>
  
  
  <body>
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
                    <li id="tab3" onclick="ownclick(9)">空</li>
                    
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
                    <div class="tabcss" id="page4"  value="华科系列">
                        <ul class="pages">
                            <table>
								<tr class="biaoge">
									<td><a href="http://www.hust.edu.cn/"  target="_blank">华科官网</a></td>
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
                    <div class="tabcss" id="page5"  value="生活相关">
                        <ul class="pages">
                            <table>
								<tr class="biaoge">
									<td><a href="http://weibo.com/u/2881400970/home?wvr=5" target="_blank">微博</a></td>
									<td><a href="https://www.icloud.com/"  target="_blank">Apple iCloud</a></td>
									<td><a href="http://wh.meituan.com/"  target="_blank">美团</a></td>
									<td><a href="https://www.zhihu.com/"  target="_blank">知乎</a></td>
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
                    <div class="tabcss" id="page6"  value="娱乐系列">
                        <ul class="pages">
                            <table>
								<tr class="biaoge">
									<td><a href="http://www.hanju.cc/hanjuxiazai/"  target="_blank">韩剧网</a></td>
									<td><a href="http://www.zimuzu.tv/"  target="_blank">YYeTs字幕组</a></td>
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
                    <div class="tabcss" id="page10"  value="空">
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
                      
                </ul>
            </div>
        </div>
        </div>
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
