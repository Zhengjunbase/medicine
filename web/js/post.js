var app = app || {};
(function($) {
    'use strict';

    function load_hightlight(o) {
        hljs.highlightBlock(o.find('pre')[0]);
    }

    var postId = $('#postid').html();
    $.post('/api/postlist/related/' + postId, {limit:10, p:1}, function(e) {
        if (e.ret == 0) {
            $('#related-posts').replaceWith(e.html);
        }
    })

    $('body').on('click', '.btn-show-answer', function() {
        $(this).hide();
        $('.answer').removeClass('hide');
    })

    // toggle comment
    $('body').on('click', '.post .toggle-comment', function(e) {
        var id = $(this).data('id');
        $(this).parent().parent().find('.comment-container').toggleClass('hide');
    });

    // post reply
    $('body').on('click', '.post-reply', function(e) {
        var textarea = $(this).parent().find('.content');
        var content = textarea.val();
        var isAnonymous = $(this).parent().find('.anonymous')[0].checked;

        var html_content = marked(content);

        $.post('/api/reply/post/' + $(this).data('id'), {
            content: content,
            html_content: html_content,
            anonymous: isAnonymous,
        }, function(e) {
            if (e.ret == 0) {
                show_notify("鍙戝竷鎴愬姛, 绉垎 +10", "success", 2000);
                var new_reply = $(e.html);
                $('.thread').append(new_reply);
                $('.thread').append('<hr>');
                textarea.val('');
                load_hightlight(new_reply);
            } else {
                // TODO error
                show_notify("鍙戝竷澶辫触", "warning", 2000);
            }
        }).error(function(e) {
            if (e.status == 403) {
                show_notify("鍙戝竷澶辫触, 璇峰厛鐧诲綍", "warning", 2000);
            }
        });
    });

    $('body').on('click', '.upvote', function(e) {
        var target = $(this).data('target');
        var action = 'like';
        var id = $(this).data('id');
        var currentCount = $(this).data('vote');
        var that = this;

        $.post('/api/vote/' + action + '/' + target + '/' + id, {}, function(ret) {
            if (ret.ret == 0) {
                $(that).addClass('active');
                $(that).parent().find('.vote-count').html(ret.like.toString());
            }
        })
    });

    // post comment
    $('body').on('click', '.post-comment', function(e) {
        var el_reply_to = $(this).closest('.comment-container').find('.reply-to');
        var target = $(this).data('target');
        var id = $(this).data('id');
        var textarea = $(this).parent().find('textarea');
        var that = this;
        var is_anonymous = $(this).parent().find('.anonymous')[0].checked;
        var post_data = {
            content: textarea.val(),
            anonymous: is_anonymous
        };
        if (!el_reply_to.hasClass('hide')) {
            post_data['reply_comment_id'] = el_reply_to.data('id');
        }
        console.log(post_data);

        $.post('/api/comment/' + target + '/' + id, post_data, function(e) {
            if (e.ret == 0) {
                show_notify("鍙戝竷鎴愬姛", "success", 2000);
                $(that).parent().parent().find('.comment-list').append(e.html);
                textarea.val('');
            } else {
                show_notify("鍙戝竷澶辫触", "warning", 2000);
            }
        }).error(function(e) {
            if (e.status == 403) {
                show_notify("鍙戝竷澶辫触, 璇峰厛鐧诲綍", "warning", 2000);
            }
        });
    });

    $('body').on('click', '.remove-comment', function(e) {
        var id = $(this).data('id');
        $.post('/api/delete/comment/' + id, {}, function(e) {
            if (e.ret == 0) {
                $('#comment-' + id).next().remove();
                $('#comment-' + id).remove();
            }
        })
    });

    $('body').on('click', '.edit-remove', function(e) {
        var target = $(this).data('target');
        var id = $(this).data('id');
        $.post('/api/delete/' + target + '/' + id, {
        }, function(e) {
            if (e.ret == 0) {
                window.location.reload();
            } else {
                show_notify('鍒犻櫎澶辫触', 'error', 3000);
            }
        })
    });

    $('body').on('click', '.cancel-reply-to', function(e) {
        $(this).closest('.reply-to').addClass('hide');
    });

    $('body').on('click', '.reply-comment', function(e) {
        var el_reply_to = $(this).closest('.comment-container').find('.reply-to');
        el_reply_to.removeClass('hide');
        // set reply user name
        el_reply_to.find('.to').html($(this).data('name'));
        // set reply comment id
        el_reply_to.data('id', $(this).data('id'));
        $(this).closest('.comment-container').find('textarea')
            .focus()
            .val('鍥炲 ' + $(this).data('name') + ' : ');
    });

    $('body').on('click', '.toggle-star', function(e) {
        var that = this;
        var target = $(this).data('target');
        var id = $(this).data('id');
        var op = 'add';
        if ($(this).parent().find('i').hasClass('fa-star')) {
            op = 'remove';
        }
        $.post('/api/favorite/' + op + '/' + target + '/' + id, {}, function(e) {
            if (e.ret == 0) {
                if (op == 'add') {
                    $(that).parent().find('.fa-star-o')
                        .removeClass('fa-star-o')
                        .addClass('fa-star');
                    $(that).html("宸叉敹钘�");
                } else {
                    $(that).parent().find('.fa-star')
                        .removeClass('fa-star')
                        .addClass('fa-star-o')
                    $(that).html("鏀惰棌");
                }
            } else {
                show_notify('鎿嶄綔澶辫触: ' + e.msg, 'error', 1000);
            }
        });
    });

    // edit view;
    $('body').on('click', '.edit-btn', function(e) {
        var target = $(this).data('target');
        var id = $(this).data('id');
        $.get('/api/' + target + '/' + id, {
            need_modal: 'true'
        }, function(e) {
            if (e.ret == 0) {

                var EditView = Backbone.View.extend({
                    initialize: function() {
                        this.$el = $(e.modal);
                    },
                    render: function() {
                        this.$el.find("textarea").markdown({
                            autofocus: false,
                            savable: false
                        });
                        return this;
                    },
                });

                var PostEditView = EditView.extend({
                    events: {
                        'click .post-edit-content': 'editContent'
                    },
                    editContent: function() {
                        var n = show_notify('姝ｅ湪杩涜涓�...', 'warning', 0);
                        var content = this.$el.find('.edit-content').val();
                        var html_content = marked(content);
                        var anonymous = this.$el.find('.anonymous')[0].checked;
                        var title = this.$el.find('.title').val();
                        var that = this;
                        $.post('/api/update/' + target + '/' + id, {
                            content: content,
                            html_content : html_content,
                            anonymous: anonymous,
                            title: title,
                            deleted: false,
                        }, function(e) {
                            n.close()
                            if (e.ret == 0) {
                                that.modal.close();
                                $('#post-' + e.post.id).replaceWith(e.html);
                                load_hightlight($('#post-' + e.post.id));
                            } else {
                                show_notify('淇敼閿欒:' + e.msg, 'error', 2000);
                            }
                        });
                    },
                });

                var ReplyEditView = EditView.extend({
                    events: {
                        'click .post-edit-content': 'editContent'
                    },
                    editContent: function() {
                        var content = this.$el.find('.edit-content').val();
                        var anonymous = this.$el.find('.anonymous')[0].checked;
                        var html_content = marked(content);
                        var that = this;
                        $.post('/api/update/' + target + '/' + id, {
                            content: content,
                            anonymous: anonymous,
                            html_content  : html_content,
                            deleted: false,
                        }, function(e) {
                            if (e.ret == 0) {
                                that.modal.close();
                                $('#reply-' + e.reply.id).replaceWith(e.html);
                                load_hightlight($('#reply-' + e.reply.id));
                            } else {
                                show_notify('淇敼閿欒:' + e.msg, 'error', 2000);
                            }
                        });
                    },
                });

                var view = null;
                if (target == 'post') {
                    view = new PostEditView();
                } else {
                    view = new ReplyEditView();
                }

                var modal = new Backbone.BootstrapModal({
                    content: view,
                    showFooter: false,
                    title: '缂栬緫甯栧瓙',
                });
                view.modal = modal;
                modal.open();
            } else {
                // return err
            }
        });
    });

})(jQuery);