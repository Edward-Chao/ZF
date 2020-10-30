<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>love line with Miss.Feng</title>

<style type="text/css">
@font-face {
	font-family: digit;
	src: url('digital-7_mono.ttf') format("truetype");
}

</style>

<style>
	.demo{
		position:fixed;
		top: 0;
		left: 0;
		width:100%;
        height:100%;
        min-width: 800px;
        z-index:-10;
        zoom: 1;
        background-color: #fff;
        background: url(sunrise.jpg);
        background-repeat: no-repeat;
        background-size: cover;
		object-fit:cover;

	}
</style>

<link href="css/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/garden.js"></script>
<script type="text/javascript" src="js/functions.js"></script>

</head>
	
<body>

<div id="mainDiv">
	<div id="content">
	<div class="demo"></div>
	<audio autoplay="" loop="loop" hidden="hidden"><source src="StayWithMe.mp3"></audio>
		<div id="code" style="font-size: 16px">			
			<span class="keyword">我真想拉起你的手</span><br />
				逃向初晴的天空和田野<br />
				不畏缩也不回顾<br /><br />

			两个人<br />
			一起走在<br />
			<span class="keyword">变得更好的路上</span><br /><br />


			这种感觉<br />
			真的是<br />
			<span class="keyword">太好了</span><br /><br />

			唯有梦想与好姑娘<br />
			<span class="keyword">不可辜负</span><br /><br />

			<hr />
			<span class="keyword">Brief is life, but love is long. </span><br />
			Miss.Feng<br />
			<span class="keyword"> Please stay with me.</span><br />
		    -- Edward Chao<br />


		</div>
		<div id="loveHeart">
			<canvas id="garden"></canvas>
			<div id="words">
				<div id="messages">
					我们一起观察这个世界已经..
					<div id="elapseClock"></div>
				</div>


			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
var offsetX = $("#loveHeart").width() / 2;
var offsetY = $("#loveHeart").height() / 2 - 55;
var together = new Date();

together.setFullYear(2020, 9, 26);//1.23；3.29
together.setHours(20);
together.setMinutes(10);
together.setSeconds(0);
together.setMilliseconds(0);

if (!document.createElement('canvas').getContext) {
	var msg = document.createElement("div");
	msg.id = "errorMsg";
	msg.innerHTML = "Your browser doesn't support HTML5!<br/>Recommend use Chrome 14+/IE 9+/Firefox 7+/Safari 4+";
	document.body.appendChild(msg);
	$("#code").css("display", "none")
	$("#copyright").css("position", "absolute");
	$("#copyright").css("bottom", "10px");
	document.execCommand("stop");
} else {
	setTimeout(function () {
		startHeartAnimation();
	}, 5000);

	timeElapse(together);
	setInterval(function () {
		timeElapse(together);
	}, 500);

	adjustCodePosition();
	$("#code").typewriter();
}
</script>
<div style="text-align:center;clear:both">
<p>Made for Miss.Feng, made by Edward Chao</p>
<p>All Rights Reserved. Designed by Edward Chao</p>
</div>
</body>
</html>


