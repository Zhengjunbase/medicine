<%--
  Created by IntelliJ IDEA.
  User: zhengjun
  Date: 5/5/14
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <script src="/js/jquery-1.10.2.js" type="text/javascript" charset="utf-8"></script>
    <script src="/js/jquery-ui-1.9.2.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="/js/tag-it.js" type="text/javascript" charset="utf-8"></script>
    <script src="/js/bootstrap.js"></script>
    <%--<script src="/js/bootstrap-switch.js"></script>--%>
    <script src="/js/load.js"></script>
    <link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap-theme.min.css">

    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <%--<link href="/css/bootstrap-switch.css" rel="stylesheet">--%>
    <link rel="stylesheet" type="text/css" href="/css/jquery-ui-1.10.4.min.css">
    <%--<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/flick/jquery-ui.css">--%>
    <link href="/css/jquery.tagit.css" rel="stylesheet" type="text/css">
    <link href="/css/load.css" rel="stylesheet" type="text/css">
    <link href="/css/button.css" rel="stylesheet" type="text/css">
</head>

<body>
<div class = left-sidebar>
    <p>hello</p>
</div>
<div class = content>
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

        <div>  <br/></div>
        <div>症状<br/></div>
        <div><ul id="zhengzhuang" class = "tags">
            <!-- Existing list items will be pre-added to the tags -->
            <li>Tag1</li> <li>Tag2</li>
        </ul>
        </div>

        <ul class="mform" style="list-style-type:none">
            <li class="mlist">
                <div class="2medicine">
                    <div class="medicine left">
                        <div class="form-group mname" id="test">
                            <label class="sr-only" >Email address</label>
                            <input type="text" class="form-control"  placeholder="">
                        </div>
                        <div class="input-group gleft ">
                            <input type="email" class="form-control"  placeholder="10">
                            <span class="input-group-addon ">g</span>
                        </div>
                    </div>

                    <div class="medicine ">
                        <div class="form-group mname">
                            <label class="sr-only" >Email address</label>
                            <input type="text" class="form-control"  placeholder="">
                        </div>
                        <div class="input-group gright">
                            <input type="text" class="form-control"  placeholder="10" onfocus="this.select" >
                            <span class="input-group-addon ">g</span>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
        <%--<button type="submit" class="btn btn-default">Sign in</button>--%>

    </form>
    <div><ul id="biaoqian" class = "tags">
        <!-- Existing list items will be pre-added to the tags -->
        <%--<li>Tag1</li> <li>Tag2</li>--%>
    </ul>
    <div id="submit">
        <a href="#" class="button glow button-rounded button-flat-action">press me</a>
    </div>
    </div>

    <p class="pa"> hellodd</p>

</div>
<div class = right-sidebar>

</div>
</body>
</html>
