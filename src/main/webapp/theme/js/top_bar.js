var base = document.getElementById('topScript').getAttribute('data').split("=")[1];

var str = '<div id="wrapper"> '
    + '	<div id="header"> '
    + '		<div class="funclink"> '
    + '			<a href="http://seie.xhu.edu.cn/%28S%28gu31a4z3jy55y445gvmr2n55%29%29/Default.aspx">学院首页</a> '
    + '			<a href="http://www.xhu.edu.cn/">学校主页</a>                              '
    + '			<a href="' + base + 'manage/gotoManage">管理登录</a>                                   '
    + '		</div>                                                                         '
    + '	</div>                                                                             '
    + '	<div id="navi">                                                                    '
    + '	<div id="navigation" class="smartmenu">                                            '
    + '		<ul>                                                                           '
    + '			<li><a href="' + base + '/static/home/index.jsp">首页</a></li>                                      '
    + '			<li><a href="' + base + '/static/aboutus/aboutus.jsp">关于我们</a></li>           '
    + '			<li> <a href="' + base + 'view/workPart">成果与风采</a>                                '
    + '				<ul>                                                                   '
    + '					<li><a href="' + base + 'view/projectPart">科研项目</a></li>     '
    + '					<li><a href="' + base + 'view/thesisPart">学术论文</a></li>      '
    + '					<li><a href="' + base + 'view/patentPart">团队专利</a></li>      '
    + '					<li><a href="' + base + 'view/worksList?page=1">团队风采</a></li>     '
    + '				</ul></li>                                                             '
    + '			<li> <a href="' + base + 'view/teamPart">团队成员</a>                                  '
    + '					<ul>                                                               '
    + '						<li> <a href="' + base + 'view/memberLogo?type=teacher">团队现任教师成员</a> </li>   '
    + '						<li> <a href="' + base + 'view/memberLogo?type=student">团队现任学生成员</a> </li>   '
    + '						<li> <a href="' + base + 'view/memberLogo?type=comember">团队协作成员</a> </li>      '
    + '						<li> <a href="' + base + 'view/memberLogo?type=oldmember">团队过去成员</a> </li>     '
    + '					</ul>                                                                        '
    + '				</li>                                                                            '
    + '			<li><a href="' + base + 'webresourse/cooperative/picture.jsp">合作与交流</a>                    '
    + '				<ul>                                                                             '
    + '					<li><a href="' + base + 'webresourse/cooperative/Cooperative enterprise.jsp">合作企业</a></li>    '
    + '					<li><a href="' + base + 'view/groupPart">合作团队</a></li>          '
    + '					<li><a href="' + base + 'view/exchangePart">学术交流</a></li>          '
    + '					<li><a href="' + base + 'view/needPart">合作需求</a></li>          '
    + '				</ul></li>                                                                    '
    + '			<li><a href="' + base + 'webresourse/donation/grants.jsp">助学与资助</a> '
    + '				<ul>  '
    + '					<li><a href="' + base + 'view/helpPart?type=help">勤工助学</a></li>            '
    + '					<li><a href="' + base + 'view/fundingPart">社会与个人资助</a></li>   '
    + '				</ul>   '
    + '          </li>      '
    + '			<li><a href="' + base + 'view/joinusPart">加入我们</a></li>                   '
    + '			<li><a href="' + base + 'view/graduatePart?type=graduate">研究生招生</a></li>       '
    + '			<li><a href="' + base + 'webresourse/contactus/contactus.jsp">联系我们</a></li>              '
    + '		</ul>'
    + '	</div>'
    + '	<div class="banner">  '
    + '		<a href="#"> <img src="' + base + '/images/carousel/banner_5.jpg" />        '
    + '		</a> <a href="#"> <img src="' + base + '/images/carousel/banner_6.jpg" />   '
    + '		</a> <a href="#"> <img src="' + base + '/images/carousel/banner_7.jpg" />   '
    + '		</a> <a href="#"> <img src="' + base + '/images/carousel/banner_8.jpg" />   '
    + '		</a> '
    + '	</div> '
    + '</div> '
    + '</div>';
$("#top").append(str);
$(document).ready(function () {
    $(".banner").innerfade({
        speed: 'slow',
        timeout: 5000,
        type: 'random',
        containerheight: '200px'
    });
});
jQuery(window).ready(function () {
    jQuery("#navigation").Smartmenu({
        animationDuration: 200
    });
});
                                                                           