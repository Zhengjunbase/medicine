<%--
  Created by IntelliJ IDEA.
  User: zhengjun
  Date: 10/8/14
  Time: 19:31
  To change this template use File | Settings | File Templates.
--%>
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

    <link rel="canonical" href="http://itjob.io/post/326">

    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://libs.baidu.com/fontawesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
    <link href="/static/css/style/style.css" rel="stylesheet">
    <style>

        .nav .headimg {
            width: 30px;
            height: 30px;
            margin-right: 5px;
            border-radius: 100%;
        }
        .navbar-nav>.dropdown>a {
            padding-bottom: 10px;
            padding-top: 10px;
        }

        .navbar-nav>.dropdown>.text-dropdown {
            padding-top: 15px;
        }
        .navbar-nav .main-dropdown-menu {
            width : 184px;
        }
    </style>

    <link href="/static/css/style/bootstrap-markdown.min.css" rel='stylesheet' type='text/css'>
    <link href="http://cdn.bootcss.com/highlight.js/8.0/styles/default.min.css" rel="stylesheet">

</head>

<body>
<div id="nc-nav">
    <div id="nc-nav" class="navbar navbar-inverse navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a id="brand" class="navbar-brand" >/* ITJob.IO */</a>
                <script>
                    function getRandomArbitary (min, max) {
                        return Math.floor(Math.random() * (max - min)) + min;
                    }
                    var title = ['/* ITJob.IO */', '[ ITJob.IO ]', '{ ITJob.IO }', '< ITJob.IO />', '( ITJob.IO )', '# ITJob.IO '];
                    var i = getRandomArbitary(0, 6)
                    document.getElementById('brand').innerHTML = title[i];
                </script>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <form class="navbar-form navbar-left navbar-input-group" role="search" action="/search">
                    <div class="form-group">
                        <input id="searchbox" name="q" type="text" class="form-control searchbox" placeholder="">
                    </div>
                    <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                </form>
                <ul class="nav navbar-nav navbar-left">
                    <li class="quiz active"><a href="/">面试题</a></li>
                    <li class="playground"><a href="/play">Playground</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">

                    <input type="hidden" id="isloggedin" value="1" />
                    <input type="hidden" id="uid" value="615" />

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle text-dropdown" data-toggle="dropdown"> 撰写 <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="/post/new">面试题</a></li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src= http://www.gravatar.com/avatar/3ad364568675fdb31fdfc962ed0f6231?s=30&amp;d=identicon  class="headimg" /> noforyes    <span class="badge badge-important notify-badge hide">42</span> <b class="caret"></b></a>
                        <ul class="dropdown-menu main-dropdown-menu">
                            <li><a href="/user/home">我的主页</a></li>
                            <li><a href="/user/profile/615?type=favorite">我的收藏</a></li>
                            <li><a href="/user/profile/615?type=message">消息<span class="badge badge-important pull-right notify-badge hide">42</span> </a></li>
                            <li class="divider"></li>
                            <li><a href="/user/profile/edit">设置</a></li>
                            <li class="divider"></li>
                            <li><a href="/user/logout">登出</a></li>
                        </ul>
                    </li>

                </ul>
            </div>
        </div>
    </div>

</div>

<div class="container main-container">


<div class="row post-view" id="app">
<div class="col-md-8">
<div class="thread">


