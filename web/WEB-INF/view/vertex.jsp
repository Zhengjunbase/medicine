<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>面试题:  c++哪些运算符不允许重载 </title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <%--<link rel="canonical" href="http://itjob.io/post/326">--%>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="/css/bootstrap3-wysihtml5.css">
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <script src="/js/bootstrap3-wysihtml5.js"></script>
    <script src="/js/wysihtml5-0.3.0_rc2.min.js"></script>

    <script src="http://cdn.bootcss.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <link href="http://libs.baidu.com/fontawesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
    <link href="http://cdn.bootcss.com/highlight.js/8.0/styles/default.min.css" rel="stylesheet">

</head>

<style>

    .navbar-brand{
        margin-left:50px;
        /*margin-right: 0px;*/
    }
    .nav {
        font-size: 18px;
    }
    .dropdown{
        margin-right: 50px;
    }
</style>
<body>
<nav class="navbar navbar-default" role="navigation">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">Brand</a>
    </div>
    <form class="navbar-form navbar-left navbar-input-group" role="search" action="/search">
        <div class="form-group">
            <input id="searchbox" name="q" type="text" class="form-control searchbox" placeholder="">
        </div>
        <button type="submit" ref ="#" class="btn btn-primary"><i class="fa fa-search"></i></button>
    </form>

    <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">个人信息 <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="#">我的主页</a></li>
                <li><a href="#">我的收藏</a></li>
                <li><a href="#">设置</a></li>
                <%--<li class="divider"></li>--%>
                <li><a href="#">登出</a></li>
            </ul>
        </li>
    </ul>

</nav>

<div class="container">
    <div class="row post-view" id="app">
        <div class="col-md-8">
            <div class="nodeInfos">
            </div>
            <div class="reples">
                <div class="post" id="">
                    <table>
                        <tr>
                            <td class="votecell">
                                <div class="upvote " data-id="669" data-target="reply" data-vote="0">
                                    <i class="upvote-link"></i>
                                </div>
                            </td>
                            <td class="contentcell">
                                <div class="post-reply-header">

                                    <a href="/user/profile/771" class="view-discussion" data-id="771">
                                        aa <small></small>
                                    </a>
                                </div>
                                <div class="text">
                                    <p>1.hashMap去掉了HashTable 的contains方法，但是加上了containsValue（）和containsKey（）方法；<br>
                                        2.hashTable同步的，而HashMap是非同步的，效率上比hashTable要高；<br>
                                        3.hashMap允许空键值，而hashTable不允许。</p>
                                </div> <!-- /text -->
                                <div class="info">
                                    2014-10-23 13:16:03
                                    <i class="info-icon fa fa-comment-o"></i> <a href="javascript:void(0)" class="toggle-comment" data-id="669">评论 (0)</a>
                                    <i class="info-icon fa fa-star-o"></i> <a href="javascript:void(0)" data-id="669" data-target="reply" class="toggle-star">收藏</a>


                                </div>

                                <div class="comment-container panel panel-default  hide ">
                                    <div class="panel-body">
                                        <div class="comment-list">

                                        </div>
                                        <div class="comment-input">
                                            <div class="reply-to hide"> 回复 <span class="to"></span> <a href="javascript:void(0)" class="cancel-reply-to">取消</a></div>
                                            <textarea class="form-control" rows="1" onkeyup="textAreaAdjust(this)" style="overflow:hidden"></textarea>
                                            <label class="checkbox small">
                                                <input class="anonymous" type="checkbox"> 匿名发表
                                            </label>
                                            <button class="btn btn-primary post-comment" data-target="reply" data-id="669">评论</button>
                                        </div>
                                    </div>
                                </div>


                            </td>
                        </tr>
                    </table>

                </div>
                <hr/>
            </div>
            <textarea id="some-textarea" placeholder="Enter text ..."></textarea>
            <script type="text/javascript">
                $('#some-textarea').wysihtml5();
            </script>
         </div>


<div class="col-md-4">
    <div class="panel threads-panel">
        <div class="panel-title">相关帖子</div>
        <div class="panel-body" id="related-posts">
        </div>
    </div>
    <textarea id="some-textarea" placeholder="Enter text ..."></textarea>
    <script type="text/javascript">
        $('#some-textarea').wysihtml5();
    </script>
</div>
    </div>
</div>
</body>
</html>