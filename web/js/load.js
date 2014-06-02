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

        var formData =				{ "name": "Gerry", "age": "20", "city": "Sydney" };

//                	"{ "name": \"Gerry\", \"age\": \"20\", \"city\": \"Sydney\" }";
        console.log("start post"+formData);

//        $.postJSON("FormData", formData, function() {
////            $("#assignedId").val(data.id);
////            showPopup();
//        });
        jQuery.ajax({
//            headers: {
            'Accept': 'application/json',
//            'Content-Type': "text/json; charset=utf-8",
//            },
            'type':"post",
            'url': 'http://localhost:8080/testmaven2/chufang/post',
            'data':JSON.stringify(formData),
            'dataType': 'json',
//            dataType: "text"
            'contentType': "application/json; charset=utf-8"

//            'success': callback
        });
//            $.ajax({
//                type:"post",
//                data: JSON.stringify(formData),
//                url:"http://192.168.1.109:8080/testmaven2/chufang",
//                contentType: "application/json",
//                dataType:"json",
//                success: function aa() {
//                    alert("处方成功提交");
////                    alert(data[0].userName);
//                },
//                error: function() {
//                    alert('fail');
//                }
//            });
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


