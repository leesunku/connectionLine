<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="connectionLine.js"></script>

</head>
<body style="margin-top: 0px; margin-left: 0px;" id = "startDIv">
<div style="width: 500px; height: 200px; float: left;">
<button id="startPointId1" data="0"> 시작 포인트</button> </br>
<button id="startPointId2" data="1"> 시작 포인트 </button> </br>
<button id="startPointId3" data="2"> 시작 포인트 </button> </br>
<button id="startPointId4" data="3"> 시작 포인트 </button> </br>
<button id="startPointId5" data="4"> 시작 포인트 </button> </br>
<button id="startPointId6" data="5"> 시작 포인트 </button>
</div>
<div style="width: 500px; height: 200px; float: right;" id = "endDIv">
<button id="endPointId1" data="0"> 끝 포인트 </button> </br>
<button id="endPointId2" data="1"> 끝 포인트 </button> </br>
<button id="endPointId3" data="2"> 끝 포인트 </button> </br>
<button id="endPointId4" data="3"> 끝 포인트 </button> </br>
<button id="endPointId5" data="4"> 끝 포인트 </button> </br>
<button id="endPointId6" data="5"> 끝 포인트 </button>

</div>
<script type="text/javascript">
$(function(){
	
	var colorArray = ["red", "green", "blue", "gold", "yellow", "pink", "black"];
	var startPointValue = $("#startPointId1");
	var endPointValue = $("#endPointId1");
	
	$("#endDIv button").click(function(){
		endPointValue = $(this);
		var cn = connectionLine;
		cn.setParentsDivId($("body"));
		cn.setStartPoint(startPointValue);
		cn.setEndPoint(endPointValue);
		cn.setLineColor(colorArray[$(this).attr("data")]);
		cn.createLine();
	}),
	$("#startDIv button").click(function(){
		startPointValue = $(this);
		var cn = connectionLine;
		cn.setParentsDivId($("body"));
		cn.setStartPoint(startPointValue);
		cn.setEndPoint(endPointValue);
		cn.setLineColor(colorArray[$(this).attr("data")]);
		cn.createLine();
	});
});
</script>
</body>
</html>