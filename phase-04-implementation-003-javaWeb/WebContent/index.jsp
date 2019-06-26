<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.background1 {
	background-image: url(/static/imgs/pic008.jpg);
	background-color: #000000;
	background-repeat: no-repeat;
}
</style> 
<script>
	//#img.source-image {width: 100%;position: absolute;top: 0;left: 0;}
	function run(clickedObj) {
		$("#firstline").fadeOut('slow');
		$('#intr')[0].pause();
		$(clickedObj).animate({
			width : '150px',
			opacity : '0.7',
			left : '90%',
			bottom : '10px'
			}, 10000,
			function()
			{
				$(clickedObj).animate({
					width : '100px',
					opacity : '0.5',
					left : '10px',
					top : '10px'
					}, 10000,
					function()
					{
						$(clickedObj).animate({
							width : '10px',
							opacity : '0.2',
							left : '10px',
							top : '90%'
							}, 10000
						);	
					}
				);	
			}
		);
		$("#moviebox").show('slow');
		$("#movie")[0].play();
	}
	function onVideoEnd(){
		
		$('#poem')[0].play();
		
		$('#poem-txt').fadeIn('slow');
		
		$('#poem-txt').animate({
			fontSize : '40px',
		    top:  '30%',
		    left: '33%'
		}, 3000);
		
		$("#moviebox").fadeOut('slow');
		
	}
	function onPoemEnd(){
		
		$("#intr_music").fadeIn('slow');

		$("#intr_music").animate({
			fontSize : '40px',
		    top:  '25%',
		    left: '100px'
		}, 3000);
		
		$('#poem-txt').fadeOut('slow');
		
		$('#waiting')[0].play();//歌曲播放
		
	}
	function onWaitingAudioEnd(){
		$("#hornor").fadeIn('slow');
		$("#hornor").animate({
			fontSize : '40px',
		    top:  '25%',
		    left: '100px'
		}, 3000);
		$('#intr_music').fadeOut('slow');	
	}
</script>
<meta charset="UTF-8">
<title>The Wandering Earth</title>
<script src="/static/jquery.min.js"></script>
</head>
<body class="background1">
	<audio id="intr" controls="controls"
		src="/static/audio/introduction.mp3" autoplay="autoplay"></audio>
	<audio id="poem" src="/static/audio/wanderingEarch-poem.mp3"
		preload="auto" onended="onPoemEnd();"></audio>
    <span id="firstline" style="font-size: 22px; color: white"> <br/>大家好，我与这学期学习“软件工程导论”的学生们准备设计和实现一个“<span
		style="font-size: 38px; color: red">流浪地球</span>”的模拟工程！ 欢迎大家观赏,谢谢！点击屏幕左下角的地球，可以开始悲壮的流浪！！
	</span>
	<audio id="waiting" src="/static/audio/like_a_star.mp3" preload="auto" onended="onWaitingAudioEnd();"></audio>
	<div id="poem-txt"
		style="display: none; font-size: 22px; color: orange; position:absolute; right: 100px;bottom: 100px" >
		《诗词版"流浪地球"》<br /> <span style="font-size: 18px; color: white">
			-郭鹏 </span><br /> <br /> 西风吹皱东方河，万年地球白发多。 <br /> 流浪星际家何去，满船清梦出银河。
	</div>
	<img src="/static/imgs/earth.png"
		style="position: absolute; left: 10px; bottom: 10px; width: 300px"
		onclick="run(this);return false" 
		title="点击后，开始流浪 ！"
		/>
	<div id="moviebox" style="margin-top: 100px; display: none"
		align="center">
		<video id="movie" height="500px" controls="controls"
			src="/static/video/movie.mp4" onended="onVideoEnd();" ></video>
	</div>
	<div id="hornor" style="display:none;position:absolute;left:10x; bottom:10px;color:white;font-size:24px" align="center">2019年发生了很多大事，谨以此向<span style="color:red">《流浪地球》</span>和<span style="color:orange">华为公司</span>表示致敬 !  <br/>本网页未来将放在以下网站 sdlc.huaku-2019.xyz (华为公司的云服务器) <br/> huaku-2019, 2019 年，《流浪地球》 和华为很酷！ <br/>也许华为的崛起意味着，在人类未来需要流浪地球时，东方大国将作出巨大的贡献 ！</div>

	<div id="intr_music" style="display:none;position:absolute;left:95%; bottom:10px;color:white;font-size:12px" align="left">前奏泛音星星点点，宛若置身银河，拍打着水面，随后是闷音加上击弦，干净利落。逐渐情感<br/>上升，迎来了高潮，扫弦每一下都十分干脆！每一下虽然打在弦上，但却打进人的心里去。接<br/>着乘势一段左手点弦，右手打板，节奏鲜明。又是一段扫弦，比上一段更加激烈，这时你已被<br/>吸引到作者的故事里。<br/>                                                                                         ——金英素《Like a star》</div>
</body>
</html>