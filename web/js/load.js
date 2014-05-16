/**
 * Created by zhengjun on 5/6/14.
 */
$(document).ready(function() {
    $('#zhengzhuang').tagit();
    $("#biaoqian").tagit();
    initApend();
    console.log("hello");
    $("#submit").click(function(){
            console.log("submit");
            var chufang={};
            getBasicInfo(chufang);
            getSymptomLists(chufang);
            getMedicineLists(chufang);
            getCustomTagLists(chufang);


            jQuery.ajax({
                type:"post",
                data:chufang,
                url:"addComment!comment.action",
                dataType:"json",
                success: function aa() {
                    alert("处方成功提交");
//                    alert(data[0].userName);/
                }
            });
        console.log(chufang.basicInfo.toString());
            console.log(JSON.stringify(chufang));
        });

    });
function initApend()
    {
        var m = $(".mform").html();
        for( i = 0; i<2 ;i++)
        {
        $(".mform").append(m);
        }

        var m1 = $(".medicineform").html();
        for( i = 0; i<2 ;i++)
        {
            $(".medicineform").append(m1);
        }

        console.log("hello1");

    };


function getBasicInfo(chufang){
    var basicInfo = {};
    basicInfo.name = $(this).find('#name').val() ;
    basicInfo.age = $(this).find('#age').val();
    chufang.basicInfo = basicInfo;

}

function getSymptomLists(chufang){

    var zhengzhuang= $('#zhengzhuang');
    chufang.symptomLists = getTagLists(zhengzhuang);

}

function getCustomTagLists(chufang){

    var biaoqian= $('#biaoqian');
    chufang.customTagLists = getTagLists(biaoqian);
}

function getTagLists(selection){

    var tags = new  Array();
    selection.find('.tagit-label').each(function(){
        tags.push($(this).html());
    });
    return tags;
}

function getMedicineLists(chufang){
    var array = new Array();
    chufang.marray = array;
    $('.medicine').each(function(){
        var medicine={"name":"","weight":""};
        medicine.name = $(this).find('.name').val() ;
        medicine.weight = $(this).find('.weight').val();
        array.push(medicine);
    });
    console.log(chufang);

}


