/**
 * Created by Jakob on 22.11.2015.
 */
$("button").click(do_it);

function do_it() {
    var obj = {}, txt="";
    if (this.id == "video") {
        obj = {
            video: true,
            audio: true
        };
        txt = "<video>";
    } else if (this.id == "sound"){
        obj = {
            video: false,
            audio: true
        };
        txt = "<audio>";
    }
    navigator.webkitGetUserMedia(obj, function(stream) {
        $("#result").empty();
        var output = $(txt).appendTo("#result")[0],
            source = window.webkitURL.createObjectURL(stream);
        output.autoplay = true;
        output.src = source;
        console.log(stream);
        window.a = stream; //debug
        $("span#name").html("Camera name: <b>" + stream.videoTracks[0].label + "</b><br>" + "Mic name: <b>" + stream.audioTracks[0].label + "</b>");
    }, function(err) {
        console.log(err);
        err.code == 1 && (alert("You can click the button again anytime to enable."))
    });
}