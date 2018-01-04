<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">

<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	
<title>Film Backstage</title>
<style >
@import url(https://fonts.googleapis.com/earlyaccess/notosanstc.css);

*{
/*     border: 1px dotted red;                */
	margin: 0;
    padding: 0;
	font-family: 'Noto Sans TC';
	font-weight: 300;
/* 	color:white; */
}

body{
	
	background-color: #191919;
}
.menu {
	
	width: 100%;
	overflow: auto;
	list-style-type: none;
	margin-top: 30px;
	color: white;
}

.menu li {
	float: left;
	width: 7em;
	font-size: 20px;
	text-align: center;
}

.menu a {
	color: white;
}
.navbar-header span{
color: white;
}


#out {
	text-align: center;
	width:90%;
	border-radius: 30px;
	margin: 10px auto;
	margin-top:140px;
	font-family: Microsoft JhengHei;
	height: auto;
}

body {
	margin: 0;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
	background-image: url("/StarBusterCinima/images/adminBackground.jpg");
	height:auto;

}
.contain{
	width:100%;
	margin:0 auto;
}
#calendar {
	max-width: 50%;
	margin: 50px;
}

.SectionData {
	text-align: center;
	margin: 10px;
	float: right;
}
#aaa {
	text-align: center;	
	position: absolute;
	bottom: 50%;	
	width:20%;
	left:65%; 
}
#d{
	position: absolute;
	bottom: 10%;
	right: 200px;
	width:30%;
	text-align: left;
}
label {
    display: inline-block;
    max-width: 100%;
    margin-bottom: 5px;
    font-weight: 500;
}
.radiospan{
	width:100px;
	float:left;
	text-align: left;
	padding: 0px 20px;
}
.form-check-input{
/* 	margin-right: 0px 20px; */
	
}
input[type=checkbox], input[type=radio]{
margin-left:-10px;
margin-right: 10px;
}
</style>
</head>
<body>
	<div id="nav">
		<div class="navbar navbar-inverse navbar-fixed-top" data-spy="affix"
			data-offset-top="100">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/StarBusterCinima/adminstrator/adminLogout.jsp"><img style="width: 132px"
						class="img-responsive logo" src="/StarBusterCinima/images/SB01.png" alt=""></a>
				</div>

				<div id="navbar" class="collapse navbar-collapse">
					<ul class="menu">
						<li class="active"><a href="#">攔截問答管理</a></li>
						<li><a href="/StarBusterCinima/chat/robotKnowledge.jsp">智識庫管理</a></li>
						<li><a href="/StarBusterCinima/chat/robotChart.jsp">查看統計報表</a></li>
						<li><a href="/StarBusterCinima/chat/robotAdManage.jsp">廣告管理</a></li>
						<li><a href="/StarBusterCinima/chat/filmsection.jsp">電影場次管理</a></li>
						<li><a href="/StarBusterCinima/chat/votebackstage.jsp">活動管理</a></li>
						<li><a href="/StarBusterCinima/chat/insertFilm.jsp">電影新增</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
			<!--/.contatiner -->
		</div>
	</div>


	<div class="jumbotron" id="out">	
	
	<div class="contain">
		<form class="form-horizontal" enctype="multipart/form-data"
				method="post" name="FilmBean" id="insert"
				action='<c:url value="/films/controller/filminsert.controller"/>'>
				
				
				
	<!-- 	int filmId;String filmName;String engName;String lengthOfFilm;
			String genre;String filmLevel;Date udate;Date ddate;
			int weight;String director;String actor;String trailer;
			String shortIntro;String longIntro;
			String posterMedium;String posterLarge;String upstatus;
	 -->
		

		
				<div class="form-group">
					<label class="control-label col-sm-3">中文名稱:<span class="text-danger">*</span></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<input type="text" class="form-control" name="filmName" id="filmName"
							placeholder="請輸入電影中文名稱" value="${filmBean.filmName}" required="required">
						</div>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-3">英文名稱:<span class="text-danger">*</span></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<input type="text" class="form-control" name="engName" id="engName"
							placeholder="請輸入電影英文名稱" value="${filmBean.engName}" required="required">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3">片長(分鐘):<span class="text-danger">*</span></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<input type="text" class="form-control" name="lengthOfFilm" id="lengthOfFilm"
							placeholder="請輸入片長(分鐘)" value="${filmBean.lengthOfFilm}" required="required">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3">類型:<span class="text-danger">*</span></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<input type="text" class="form-control" name="genre" id="genre"
							placeholder="請輸入類型" value="${filmBean.genre}" required="required">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3">分級:<span class="text-danger">*</span></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<input type="text" class="form-control" name="filmLevel" id="filmLevel"
							placeholder="請輸入分級" value="${filmBean.filmLevel}" required="required">
						</div>
					</div>
				</div>
				
				
				<div class="form-group">
					<label class="control-label col-sm-3">上映日期:<span class="text-danger">*</span></label>
						
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<input type="date" class="form-control" name="udate" id="udate" value="${filmBean.udate}">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3">下檔日期:<span class="text-danger">*</span></label>
						
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<input type="date" class="form-control" name="ddate" id="ddate" value="${filmBean.ddate}">
						</div>
					</div>
				</div>
				

				
