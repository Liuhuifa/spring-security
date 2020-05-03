$(function () {
   $(".submit").on("click",function () {
        var data = $("#form").serialize();
       console.log(data);
       $.post({
            url: "/login",
            data: data,
            success:function (json) {
                alert(json)
            }
        })
   })
});