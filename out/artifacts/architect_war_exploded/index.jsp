<%@ page import="java.util.List" %>
<%@ page import="com.entity.Film" %><%--
  Created by IntelliJ IDEA.
  User: FengJun
  Date: 2020/12/5
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>影评创作论坛</title>
  <link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
  <!-- Custom Theme files -->
  <link rel="stylesheet" href="css/menu.css"/>
  <link href="css/style2.css" rel="stylesheet" type="text/css" media="all"/>
  <!-- Custom Theme files -->
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- Custom Theme files -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta name="keywords" content="My Show Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
  <script type="application/x-javascript">
    addEventListener("load", function () {
      setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
      window.scrollTo(0, 1);
    }
  </script>

  <link href='http://fonts.googleapis.com/css?family=Oxygen:400,700,300' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
  <!-- start menu -->
  <link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all"/>
  <script type="text/javascript" src="js/megamenu.js"></script>
  <script>
    $(document).ready(function () {
      $(".megamenu").megamenu();
    });
  </script>
  <script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
  <link rel="stylesheet" href="css/font-awesome.min.css"/>
  <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
  <script type="text/javascript">
    $(document).ready(function () {
      $('#horizontalTab').easyResponsiveTabs({
        type: 'default', //Types: default, vertical, accordion
        width: 'auto', //auto or any width like 600px
        fit: true // 100% fit in a container
      });
    });
  </script>
  <script type="text/javascript" src="js/move-top.js"></script>
  <script type="text/javascript" src="js/easing.js"></script>
  <script type="text/javascript">
    jQuery(document).ready(function ($) {
      $(".scroll").click(function (event) {
        event.preventDefault();
        $('html,body').animate({
          scrollTop: $(this.hash).offset().top
        }, 1200);
      });
    });
  </script>
  <!---- start-smoth-scrolling---->

</head>
<body>
<!-- header-section-starts -->
<div class="header-top-strip">
  <div class="container">

    <div class="header-top-right">
      <div class="modal fade">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                      aria-hidden="true">&times;</span></button>
              <h4 class="modal-title">Modal title</h4>
            </div>
            <div class="modal-body">
              <p>One fine body&hellip;</p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary">Save changes</button>
            </div>
          </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
      </div><!-- /.modal -->
      <!-- Button trigger modal  -->
      <!---pop-up-box---->
      <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
      <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
      <!---//pop-up-box---->
      <script>
        $(document).ready(function () {
          $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',
            fixedContentPos: false,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: false,
            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
          });


        });


        $(function () {

          $("#registername").on('blur', function () {
            var registername = $("#registername").val();
            if (registername == "") {
              $("#registernametips").html("用户名不能为空");
              return false;
            } else {
              $.ajax({
                url: "http://localhost:8000/architect/vip.do",
                data: {action: "queryUserByUsername", registername: registername},
                type: "GET",
                dataType: "text",//返回的数据类型
                success: function (data) {
                  if (data > 0) {
                    $("#registernametips").html("用户名已存在");

                  }
                }
              })
            }
          })

          $("#registerpassword").on('blur', function () {
            var registerpassword = $("#registerpassword").html();
            if (registerpassword == "") {
              $("#registerpasswordtips").html("密码不能为空");
              return false;
            }
          })

          $("#confirmregisterpassword").on('blur', function () {
            var confirmregisterpassword = $("#confirmregisterpassword").val();
            if (confirmregisterpassword == "") {
              $("#confirmregisterpasswordtips").html("确认密码不能为空");
              return false;
            } else {
              if (confirmregisterpassword != registerpasswordtips) {
                $("#confirmregisterpasswordtips").html("确认密码与密码不一致");
                return false;
              }
            }
          })

          $("#tel").on('blur', function () {
            var tel = $("#tel").val();
            if (tel == "") {
              $("#teltips").html("手机号码不能为空");
              return false;
            }
          })
          $("#qq").on('blur', function () {
            var qq = $("#qq").val();
            if (qq == "") {
              $("#qqtips").html("QQ不能为空");
              return false;
            }
          })
          $("#email").on('blur', function () {
            var email = $("#email").val();
            if (email == "") {
              $("#emailtips").html("邮箱不能为空");
              return false;
            }
          })

        })


      </script>
      <!-- Large modal -->
      <a href="login.html">添加影评</a>
      <a href="login.html">管理员登陆</a>
      <button class="btn btn-primary" data-toggle="modal" data-target="#myModal">
        Login/Register
      </button>
      <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
           aria-hidden="true">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                &times;
              </button>
              <h4 class="modal-title" id="myModalLabel">
                快加入我们吧</h4>
            </div>
            <div class="modal-body">
              <div class="row">
                <div class="col-md-8" style="border-right: 1px dotted #C2C2C2;padding-right: 30px;">
                  <!-- Nav tabs -->
                  <ul class="nav nav-tabs">
                    <li class="active"><a href="#Login" data-toggle="tab">登录</a></li>
                    <li><a href="#Registration" data-toggle="tab">注册</a></li>
                  </ul>
                  <!-- Tab panes -->
                  <div class="tab-content">
                    <div class="tab-pane active" id="Login">
                      <form role="form" class="form-horizontal" method="post"
                            onsubmit="return check()" action="/architect/vip.do">
                        <input name="action" type="hidden" value="login"/>
                        <div class="form-group">
                          <label for="email" class="col-sm-2 control-label">
                            用户名</label>
                          <div class="col-sm-10">
                            <input type="text" name="username" class="form-control"
                                   id="username"
                                   placeholder="username"/>
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="exampleInputPassword1" class="col-sm-2 control-label">
                            密码</label>
                          <div class="col-sm-10">
                            <input type="password" name="password" class="form-control"
                                   id="exampleInputPassword1" placeholder="password"/>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-sm-2">
                          </div>
                          <div class="col-sm-10">
                            <button type="submit" id="submit"
                                    class="btn btn-primary btn-sm">
                              提交
                            </button>
                            <a href="javascript:;">忘 记 密 码 ?</a>
                          </div>
                        </div>
                      </form>
                    </div>
                    <div class="tab-pane" id="Registration">
                      <form role="form" class="form-horizontal" method="post"
                            action="/architect/vip.do">
                        <input name="action" type="hidden" value="register"/>
                        <div class="form-group">
                          <label for="email" class="col-sm-2 control-label">
                            用户名</label>
                          <div class="col-sm-10">
                            <div class="row">
                              <div class="col-md-9">
                                <input type="text" name="registername" id="registername"
                                       class="form-control"
                                       placeholder="Name"/>
                                <span id="registernametips" style="color: red;"></span>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="email" class="col-sm-2 control-label">
                            密码</label>
                          <div class="col-sm-10">
                            <input type="password" name="registerpassword"
                                   class="form-control" id="registerpassword"
                                   placeholder="Password"/>
                            <span id="registerpasswordtips" style="color: red;"></span>
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="email" class="col-sm-2 control-label">
                            确认密码</label>
                          <div class="col-sm-10">
                            <input type="password" class="form-control"
                                   name="confirmregisterpassword"
                                   id="confirmregisterpassword"
                                   placeholder="Password"/>
                            <span id="confirmregisterpasswordtips"
                                  style="color: red;"></span>
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="mobile" class="col-sm-2 control-label">
                            手机</label>
                          <div class="col-sm-10">
                            <input type="tel" class="form-control" id="tel" name="tel"
                                   placeholder="Tel"/>
                            <span id="teltips" style="color: red;"></span>
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="mobile" class="col-sm-2 control-label">
                            QQ</label>
                          <div class="col-sm-10">
                            <input type="text" class="form-control" name="qq" id="qq"
                                   placeholder="QQ"/>
                            <span id="qqtips" style="color: red;"></span>
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="mobile" class="col-sm-2 control-label">
                            邮箱</label>
                          <div class="col-sm-10">
                            <input type="email" name="email" class="form-control" id="email"
                                   placeholder="Email"/>
                            <span id="emailtips" style="color: red;"></span>
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="email" class="col-sm-2 control-label">
                            性别</label>
                          <div class="col-sm-10">
                            <div class="row">
                              <div class="col-md-3">
                                <select name="sex" id="sex" class="form-control">
                                  <option value="男">男</option>
                                  <option value="女">女</option>
                                  <option value="阴阳人">阴阳人</option>
                                </select>
                              </div>
                              <!-- <div class="col-md-9">
                                  <input type="text" class="form-control" placeholder="Name">
                              </div> -->
                            </div>
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-sm-2">
                          </div>
                          <div class="col-sm-10">
                            <button type="submit" class="btn btn-primary btn-sm">
                              提交
                            </button>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <button type="reset" class="btn btn-primary btn-sm">
                              重置
                            </button>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <button type="button" class="btn btn-default btn-sm">
                              取消
                            </button>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--<script>-->
      <!--// $('#myModal').modal('show');-->
      <!--</script>-->
    </div>
    <div class="clearfix"></div>
  </div>
