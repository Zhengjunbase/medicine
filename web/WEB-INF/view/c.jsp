<%--
  Created by IntelliJ IDEA.
  User: zhengjun
  Date: 5/16/14
  Time: 8:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>hello</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <script src="/js/jquery-1.10.2.js" type="text/javascript" charset="utf-8"></script>
    <script src="/js/jquery-ui-1.9.2.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="/js/tag-it.js" type="text/javascript" charset="utf-8"></script>
    <%--<script src="/js/bootstrap.js"></script>--%>
    <%--<script src="/js/bootstrap-switch.js"></script>--%>
    <script src="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>

    <script src="/js/load.js"></script>
    <link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap-theme.min.css">

    <%--<link href="/css/bootstrap.min.css" rel="stylesheet">--%>
    <link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap.min.css">

<%--<link href="/css/bootstrap-switch.css" rel="stylesheet">--%>
    <link rel="stylesheet" type="text/css" href="/css/jquery-ui-1.10.4.min.css">
    <%--<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/flick/jquery-ui.css">--%>
    <link href="/css/jquery.tagit.css" rel="stylesheet" type="text/css">
    <link href="/css/load.css" rel="stylesheet" type="text/css">
    <link href="/css/button.css" rel="stylesheet" type="text/css">

    <style>
       div .col-xs-6 {
           border: solid 1px #39B2E2;

           /*background: blue;*/
        }
    </style>

</head>
<body>


<header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
    <%--::before--%>
    <div class="container">
        <%--::before--%>
        <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="./" class="navbar-brand">Bootstrap</a>
        </div>
        <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
            <ul class="nav navbar-nav">
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="">医生登录</a>
                </li>
                <li>
                    <a href="">管理员登录</a>
                </li>
            </ul>
        </nav>
        <%--::after--%>
    </div>
    <%--::after--%>
</header>

<div class="bs-header" id="content">
    <div class="container">
        <h1>""</h1>
        <%--<p>设置全局CSS样式，基本的HTML元素均可以通过class设置样式并得到增强效果，还有先进的栅格系统。</p>--%>

    </div>
</div>

<div class="container bs-docs-container">
    <div class="row ">
        <div class="col-md-2">
            <div class="bs-sidebar hidden-print affix" role="complementary">
            sdfsdfs
            </div>
        </div>
        <div class="col-md-8 content ">
            <div class="row">
                <form class="form-inline" role="form" >
                    <div class="form-group">
                        <label class="sr-only">Email address</label>
                        <input type="email" class="form-control" id = "name" placeholder="姓名">
                    </div>
                    <div class="form-group">
                        <label class="sr-only" >Password</label>
                        <input type="password" class="form-control" id="age" placeholder="年龄">
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="male"> 男
                        </label>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id ="female"> 女
                        </label>
                    </div>
                </form>
            </div>
            <div class="row">
               <p>症状</p>
            </div>

            <div class="row">
                <div><ul id="zhengzhuang" class = "tags">
                </ul>
                </div>
            </div>

            <div class="medicineform">
                <div class="row medicine-line">
                    <div class="medicine left">
                        <div class="form-group mname" >
                            <input type="text" class="form-control name"  placeholder="">
                        </div>
                        <div class="input-group gleft ">
                            <input type="email" class="form-control weight"  placeholder="10">
                            <span class="input-group-addon ">g</span>
                        </div>
                    </div>

                    <div class="medicine right">
                        <div class="form-group mname">
                            <input type="text" class="form-control name"  placeholder="">
                        </div>
                        <div class="input-group gright">
                            <input type="text" class="form-control weight"  placeholder="10" onfocus="this.select" >
                            <span class="input-group-addon ">g</span>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                <div><ul id="biaoqian" class = "tags">
                    </ul>
                </div>
            </div>

            <div class="row" id="submit">
                <button type="button" class="btn btn-primary">保存处方</button>
            </div>

       </div>

        <div class="col-md-2">
            <div class="bs-sidebar hidden-print affix" role="complementary">
                sdfsdfs
            </div>
        </div>

    </div>
</div>

</body>
</html>