<div class="hide" id="postid">326</div>
<div class="post" id="post-326">
    <table>
        <tr>
            <td class="votecell">
                <div class="upvote " data-id="326" data-target="post" data-vote="1">
                    <i class="upvote-link"></i>
                </div>
                <div class="vote-count">
                    1
                </div>
            </td>
            <td class="contentcell">
                <div class="post-content">
                    <div class="url">
                        <a class="post-url" href="/post/326" target="_blank">

                            c++哪些运算符不允许重载

                        </a>
                    </div>
                    <div class="post-tags">
                        <div class="post-actions">
                            by

                            <a href="/user/profile/505" class="view-discussion" data-id="505">
                                kakaxi77749 游戏开发
                            </a>

                        </div>
                        <div class="tags">

                        </div>
                    </div>
                    <div class="post-actions">
                        难度系数: <span class="rating" data-score="0" data-id="326"></span> <span id="hint"></span>
                    </div>
                </div>

                <img src="http://www.gravatar.com/avatar/2f357101556b0b35ebbbccf28a2b4d85?s=30&amp;d=identicon" class="headimg pull-right" onclick="javascript:location.href='/user/profile/505'"/>

                <div class="text">





                </div> <!-- /text -->

                <div class="text">

                    <small class="text-muted" style="line-height:35px;">
                        楼主给出的答案:
                    </small>
                    <br/>
                    <button class="btn btn-success btn-show-answer">显示答案</button>
                    <div class="hide answer">

                        <div><p>sizeof<br>条件运算符 : ? (三元)</p>
                            <p>:: 域运算符<br>成员访问 .(点号)</p>
                        </div>

                    </div>

                </div>


                <div class="info">
                    2014-09-22 11:27:49
                    <i class="info-icon fa fa-comment-o"></i> <a href="javascript:void(0)" class="toggle-comment" data-id="326">评论 (0)</a>
                    <i class="info-icon fa fa-star-o"></i> <a href="javascript:void(0)" data-id="326" data-target="post" class="toggle-star">收藏</a>


                </div>

                <div class="comment-container panel panel-default  hide ">
                    <div class="panel-body">
                        <div class="comment-list">

                        </div>
                        <div class="comment-input">
                            <div class="reply-to hide"> 回复 <span class="to"></span> <a href="javascript:void(0)" class="cancel-reply-to">取消</a></div>
                            <textarea class="form-control" rows=1 onkeyup="textAreaAdjust(this)" style="overflow:hidden"></textarea>
                            <label class="checkbox small">
                                <input class="anonymous" type="checkbox"> 匿名发表
                            </label>
                            <button class="btn btn-primary post-comment" data-target="post" data-id="326">评论</button>
                        </div>
                    </div>
                </div>

            </td>
        </tr>
    </table>
</div> <!-- /post -->



<hr/>


<div class="replys">


    <div class="post" id="reply-616">
        <table>
            <tr>
                <td class="votecell">
                    <div class="upvote " data-id="616" data-target="reply" data-vote="0">
                        <i class="upvote-link"></i>
                    </div>
                    <div class="vote-count">
                        0
                    </div>
                </td>
                <td class="contentcell">
                    <div class="post-reply-header">

                        <a href="/user/profile/733" class="view-discussion" data-id="733">
                            老虎虫 <small>转型中...求成功...别退档...</small>
                        </a>
                        <img src="http://www.gravatar.com/avatar/95ea5dcde21cec801df02ea34c93ff92?s=30&amp;d=identicon" class="headimg pull-right" onclick="javascript:location.href='/user/profile/733'"/>

                    </div>
                    <div class="text">


                        <p>“.”  “*” “::” “sizeof”  “?:”</p>



                    </div> <!-- /text -->
                    <div class="info">
                        2014-09-22 22:55:23
                        <i class="info-icon fa fa-comment-o"></i> <a href="javascript:void(0)" class="toggle-comment" data-id="616">评论 (0)</a>
                        <i class="info-icon fa fa-star-o"></i> <a href="javascript:void(0)" data-id="616" data-target="reply" class="toggle-star">收藏</a>


                    </div>

                    <div class="comment-container panel panel-default  hide ">
                        <div class="panel-body">
                            <div class="comment-list">

                            </div>
                            <div class="comment-input">
                                <div class="reply-to hide"> 回复 <span class="to"></span> <a href="javascript:void(0)" class="cancel-reply-to">取消</a></div>
                                <textarea class="form-control" rows=1 onkeyup="textAreaAdjust(this)" style="overflow:hidden"></textarea>
                                <label class="checkbox small">
                                    <input class="anonymous" type="checkbox"> 匿名发表
                                </label>
                                <button class="btn btn-primary post-comment" data-target="reply" data-id="616">评论</button>
                            </div>
                        </div>
                    </div>

    </div>
    </td>
    </tr>
    </table>
</div>
<hr/>