<!-- 					private String director; -->
<!-- 					private String actor; -->
<!-- 					private String trailer; -->
<!-- 					private String shortIntro; -->
<!-- 					private String longIntro; -->


				<div class="form-group">
					<label class="control-label col-sm-3">導演:<span class="text-danger">*</span></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<input type="text" class="form-control" name="director" id="director"
							placeholder="請輸入導演名稱" value="${filmBean.director}" required="required">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3">演員:<span class="text-danger">*</span></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<input type="text" class="form-control" name="actor" id="actor"
							placeholder="請輸入演員名稱" value="${filmBean.actor}" required="required">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3">預告片連結:<span class="text-danger">*</span></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<input type="text" class="form-control" name="trailer" id="trailer"
							placeholder="請輸入預告片連結" value="${filmBean.trailer}" required="required">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3">電影簡介:<span class="text-danger">*</span></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<textarea  class="form-control" name="shortIntro" id="shortIntro"
							placeholder="請輸入電影簡介" value="${filmBean.shortIntro}" required="required"></textarea>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3">電影介紹:<span class="text-danger">*</span></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
							<textarea  class="form-control" name="longIntro" id="longIntro"
							placeholder="請輸入電影介紹" value="${filmBean.longIntro}" required="longIntro"></textarea>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-3">電影海報:<br></label>
					<div class="col-md-5 col-sm-8">
						<div class="input-group">
<!-- 						<input type="file" name="posterMedium" id="posterMedium" class="form-control upload" -->
							<input type="file"  class="form-control upload" placeholder="" aria-describedby="file_upload">
						</div>
					</div>
				</div>




<!-- 					private String posterMedium; -->
<!-- 					private String posterLarge; -->
<!-- 					private String upstatus; -->


				<div class="form-group">
				<label class="control-label col-sm-3">上映狀態:<span class="text-danger">*</span></label>
				<div class="col-md-5 col-sm-8">
					<div class="radiospan">
					    <input class="form-check-input" type="radio" name="upst" id="show" value="${filmBean.upstatus}" >上映中
					</div>
					<div class="radiospan">
						<input class="form-check-input" type="radio" name="upst" id="down" value="${filmBean.upstatus}" >已下檔
					</div>
					<div class="radiospan">
						<input class="form-check-input" type="radio" name="upst" id="yet" value="${filmBean.upstatus}" >未上映
					</div>
				</div>
				</div>

				<input type="text" name="memberId" id="memberId" value="${filmBean.filmId}" style="display:none" />
				<input type="text" name="weight" id="weight" value="${filmBean.weight}" style="display:none" />
				<input type="text" name="posterMedium" id="posterMedium" value="${filmBean.posterMedium}" style="display:none" />
				<input type="text" name="posterLarge" id="posterLarge" value="${filmBean.posterLarge}" style="display:none" />
				<input type="text" name="upstatus" id="upstatus" value="${filmBean.upstatus}" style="display:none" />
<%-- ${filmBean.upstatus} --%>



				<div class="form-group">
					<div class="col-sm-12">
						<input id="demo1"type="button" value="DEMO1" class="btn btn-primary">
						<input id="demo2"type="button" value="DEMO2" class="btn btn-primary">
						<input name="Submit" type="submit" value="送出" class="btn btn-primary">
					</div>
				</div>
				
		</form>
	</div>
</div>

