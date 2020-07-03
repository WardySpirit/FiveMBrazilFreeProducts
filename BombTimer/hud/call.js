
$(function(){
    window.onload = function(e){
        $('.container').hide();
        window.addEventListener("message", (event) => {
            var item = event.data;
            if(item !== undefined && item.type === "ui"){
                if(item.display === true){
                    $('.container').show();
                }
            }
            $('#exit').click(function(){
                $('.container').hide();
                $.post("http://bombtimer/quit", JSON.stringify({}));
                return;
            })
        })
    }
})