<div class="post" id="reply-617">
    <table>
        <tr>
            <td class="votecell">
                <div class="upvote " data-id="617" data-target="reply" data-vote="0">
                    <i class="upvote-link"></i>
                </div>
                <div class="vote-count">
                    0
                </div>
            </td>
            <td class="contentcell">
                <div class="post-reply-header">

                    <a href="/user/profile/702" class="view-discussion" data-id="702">
                        努力拿offer <small>努力拿offer</small>
                    </a>
                    <img src="http://www.gravatar.com/avatar/4c05f1e9ebaa1b5fd808dab09f9b6c70?s=30&amp;d=identicon" class="headimg pull-right" onclick="javascript:location.href='/user/profile/702'"/>

                </div>
                <div class="text">


                    <p>. ，.* ，:: ，? : ，sizeof，typeid</p>



                </div> <!-- /text -->
                <div class="info">
                    2014-09-22 23:04:33
                    <i class="info-icon fa fa-comment-o"></i> <a href="javascript:void(0)" class="toggle-comment" data-id="617">评论 (0)</a>
                    <i class="info-icon fa fa-star-o"></i> <a href="javascript:void(0)" data-id="617" data-target="reply" class="toggle-star">收藏</a>


                </div>

                <div class="comment-container panel panel-default  hide ">
                    <div class="panel-body">
                        <div class="comment-list">

                        </div>
                        <div class="comment-input">
                            <div class="reply-to hide"> 回复 <span class="to"></span> <a href="javascript:void(0)" class="cancel-reply-to">取消</a></div>
                            <textarea class="form-control" rows=1 onkeyup="textAreaAdjust(this)" style="overflow:hidden"></textarea>
                            <label class="checkbox small">
                                <input class="anonymous" type="checkbox"> 匿名发表
                            </label>
                            <button class="btn btn-primary post-comment" data-target="reply" data-id="617">评论</button>
                        </div>
                    </div>
                </div>

</div>
</td>
</tr>
</table>
</div>
<hr/>


<div class="post" id="reply-622">
    <table>
        <tr>
            <td class="votecell">
                <div class="upvote " data-id="622" data-target="reply" data-vote="0">
                    <i class="upvote-link"></i>
                </div>
                <div class="vote-count">
                    0
                </div>
            </td>
            <td class="contentcell">
                <div class="post-reply-header">

                    <a href="/user/profile/245" class="view-discussion" data-id="245">
                        TIgerSong <small>sxz</small>
                    </a>
                    <img src="http://www.gravatar.com/avatar/f9ca96458edd2e6db53123362aff0af0?s=30&amp;d=identicon" class="headimg pull-right" onclick="javascript:location.href='/user/profile/245'"/>

                </div>
                <div class="text">


                    <div><ol>
                        <li>sizeof   </li>
                        <li>“.”（成员访问运算符）         </li>
                        <li>“.*”（成员指针运算符，例子：<a href="http://www.groad.net/bbs/thread-5548-1-1.html%EF%BC%89" rel="nofollow">http://www.groad.net/bbs/thread-5548-1-1.html）</a>     </li>
                        <li>“::”        </li>
                        <li>“?:”        </li>
                        <li>“typeid”    </li>
                        <li>“const_cast/dynamic_cast/reinterpret_cast/static_cast”</li>
                    </ol>
                        <p>与.和.*对应的-&gt;和.-&gt;可以重载</p>
                        <p>来自C++ Primer第六版</p>
                    </div>


                </div> <!-- /text -->
                <div class="info">
                    2014-09-23 13:17:47
                    <i class="info-icon fa fa-comment-o"></i> <a href="javascript:void(0)" class="toggle-comment" data-id="622">评论 (0)</a>
                    <i class="info-icon fa fa-star-o"></i> <a href="javascript:void(0)" data-id="622" data-target="reply" class="toggle-star">收藏</a>


                </div>

                <div class="comment-container panel panel-default  hide ">
                    <div class="panel-body">
                        <div class="comment-list">

                        </div>
                        <div class="comment-input">
                            <div class="reply-to hide"> 回复 <span class="to"></span> <a href="javascript:void(0)" class="cancel-reply-to">取消</a></div>
                            <textarea class="form-control" rows=1 onkeyup="textAreaAdjust(this)" style="overflow:hidden"></textarea>
                            <label class="checkbox small">
                                <input class="anonymous" type="checkbox"> 匿名发表
                            </label>
                            <button class="btn btn-primary post-comment" data-target="reply" data-id="622">评论</button>
                        </div>
                    </div>
                </div>

