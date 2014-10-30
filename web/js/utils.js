Date.prototype.Format = function (fmt) {
    var o = {
        "M+": this.getMonth() + 1,
        "d+": this.getDate(),
        "h+": this.getHours(),
        "m+": this.getMinutes(),
        "s+": this.getSeconds(),
        "q+": Math.floor((this.getMonth() + 3) / 3),
        "S": this.getMilliseconds()
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}

function tmpl(tmpl_name) {
    if ( !tmpl.tmpl_cache ) {
        tmpl.tmpl_cache = {};
    }

    if ( ! tmpl.tmpl_cache[tmpl_name] ) {
        var tmpl_dir = '/static/js/templates';
        var tmpl_url = tmpl_dir + '/' + tmpl_name + '.html';

        var tmpl_string;
        $.ajax({
            url: tmpl_url,
            method: 'GET',
            async: false,
            success: function(data) {
                tmpl_string = data;
            }
        });

        tmpl.tmpl_cache[tmpl_name] = _.template(tmpl_string);
    }

    return tmpl.tmpl_cache[tmpl_name];
}

function ts_to_date(ts) {
    return new Date().Format("yyyy-MM-dd hh:mm:ss");
}

function textAreaAdjust(o) {
    o.style.height = "1px";
    o.style.height = (2 + o.scrollHeight)+"px";
}

function show_notify(text, type, ttl) {
    var n = noty({text: text, type: type, layout: "topCenter"});
    if (ttl > 0) {
        var t = setTimeout(function() {
            n.close();
            clearTimeout(t);
        }, ttl);
    }
    return n;
}

var changeURLPar = function(destiny, par, par_value) {
    var pattern = par+'=([^&]*)';
    var replaceText = par+'='+par_value;
    if (destiny.match(pattern)) {
        var tmp = '/\\'+par+'=[^&]*/';
        tmp = destiny.replace(eval(tmp), replaceText);
        return (tmp);
    }
    else {
        if (destiny.match('[\?]')) {
            return destiny+'&'+ replaceText;
        }
        else {
            return destiny+'?'+replaceText;
        }
    }
    return destiny+'\n'+par+'\n'+par_value;
}

$('.go-page').click(function(e) {
    var page = $(this).data('p');

    var new_url = window.location.href;
    new_url = changeURLPar(new_url, "p", page);
    window.location.href = new_url;
})
