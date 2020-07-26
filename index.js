document.querySelector(".sound").addEventListener("click" , point);
function point()
{
var audio = new Audio("song/your_name.mp3");
audio.play();
}