<script type="text/javascript">
$(document).ready(function(){

// 	$('#longIntro').keyup(function(){
// 		$('#weight').val('1');
// 		$('#posterMedium').val('/StarBusterCinima/images/film/'+$('#filmName').val()+'.jpg');
// 		$('#posterLarge').val('/StarBusterCinima/images/film/'+$('#filmName').val()+'.jpg');
// 	})
	
// 	$(':radio').click(function(){
// 		$('#upstatus').val($(this).attr('id'));
// 	})
	
	$('#demo1').click(function(){
				
		$('#filmId').val('0');
		$('#filmName').val('STAR WARS：最後的絕地武士');
		$('#engName').val('Star Wars: The Last Jedi');
		$('#lengthOfFilm').val('152');
		$('#genre').val('冒險 奇幻 科幻 動作');
		$('#filmLevel').val('保護級');
		$('#udate').val('2018-01-05');
		$('#ddate').val('2018-02-02');
		$('#weight').val('1');
		$('#director').val('萊恩強森');
		$('#actor').val('約翰波耶加 黛西蕾德莉 亞當崔佛  奧斯卡伊薩克露琵塔尼詠歐 多姆納爾格里森');
		$('#trailer').val(' <iframe width="100%" height="500px" src="https://www.youtube.com/embed/o7U3EDp6wyw?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe> ');
		$('#shortIntro').text("擁有強大原始的力量，覺醒的芮是否是這一切的關鍵？原力的平衡、絕地武士的存亡、銀河系的未來…所有的發展都將跟你所想像的不一樣！");
		$('#longIntro').text("故事接續在《STAR WARS：原力覺醒》之後，芮找到了路克，將光劍物歸原主，她請求路克與她返回抵抗勢力，幫助抵抗勢力對抗第一軍團，但路克拒絕了，並向芮揭諸他決定讓絕地武士走入末路的真正原因，以及他與凱羅忍之間的關係。同時，抵抗勢力的戰艦遭受第一軍團的追擊，莉亞公主重傷昏迷，指揮權交接給何朵中將；然而何朵中將的撤退決定，似乎讓抵抗勢力陷入更多的危機，波戴姆倫決定秘密行動，讓芬恩與蘿絲實行潛入史諾克戰艦的秘密任務。而芮在得知她有機會挽救凱羅忍從黑暗面返回光明面後，也動身前往史諾克的戰鑑。原力的平衡、絕地武士的存亡、銀河系的未來…都即將揭曉。");
		$('#upstatus').val('show');
		
		$('#posterMedium').val('/StarBusterCinima/images/film/'+$('#filmName').val()+'.jpg');
		$('#posterLarge').val('/StarBusterCinima/images/film/'+$('#filmName').val()+'.jpg');
		
				
// 		$('#filmId').val('0');
// 		$('#filmName').val('天劫：救贖之戰');
// 		$('#engName').val('Beyond Skyline');
// 		$('#lengthOfFilm').val('101');
// 		$('#genre').val('奇幻 科幻 懸疑 驚悚');
// 		$('#filmLevel').val('輔15級');
// 		$('#udate').val('2018-01-01');
// 		$('#ddate').val('2018-02-02');
// 		$('#weight').val('1');
// 		$('#director').val('連恩歐當諾');
// 		$('#actor').val('法蘭克·葛里洛 寶珍娜·諾娃柯維克 卡爾·穆爾維 伊科·烏艾斯 亞洋·魯辛');
// 		$('#trailer').val(' <iframe width="100%" height="500px" src="https://www.youtube.com/embed/Y1TyWcEt0pM?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe> ');
// 		$('#shortIntro').text("若干年前，牠們曾造訪地球並播種，現在牠們重回地球收成，而收成物就是人類！ 外星物種蹂躪地球，人類唯有誓死反撲。夜晚降臨，天空充滿奇怪的藍色光束。在短時間內，整個城市人口都被吸到一艘大型的外星艦艇。洛杉磯警探馬克（FRANK GRILLO），帶領一群倖存者逃亡，但仍無法躲避外星物種的追捕。");
// 		$('#longIntro').text("《天劫：救贖之戰》導演-連恩歐當諾，曾擔任《天際浩劫》製片。當年《天際浩劫》在全球取得亮麗票房，但電影本身飽受觀眾議論，因此原本預計續集便擱置。但其實連恩歐當諾，相當喜歡電影中外星異種的設計概念，於是買下版權全新發想製作，團隊在募得三千萬美金決定拍攝，風格也與過往大相逕庭，改走R級暴力、血腥戰鬥，在首集基礎上加以創作，擴展到艦艇內秘密和外星物種繁衍計畫，希望將完整的劇情與概念重新表達給觀眾，讓科幻災難片晉升到不同層次。拍攝地點從多倫多的地鐵隧道，到印尼叢林和寮國雄偉寺廟，橫跨美加與亞洲，象徵地球的劫難不斷地蔓延，企圖拍出全新冒險視野。");
// 		$('#upstatus').val('show');
		
// 		$('#posterMedium').val('/StarBusterCinima/images/film/'+$('#filmName').val()+'.jpg');
// 		$('#posterLarge').val('/StarBusterCinima/images/film/'+$('#filmName').val()+'.jpg');
		
	})
	
	
	$('#demo2').click(function(){
				
		$('#filmId').val('0');
		$('#filmName').val('狂獸');
		$('#engName').val('The Brink');
		$('#lengthOfFilm').val('101');
		$('#genre').val('動作 劇情');
		$('#filmLevel').val('輔15級');
		$('#udate').val('2018-01-01');
		$('#ddate').val('2018-02-02');
		$('#weight').val('1');
		$('#director').val('李子俊');
		$('#actor').val('余文樂 張晉 林家棟 文詠珊 林家棟 太保 蘇麗珊 倉田保昭');
		$('#trailer').val(' <iframe width="100%" height="500px" src="https://www.youtube.com/embed/Ofr8tE_HaxQ?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe> ');
		$('#shortIntro').text("《狂獸》是由李子俊執導，鄭保瑞、黃柏高共同監製，張晉、余文樂、文詠珊、吳樾聯合主演的動作片。影片講述了在金錢的誘惑下兄弟相殘、警匪相鬥的故事 。");
		$('#longIntro').text("重案督察西狗（張晉飾）與搭檔阿德（吳樾飾）到某漁村追捕涉嫌多樁兇案的歹徒江貴成（余文樂飾），卻意外發現大量被虐殺的幫派分子屍體和數額驚人的黑市黃金，一場各懷鬼胎的混戰因西狗和阿德的闖入變成了整個江湖針對兩個警察的困獸之鬥。隨著調查，西狗發現擁有超高犯罪才智的江貴成竟然囂張到要藉十號風球的天威，謀劃跨國掠奪一批價值超過五億的海底黑金，自己和阿德竟也成了他計劃中的棋子，不僅得不到警方支援還被通緝，就在此時，阿德被幫派綁架為人質，貴成已經出海，西狗必須獨闖狂風怒海。");
		$('#upstatus').val('show');
		
		$('#posterMedium').val('/StarBusterCinima/images/film/'+$('#filmName').val()+'.jpg');
		$('#posterLarge').val('/StarBusterCinima/images/film/'+$('#filmName').val()+'.jpg');
		
// 		$('#filmId').val('0');
// 		$('#filmName').val('東方快車謀殺案');
// 		$('#engName').val('Murder on the Orient Express');
// 		$('#lengthOfFilm').val('114');
// 		$('#genre').val('動作 冒險 奇幻 科幻');
// 		$('#filmLevel').val('輔12級');
// 		$('#udate').val('2018-01-01');
// 		$('#ddate').val('2018-02-02');
// 		$('#weight').val('1');
// 		$('#director').val('肯尼布萊納');
// 		$('#actor').val('黛西蕾德莉 強尼戴普 茱蒂丹契 黛西蕾德莉');
// 		$('#trailer').val(' <iframe width="100%" height="500px" src="https://www.youtube.com/embed/fNh1agY0UB4?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe> ');
// 		$('#shortIntro').text("英國推理小說作家阿嘉莎克莉絲蒂的傑作將再被重拍，躍上大螢幕。英國才子肯尼斯布萊納執導並主演擁有小小灰色腦細胞的神探赫丘勒白羅，卡司還有茱蒂丹契、強尼戴普、蜜雪兒菲佛、潘妮洛普克魯茲、喬許蓋德、黛西蕾德莉。");
// 		$('#longIntro').text("劇情描述一輛由伊斯坦堡開往歐洲的列車上，夾雜著不同階級、不同年齡層，來自世界各國的人；他們互不相識，卻必須要在一起生活三天。他們在同一個屋簷下睡覺、吃飯，躲也躲不開。三天之後，他們又將分道揚鑣，各奔東西，而且很可能永不再相見，但沒想到一場意外的大雪讓他們受困途中，最令人難以忍受的竟是車上發生了一起可怕的懸疑謀殺案。殺手看似逃之夭夭，但遺留下的線索卻又指向車上的每一位乘客，這樣的與世隔絕狀態讓這些素昧平生的乘客，全因這起案件讓大家的命運糾結在一起，而究竟誰是殺手？誰又是無辜的？一切都將由偵探白羅（肯尼斯布萊納 飾）抽絲剝繭地一一解開。");
// 		$('#upstatus').val('show');
		
// 		$('#posterMedium').val('/StarBusterCinima/images/film/'+$('#filmName').val()+'.jpg');
// 		$('#posterLarge').val('/StarBusterCinima/images/film/'+$('#filmName').val()+'.jpg');
		
	})
	
	
});



</script>







<%-- ${param.username} --%>
<!-- '<c:url value="/filmMgmt/FilmMgmt.Controller" />' -->
</body>
</html>