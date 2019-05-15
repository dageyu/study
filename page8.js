var func = function (){
    $.ajax({
        type:'POST',
        url:'/admin.php/Order/get_new_order',
        dataType:'json',
        success:function(data){
            console.log(JSON.stringify(data));
            if(data.errno == 0)
            {
                playSound();
            }
        }
    });
}

var playSound = function () {
    var borswer = window.navigator.userAgent.toLowerCase();
    if ( borswer.indexOf( "ie" ) >= 0 )
    {
        //IE内核浏览器
        var strEmbed = '<embed name="embedPlay" src="/admin/image/voice.mp3" autostart="true" hidden="true" loop="false"></embed>';
        if ( $( "body" ).find( "embed" ).length <= 0 )
            $( "body" ).append( strEmbed );
        var embed = document.embedPlay;

        //浏览器不支持 audion，则使用 embed 播放
        embed.volume = 100;
        //embed.play();这个不需要
    } else
    {
        //非IE内核浏览器
        var strAudio = "<audio id='audioPlay' src='/admin/image/voice.mp3' hidden='true'>";

        if($("#audioPlay").length<=0){
            $( "body" ).append( strAudio );
        }

        var audio = document.getElementById( "audioPlay" );

        //浏览器支持 audio
        audio.play();
    }
}

//主动调用
setInterval("func()", 30000);