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
         #sidebox {
            position: relative;
            border:2px solid green;
            height: 300px;
            
            
        } 
        
        #qita {
        	border:2px solid green;
            height: 300px;
        }
        
        #tar_bar {
            position: absolute;
            /* width: 1300px; */
            /* width:100%; */
            height: 20px;
            padding: 0;
            margin: 0;
        }
        
        #tar_bar ul {
            list-style-type: none;
            text-align: center;
            padding: 0;
            margin: 0;
            vertical-align: center;
        }
        
        #tabs li {
            width: 132px;
            height: 30px;
            float: left;
            cursor: pointer;
            line-height: 30px;
        }
        
        .tabcss {
            position: absolute;
            top: 20px;
            width: 370px;
            height: 170px;
            float: left;
            /*z-index: 900;*/
            display: none;
        }
        
        .tabons {
            background-color: #fbad18;
        }
        
        .pages li {
            list-style-type: none;
            margin: 10px 0px 10px -34px;
            padding: 2px 3px;
            display: block;
            border-radius: 5px/5px;
            font-size: 10px;
            color: white;
            width: 15px;
            text-align: center;
            float: left;
        }
        
        .pages a {
            position: relative;
            top: 7px;
            text-decoration: none;
            display: block;
            margin: 5px 0px 5px 0px;
            padding: 2px 3px;
            font-size: 14px;
        }

        #reTop {
            width: 20px;
            height: 78px;
            background-color: #fab529;
            position: fixed;
            top: 500px;
            right: 0;
            text-align: center;
            line-height: 26px;
            cursor: pointer;
        }
        
        .reTop {
            display: none;
        }
        
        #footer {
            background: black;
            color: white;
            height: 20px;
            /* width: 1000px; */
            position: relative;
            top: 0px;
        }
    </style>
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
                    <li id="tab1" onclick="ownclick(0)" class="tabons">点击排行</li>
                    <li id="tab2" onclick="ownclick(1)">最新文章</li>
                    <li id="tab3" onclick="ownclick(2)">站长推荐</li>
                    <li id="tab3" onclick="ownclick(3)">国际大事</li>
                    <li id="tab3" onclick="ownclick(4)">国际大事</li>
                    <li id="tab3" onclick="ownclick(5)">国际大事</li>
                    <li id="tab3" onclick="ownclick(6)">国际大事</li>
                    <li id="tab3" onclick="ownclick(7)">国际大事</li>
                    <li id="tab3" onclick="ownclick(8)">国际大事</li>
                    <li id="tab3" onclick="ownclick(9)">国际大事</li>
                    
                </ul>
            </div>
            <div>
                <ul id="tabpage" style="margin: 0; padding: 0;">
                    <div class="tabcss" id="page1" style="display: inline-block;">
                        <ul class="pages">
                            <li style="background-color: red; ">1</li><a href="#">美联社称希拉里赢得民主党提名 但桑德斯否认</a>
                            <li style="background-color: #fb7818">2</li><a href="#">欧盟阻止德意志交易所收购伦敦证券交易所的交易</a>
                            <li style="background-color: #fbcf18">3</li><a href="#">苹果拟投十亿美元在美国设立更多制造业岗位</a>
                            <li style="background-color: gray">4</li><a href="#">尼康诉阿斯麦、蔡司侵权 称“别无选择”</a>
                            <li style="background-color: gray">5</li><a href="#">美军向叙利亚机场发射导弹 黄金原油直线拉升</a>
                            <li style="background-color: gray">6</li><a href="#">美联储：美经济放缓或为暂时现象</a>
                        </ul>
                    </div>
                    <div class="tabcss" id="page2">
                        <ul class="pages">
                            <li style="background-color: red; ">1</li><a href="#">舞动的白色精灵</a>
                            <li style="background-color: #fb7818">2</li><a href="#">荆棘中绽放的花朵</a>
                            <li style="background-color: #fbcf18">3</li><a href="#">沼泽中沉睡的女神</a>
                            <li style="background-color: gray">4</li><a href="#">翩翩的金丝蝴蝶</a>
                            <li style="background-color: gray">5</li><a href="#">花中君子</a>
                        </ul>
                    </div>
                    <div class="tabcss" id="page3">
                        <ul class="pages">
                            <li style="background-color: red; ">1</li><a href="#">法国新任总统马克龙正式入主爱丽舍宫</a>
                            <li style="background-color: #fb7818">2</li><a href="#">韩国新总统将派前总理访华 与中方谈解决</a>
                            <li style="background-color: #fbcf18">3</li><a href="#">京都旅行攻略 京都旅行攻略沙发客</a>
                            <li style="background-color: gray">4</li><a href="#">解密中东战事乱局</a>
                            <li style="background-color: gray">5</li><a href="#">英国大选陷入胶着，结果或将反转</a>
                            <li style="background-color: gray">6</li><a href="#">法国新任总统今日发表就职演说</a>
                        </ul>
                    </div>
                    <div class="tabcss" id="page4">
                        <ul class="pages">
                            <li style="background-color: red; ">1</li><a href="#">法国新任总统马克龙正式入主爱丽舍宫</a>
                            <li style="background-color: #fb7818">2</li><a href="#">韩国新总统将派前总理访华 与中方谈解决</a>
                            <li style="background-color: #fbcf18">3</li><a href="#">京都旅行攻略 京都旅行攻略沙发客</a>
                            <li style="background-color: gray">4</li><a href="#">解密中东战事乱局</a>
                            <li style="background-color: gray">5</li><a href="#">英国大选陷入胶着，结果或将反转</a>
                            <li style="background-color: gray">6</li><a href="#">法国新任总统今日发表就职演说</a>
                        </ul>
                    </div>
                    <div class="tabcss" id="page5">
                        <ul class="pages">
                            <li style="background-color: red; ">1</li><a href="#">法国新任总统马克龙正式入主爱丽舍宫</a>
                            <li style="background-color: #fb7818">2</li><a href="#">韩国新总统将派前总理访华 与中方谈解决</a>
                            <li style="background-color: #fbcf18">3</li><a href="#">京都旅行攻略 京都旅行攻略沙发客</a>
                            <li style="background-color: gray">4</li><a href="#">解密中东战事乱局</a>
                            <li style="background-color: gray">5</li><a href="#">英国大选陷入胶着，结果或将反转</a>
                            <li style="background-color: gray">6</li><a href="#">法国新任总统今日发表就职演说</a>
                        </ul>
                    </div>
                    <div class="tabcss" id="page6">
                        <ul class="pages">
                            <li style="background-color: red; ">1</li><a href="#">法国新任总统马克龙正式入主爱丽舍宫</a>
                            <li style="background-color: #fb7818">2</li><a href="#">韩国新总统将派前总理访华 与中方谈解决</a>
                            <li style="background-color: #fbcf18">3</li><a href="#">京都旅行攻略 京都旅行攻略沙发客</a>
                            <li style="background-color: gray">4</li><a href="#">解密中东战事乱局</a>
                            <li style="background-color: gray">5</li><a href="#">英国大选陷入胶着，结果或将反转</a>
                            <li style="background-color: gray">6</li><a href="#">法国新任总统今日发表就职演说</a>
                        </ul>
                    </div>
                    <div class="tabcss" id="page7">
                        <ul class="pages">
                            <li style="background-color: red; ">1</li><a href="#">法国新任总统马克龙正式入主爱丽舍宫</a>
                            <li style="background-color: #fb7818">2</li><a href="#">韩国新总统将派前总理访华 与中方谈解决</a>
                            <li style="background-color: #fbcf18">3</li><a href="#">京都旅行攻略 京都旅行攻略沙发客</a>
                            <li style="background-color: gray">4</li><a href="#">解密中东战事乱局</a>
                            <li style="background-color: gray">5</li><a href="#">英国大选陷入胶着，结果或将反转</a>
                            <li style="background-color: gray">6</li><a href="#">法国新任总统今日发表就职演说</a>
                        </ul>
                    </div>
                    <div class="tabcss" id="page8">
                        <ul class="pages">
                            <li style="background-color: red; ">1</li><a href="#">法国新任总统马克龙正式入主爱丽舍宫</a>
                            <li style="background-color: #fb7818">2</li><a href="#">韩国新总统将派前总理访华 与中方谈解决</a>
                            <li style="background-color: #fbcf18">3</li><a href="#">京都旅行攻略 京都旅行攻略沙发客</a>
                            <li style="background-color: gray">4</li><a href="#">解密中东战事乱局</a>
                            <li style="background-color: gray">5</li><a href="#">英国大选陷入胶着，结果或将反转</a>
                            <li style="background-color: gray">6</li><a href="#">法国新任总统今日发表就职演说</a>
                        </ul>
                    </div>
                    <div class="tabcss" id="page9">
                        <ul class="pages">
                            <li style="background-color: red; ">1</li><a href="#">法国新任总统马克龙正式入主爱丽舍宫</a>
                            <li style="background-color: #fb7818">2</li><a href="#">韩国新总统将派前总理访华 与中方谈解决</a>
                            <li style="background-color: #fbcf18">3</li><a href="#">京都旅行攻略 京都旅行攻略沙发客</a>
                            <li style="background-color: gray">4</li><a href="#">解密中东战事乱局</a>
                            <li style="background-color: gray">5</li><a href="#">英国大选陷入胶着，结果或将反转</a>
                            <li style="background-color: gray">6</li><a href="#">法国新任总统今日发表就职演说</a>
                        </ul>
                    </div>
                    <div class="tabcss" id="page10">
                        <ul class="pages">
                            <li style="background-color: red; ">1</li><a href="#">法国新任总统马克龙正式入主爱丽舍宫</a>
                            <li style="background-color: #fb7818">2</li><a href="#">韩国新总统将派前总理访华 与中方谈解决</a>
                            <li style="background-color: #fbcf18">3</li><a href="#">京都旅行攻略 京都旅行攻略沙发客</a>
                            <li style="background-color: gray">4</li><a href="#">解密中东战事乱局</a>
                            <li style="background-color: gray">5</li><a href="#">英国大选陷入胶着，结果或将反转</a>
                            <li style="background-color: gray">6</li><a href="#">法国新任总统今日发表就职演说</a>
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