</div>
<div class="container">
  <div class="main-content">
    <div class="header">
      <div class="logo">
        <a href="index.html">
          <h1>我的空间</h1>
        </a>
      </div>
      <div class="clearfix"></div>
    </div>
    <div class="bootstrap_container">
      <nav class="navbar navbar-default w3_megamenu" role="navigation">
        <div class="navbar-header">
          <button type="button" data-toggle="collapse" data-target="#defaultmenu" class="navbar-toggle"><span
                  class="icon-bar"></span><span
                  class="icon-bar"></span><span class="icon-bar"></span></button>
          <a href="index.html" class="navbar-brand"><i
                  class="fa fa-home"></i></a>
        </div><!-- end navbar-header -->

        <div id="defaultmenu" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="index.html">网站首页</a></li>
            <!-- Mega Menu -->
            <li class="dropdown w3_megamenu-fw"><a href="moviereview.html" class="dropdown-toggle">网站影评</a>
            </li>
            <li class="dropdown w3_megamenu-fw"><a href="movies.html" class="dropdown-toggle">电影海报与预告
              <!-- <b class="caret"></b> --></a>
            </li>

            <li class="dropdown"><a href="ticket.html" class="dropdown-toggle">参考投票</a>
            </li>
            <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">联系我们</a>
            </li>
            <!-- end dropdown w3_megamenu-fw -->
          </ul><!-- end nav navbar-nav -->

        </div><!-- end #navbar-collapse-1 -->

      </nav><!-- end navbar navbar-default w3_megamenu -->
    </div><!-- end container -->
    <%
      List<Film> film= (List<Film>) request.getAttribute("fime");
    %>
    <div class="main-banner">
      <div class="banner col-md-8">
        <section class="slider">
          <div class="flexslider">
            <ul class="slides">
              <li>
                <img src="D:\upload\timg (1).jfif" class="img-responsive" alt=""/>
              </li>
              <li>
                <img src="images/pic2.jpg" class="img-responsive" alt=""/>
              </li>
              <li>
                <img src="images/pic3.jpg" class="img-responsive" alt=""/>
              </li>
              <li>
                <img src="images/pic4.jpg" class="img-responsive" alt=""/>
              </li>
            </ul>
          </div>
        </section>
        <!-- FlexSlider -->
        <script defer="" src="js/jquery.flexslider.js"></script>
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen">
        <script type="text/javascript">
          $(function () {
            SyntaxHighlighter.all();
          });
          $(window).load(function () {
            $('.flexslider').flexslider({
              animation: "slide",
              start: function (slider) {
                $('body').removeClass('loading');
              }
            });
          });
        </script>
      </div>
      <div class="search" style="margin-right: 20px">
        <div class="search2">
          <form>
            <i class="fa fa-search"></i>
            <input type="text" value="搜索" onfocus="this.value = '';"
                   onblur="if (this.value == '') {this.value = 'Search for a movie, play, event, sport or more';}">
          </form>

        </div>
        <div>
          <span style="left: 1230px;top: 290px;position: absolute;font-size: 25px;color: #3B5998;">网站公告</span><br>
          <form style=" margin-top: 70px;text-align: center;line-height: 30px;border: 1px solid lightgrey;height: 300px">
            <a style="font-size: 20px;color: cornflowerblue;" href="#">哈哈哈哈哈哈哈哈哈哈哈</a><br>
            <a style="font-size: 20px;color: cornflowerblue;" href="#">哈哈哈哈哈哈哈哈哈哈哈</a><br>
            <a style="font-size: 20px;color: cornflowerblue;" href="#">哈哈哈哈哈哈哈哈哈哈哈</a><br>
            <a style="font-size: 20px;color: cornflowerblue;" href="#">哈哈哈哈哈哈哈哈哈哈哈</a><br>
            <a style="font-size: 20px;color: cornflowerblue;" href="#">哈哈哈哈哈哈哈哈哈哈哈</a><br>
            <a style="font-size: 20px;color: cornflowerblue;" href="#">哈哈哈哈哈哈哈哈哈哈哈</a><br>
            <a style="font-size: 20px;color: cornflowerblue;" href="#">哈哈哈哈哈哈哈哈哈哈哈</a><br>
            <a style="font-size: 20px;color: cornflowerblue;" href="#">哈哈哈哈哈哈哈哈哈哈哈</a><br>
          </form>
        </div>
      </div>
      <div class="clearfix"></div>
    </div>
    <link href="css/moviereview.css" rel="stylesheet" type="text/css">
    <span class="ttncspa">热门影片</span>
    <div class="nbs-flexisel-inner">
      <ul id="flexiselDemo1" class="nbs-flexisel-ul" style="left: -228px; display: block;">
        <li class="nbs-flexisel-item" style="width: 228px;">
          <a href="movies.html"><img src="images/r1.jpg" alt=""></a>
          <div class="slide-title">
            <h4>looked up one of the more Contrary to popular </h4>
          </div>
          <div class="date-city">
            <h5>Dec 12-15</h5>
            <h6>Multi-city</h6>
            <div class="buy-tickets">
              <a href="movie-select-show.html">BUY TICKETS</a>
            </div>
          </div>
        </li>
        <li class="nbs-flexisel-item" style="width: 228px;">
          <a href="movies.html"><img src="images/r2.jpg" alt=""></a>
          <div class="slide-title">
            <h4>There are many 'variations' belief</h4>
          </div>
          <div class="date-city">
            <h5>Dec 12-15</h5>
            <h6>Multi-city</h6>
            <div class="buy-tickets">
              <a href="movie-select-show.html">BUY TICKETS</a>
            </div>
          </div>
        </li>
        <li class="nbs-flexisel-item" style="width: 228px;">
          <a href="movies.html"><img src="images/r3.jpg" alt=""></a>
          <div class="slide-title">
            <h4>Finibus Bonorum et Malorum more 'Contrary'</h4>
          </div>
          <div class="date-city">
            <h5>Dec 12-15</h5>
            <h6>Multi-city</h6>
            <div class="buy-tickets">
              <a href="movie-select-show.html">BUY TICKETS</a>
            </div>
          </div>
        </li>
        <li class="nbs-flexisel-item" style="width: 228px;">
          <a href="movies.html"><img src="images/r4.jpg" alt=""></a>
          <div class="slide-title">
            <h4>Lorem Ipsum is simply Bonorum</h4>
          </div>
          <div class="date-city">
            <h5>Dec 12-15</h5>
            <h6>Multi-city</h6>
            <div class="buy-tickets">
              <a href="movie-select-show.html">BUY TICKETS</a>
            </div>
          </div>
        </li>
        <li class="nbs-flexisel-item" style="width: 228px;">
          <a href="movies.html"><img src="images/r5.jpg" alt=""></a>
          <div class="slide-title">
            <h4>Lorem Ipsum is simply Bonorum</h4>
          </div>
          <div class="date-city">
            <h5>Dec 12-15</h5>
            <h6>Multi-city</h6>
            <div class="buy-tickets">
              <a href="movie-select-show.html">BUY TICKETS</a>
            </div>
          </div>
        </li>
        <li class="nbs-flexisel-item" style="width: 228px;">
          <a href="movies.html"><img src="images/r6.jpg" alt=""></a>
          <div class="slide-title">
            <h4>Lorem Ipsum is simply Bonorum</h4>
          </div>
          <div class="date-city">
            <h5>Dec 12-15</h5>
            <h6>Multi-city</h6>
            <div class="buy-tickets">
              <a href="movie-select-show.html">BUY TICKETS</a>
            </div>
          </div>
        </li>
        <li class="nbs-flexisel-item" style="width: 228px;">
          <a href="movies.html"><img src="images/r1.jpg" alt=""></a>
          <div class="slide-title">
            <h4>looked up one of the more Contrary to popular </h4>
          </div>
          <div class="date-city">
            <h5>Dec 12-15</h5>
            <h6>Multi-city</h6>
            <div class="buy-tickets">
              <a href="movie-select-show.html">BUY TICKETS</a>
            </div>
          </div>
        </li>
        <li class="nbs-flexisel-item" style="width: 228px;">
          <a href="movies.html"><img src="images/r2.jpg" alt=""></a>
          <div class="slide-title">
            <h4>There are many 'variations' belief</h4>
          </div>
          <div class="date-city">
            <h5>Dec 12-15</h5>
            <h6>Multi-city</h6>
            <div class="buy-tickets">
              <a href="movie-select-show.html">BUY TICKETS</a>
            </div>
          </div>
        </li>
        <li class="nbs-flexisel-item" style="width: 228px;">
          <a href="movies.html"><img src="images/r3.jpg" alt=""></a>
          <div class="slide-title">
            <h4>Finibus Bonorum et Malorum more 'Contrary'</h4>
          </div>
          <div class="date-city">
            <h5>Dec 12-15</h5>
            <h6>Multi-city</h6>
            <div class="buy-tickets">
              <a href="movie-select-show.html">BUY TICKETS</a>
            </div>
          </div>
        </li>
        <li class="nbs-flexisel-item" style="width: 228px;">
          <a href="movies.html"><img src="images/r4.jpg" alt=""></a>
          <div class="slide-title">
            <h4>Lorem Ipsum is simply Bonorum</h4>
          </div>
          <div class="date-city">
            <h5>Dec 12-15</h5>
            <h6>Multi-city</h6>
            <div class="buy-tickets">
              <a href="movie-select-show.html">BUY TICKETS</a>
            </div>
          </div>
        </li>
        <li class="nbs-flexisel-item" style="width: 228px;">
          <a href="movies.html"><img src="images/r5.jpg" alt=""></a>
          <div class="slide-title">
            <h4>Lorem Ipsum is simply Bonorum</h4>
          </div>
          <div class="date-city">
            <h5>Dec 12-15</h5>
            <h6>Multi-city</h6>
            <div class="buy-tickets">
              <a href="movie-select-show.html">BUY TICKETS</a>
            </div>
          </div>
        </li>
        <li class="nbs-flexisel-item" style="width: 228px;">
          <a href="movies.html"><img src="images/r6.jpg" alt=""></a>
          <div class="slide-title">
            <h4>Lorem Ipsum is simply Bonorum</h4>
          </div>
          <div class="date-city">
            <h5>Dec 12-15</h5>
            <h6>Multi-city</h6>
            <div class="buy-tickets">
              <a href="movie-select-show.html">BUY TICKETS</a>
            </div>
          </div>
        </li>
      </ul>
      <div class="nbs-flexisel-nav-left" style="top: 176px;"></div>
      <div class="nbs-flexisel-nav-right" style="top: 176px;"></div>
    </div>
    <div class="review-slider">
      <ul id="flexiselDemo1">
        <li>
          <a href="movies.html"><img src="images/r1.jpg" alt=""/></a>
          <div class="slide-title">
            <h4>looked up one of the more Contrary to popular
          </div>
          <div class="date-city">
            <h5>Dec 12-15</h5>
            <h6>Multi-city</h6>
            <div class="buy-tickets">
              <a href="movie-select-show.html">BUY TICKETS</a>
            </div>
          </div>
        </li>
        <li>
          <a href="movies.html"><img src="images/r2.jpg" alt=""/></a>
          <div class="slide-title">
            <h4>There are many 'variations' belief</h4>
          </div>
          <div class="date-city">
            <h5>Dec 12-15</h5>
            <h6>Multi-city</h6>
            <div class="buy-tickets">
              <a href="movie-select-show.html">BUY TICKETS</a>
            </div>
          </div>
        </li>
        <li>
          <a href="movies.html"><img src="images/r3.jpg" alt=""/></a>
          <div class="slide-title">
            <h4>Finibus Bonorum et Malorum more 'Contrary'</h4>
          </div>
          <div class="date-city">
            <h5>Dec 12-15</h5>
            <h6>Multi-city</h6>
            <div class="buy-tickets">
              <a href="movie-select-show.html">BUY TICKETS</a>
            </div>
          </div>
        </li>
        <li>
          <a href="movies.html"><img src="images/r4.jpg" alt=""/></a>
          <div class="slide-title">
            <h4>Lorem Ipsum is simply Bonorum</h4>
          </div>
          <div class="date-city">
            <h5>Dec 12-15</h5>
            <h6>Multi-city</h6>
            <div class="buy-tickets">
              <a href="movie-select-show.html">BUY TICKETS</a>
            </div>
          </div>
        </li>
        <li>
          <a href="movies.html"><img src="images/r5.jpg" alt=""/></a>
          <div class="slide-title">
            <h4>Lorem Ipsum is simply Bonorum</h4>
          </div>
          <div class="date-city">
            <h5>Dec 12-15</h5>
            <h6>Multi-city</h6>
            <div class="buy-tickets">
              <a href="movie-select-show.html">BUY TICKETS</a>
            </div>
          </div>
        </li>
        <li>
          <a href="movies.html"><img src="images/r6.jpg" alt=""/></a>
          <div class="slide-title">
            <h4>Lorem Ipsum is simply Bonorum</h4>
          </div>
          <div class="date-city">
            <h5>Dec 12-15</h5>
            <h6>Multi-city</h6>
            <div class="buy-tickets">
              <a href="movie-select-show.html">BUY TICKETS</a>
            </div>
          </div>
        </li>
      </ul>
      <script type="text/javascript">
        $(window).load(function () {

          $("#flexiselDemo1").flexisel({
            visibleItems: 5,
            animationSpeed: 1000,
            autoPlay: true,
            autoPlaySpeed: 3000,
            pauseOnHover: false,
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
              portrait: {
                changePoint: 480,
                visibleItems: 2
              },
              landscape: {
                changePoint: 640,
                visibleItems: 3
              },
              tablet: {
                changePoint: 800,
                visibleItems: 4
              }
            }
          });
        });
      </script>
      <script type="text/javascript" src="js/jquery.flexisel.js"></script>
    </div>

    <div class="clearfix"></div>
  </div>
  <div class="clearfix"></div>
</div>
<div class="copy-rights text-center">
  <p>2020 architect 项目 </p>
</div>
</div>
<script type="text/javascript">
  $(document).ready(function () {
    $().UItoTop({
      easingType: 'easeOutQuart'
    });
  });
</script>

</body>
</html>
