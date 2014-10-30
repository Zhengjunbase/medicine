var app = app || {};
(function($) {
    'use strict';

    var LoginModalView = Backbone.View.extend({

        template: tmpl('login_modal_tmpl'),

        events: {
            'click .register-btn': 'registerClick',
            'click .login-btn': 'loginClick',
            'keyup .password' : 'enterPress',
        },

        initialize: function() {},

        registerClick: function() {
            window.location.href = '/user/register'
        },

        enterPress: function() {
            if(event.keyCode == 13){
                this.loginClick();
            }
        },

        loginClick: function() {
            var username = this.$el.find('.username').val();
            var password = this.$el.find('.password').val();
            var that = this;
            $.post('/user/login', {
                username: username,
                password: md5(password)
            }, function(e) {
                if (e.ret != 0) {
                    that.$el.find('.alert').removeClass('hide');
                    that.$el.find('.alert').html(e.msg);
                } else {
                    that.modal.close();
                    $('#nc-nav').html(e.html)
                }
            });
        },

        render: function() {
            this.$el.html(this.template({}));
            return this;
        },

    });

    app.NavView = Backbone.View.extend({

        el: '#nc-nav',

        events: {
            'click .login-btn': 'loginClick',
            'click .register-btn': 'registerClick',
            'click .post-new-btn': 'postNewClick',
        },

        initialize: function() {},

        render: function(page) {},

        registerClick: function() {
            window.location.href = '/user/register'
        },

        postNewClick: function() {
            window.location.href = '/post/new'
        },

        loginClick: function() {
            var loginView = new LoginModalView();
            var modal = new Backbone.BootstrapModal({
                content: loginView,
                showFooter: false,
                title: '鐧诲綍'
            });
            loginView.modal = modal;
            modal.open();
        },
    });


    function checkNotify() {
        if ($('#isloggedin').val() == '1') {
            $.get('/api/notice/unopened/cnt', {}, function(e) {
                if (e.ret == 0) {
                    if (e.cnt > 0) {
                        $('.notify-badge').each(function(idx, o) {
                            $(o).removeClass('hide');
                            $(o).html(e.cnt);
                        });
                    } else {
                        $('.notify-badge').each(function(idx, o) {
                            $(o).addClass('hide');
                        });
                    }
                }
            })
        }
    }
    checkNotify();

    var uid = $('#uid').val();
    if (uid) {
        (function poll(uid){
            var func = function(){
                $.ajax({ url: "http://n.itjob.io/polling?id=" + uid, success: function(data){
                    checkNotify();
                    poll(uid);
                }});
            }
            func();
            setTimeout(func, 120000);
        })(uid);
    }

})(jQuery);