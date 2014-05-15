/**
 * Created by zhengjun on 5/6/14.
 */
$(document).ready(function() {
    $("#myTags").tagit();
    $("#biaoqian").tagit();

    initApend();
    console.log("hello");
    submit();
    });
function initApend()
    {
        var m = $(".mform").html();
        for( i = 0; i<2 ;i++)
        {
        $(".mform").append(m);
        }
        console.log("hello1");

    };
$("test").on("click", function () {
    $(this).select();
    });



$("#test").click(function () {
    $(this).select();
    });
$("[name='my-checkbox']").bootstrapSwitch();
function submit(){
    console.log("submddit");
    var chufang={};
    var marray = new Array();
    var zhengzhuangs = new Array();
    var tags = new Array();

    var basicInfo={"name":"11","age":"11","gender":"d"};
    var medicine={"name":"sdf","weight":"sd","price":"sd"};
    chufang.basicInfo = basicInfo;
    chufang.zhengzhuangs=zhengzhuangs;
    chufang.marray =marray;
    chufang.tags = tags;
    marray.push(medicine);
    marray.push(medicine);
    console.log(chufang.basicInfo.toString());
    console.log(JSON.stringify(chufang));

//    jQuery.post();
}
function getFormData(chufang){
//    chufang.basicInfo.name = ("#name").val();
    var name = $("#name").val();

    console.log(name);

}