</div>
</td>
</tr>
</table>
</div>
<hr/>

</div>

</div> <!-- /thread -->

<div class="nc-reply-form">
    <textarea class="content" data-iconlibrary="fa" data-resize="true" data-provide="markdown" rows="10"></textarea>
    <label class="checkbox">
        <input class="anonymous" type="checkbox"> 匿名发表
    </label>
    <hr/>
    <button class="btn btn-default post-reply" data-id="326">发表</button>
</div>
</div>
<div class="col-md-4">
    <div class="panel threads-panel">
        <div class="panel-title">相关帖子</div>
        <div class="panel-body" id="related-posts">
        </div>
    </div>
</div>


</div>

</div>

<div class="footer">
    <div class="container">
        <hr/>
        <p class="text-muted">@2014 JobIT.io (feedback@itjob.io)</p>
    </div>
</div>




<script src="http://libs.baidu.com/jquery/2.0.3/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="http://libs.baidu.com/underscore/1.3.3/underscore-min.js"></script>
<script src="http://libs.baidu.com/backbone/0.9.2/backbone-min.js"></script>

<script src="/static/components/typeahead.bundle.min.js"></script>
<script src="/static/components/backbone.bootstrap-modal.js"></script>
<script src="/static/components/md5.js"></script>
<script src="/static/js/utils.js"></script>
<script src="/static/js/views/nav.js"></script>

<script>

    var result = {};
    result.lengh = 0;
    var post_list = {};
    var post_item = {};
    result.post_list = post_list;



</script>
<script>
    var app = app || {};
    $(function () {
        'use strict';
        app.nav = new app.NavView();


        // Instantiate the Bloodhound suggestion engine
        var searchResult = new Bloodhound({
            datumTokenizer: function (datum) {
                return Bloodhound.tokenizers.whitespace(datum.value);
            },
            queryTokenizer: Bloodhound.tokenizers.whitespace,
            remote: {
                url: '/api/search?q=%QUERY&offset=0&limit=20',
                filter: function (results) {
                    console.log(results);
                    var post_list = $.map(results.post_list, function (res) {
                        return {
                            value: res.title
                        };
                    });

                    var topic_list = $.map(results.topic_list, function (topic) {
                        return {
                            value: res.title
                        };
                    });

                    return post_list;
                }
            }
        });
        searchResult.initialize();
        $('.searchbox').typeahead(null, {
            displayKey: 'value',
            source: searchResult.ttAdapter()
        });
    });
</script>

<script src="/static/components/marked.js"></script>
<script>
    marked.setOptions({
        gfm: true,
        breaks: true
    });
</script>
<script src="/static/components/bootstrap-markdown.js"></script>
<script src="/static/components/jquery.noty.packaged.min.js"></script>
<script src="/static/components/jquery.raty.min.js"></script>
<script src="/static/js/views/post.js"></script>
<script src="http://cdn.bootcss.com/highlight.js/8.0/highlight.min.js"></script>
<script>
    var app = app || {};

    $(function () {
        'use strict';
        hljs.initHighlightingOnLoad();
        $('.rating').raty({
            score: 0,
            path: '/static/img',
            hints: ['秒杀', '5 分钟内搞定', '会，但需要想一下', '不会', '打死我也不会'],
            target: '#hint',
            click: function(score, evt) {
                $.post('/api/post/rating/' + $(this).data('id'), {rating: score}, function(e){
                });
            }
        });

    });
</script>


</body>
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-53490360-1', 'auto');
    ga('send', 'pageview');
</script>
<script>
//    $("div[class=text]").css("background","red");
//    $(document).ready(function(){
//
//
//    });
//    $(".demo").click(function(){
//        alert("demo clicked");
//    });
</script>
</html>
