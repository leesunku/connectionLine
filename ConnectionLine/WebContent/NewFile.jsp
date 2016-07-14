<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="connectionLine.js"></script>

<script>
var data = new Array();
var item = [  
   [  
      {  
         "x":1,
         "y":1
      },
      {  
         "x":3,
         "y":5
      }
   ],
   [  
      {  
         "x":1,
         "y":4
      },
      {  
         "x":2,
         "y":1
      },
      {  
         "x":3,
         "y":2
      }
   ],
   [  
      {  
         "x":1,
         "y":3
      },
      {  
         "x":2,
         "y":2
      },
      {  
         "x":3,
         "y":4
      }
   ]
];
</script>

<style>
table { border-collapse:collapse; } 
table th, table td { border:0.1px solid black; }
</style>
</head>
<body style="margin-top: 0px; margin-left: 0px;">
<div id="tableDiv" style='position:relative; padding: 10px;' >
<table border="1px solid black">
	<tbody>
		<tr>
			<th></th>
			<th>맛잇다</th>
			<th>좋다</th>
			<th>시원한</th>
		</tr>
		<tr>
			<td>1</td>
			<td>맥주</td>
			<td>안주</td>
			<td>맥주</td>
		</tr>
		<tr>
			<td>2</td>
			<td>너무</td>
			<td>맥주</td>
			<td>맥주한잔</td>
		</tr>
		<tr>
			<td>3</td>
			<td>안주</td>
			<td>목넘김</td>
			<td>생맥주</td>
		</tr>
		<tr>
			<td>4</td>
			<td>진짜</td>
			<td>너무</td>
			<td>생맥</td>
		</tr>
		<tr>
			<td>5</td>
			<td>치킨</td>
			<td>맥주안주</td>
			<td>치킨</td>
		</tr>
	</tbody>
</table>
</div>
<script type="text/javascript">
$(function(){
	var colorArray = ["red", "green", "blue", "gold", "yellow", "pink", "black"];
	for(var itemIndex = 0; itemIndex < item.length;itemIndex++){
		for(var itemChildIndex = 0; itemChildIndex< item[itemIndex].length; itemChildIndex++ ){
			if(typeof item[itemIndex][itemChildIndex + 1] != "undefined"){
				var x1 = item[itemIndex][itemChildIndex].x;
				var y1 = item[itemIndex][itemChildIndex].y;
				var x2 = item[itemIndex][itemChildIndex+1].x;
				var y2 = item[itemIndex][itemChildIndex+1].y;
				var cn = connectionLine;
				cn.setParentsDivId($("#tableDiv"));
				cn.setStartPoint($("table").find("tr").eq(item[itemIndex][itemChildIndex].y).find("td").eq(item[itemIndex][itemChildIndex].x));
				cn.setEndPoint($("table").find("tr").eq(item[itemIndex][itemChildIndex+1].y).find("td").eq(item[itemIndex][itemChildIndex+1].x));
				cn.setLineColor(colorArray[itemIndex]);
				cn.createLine();
			}
		}
	}
	/* var cn = connectionLine;
	cn.setParentsDivId($("#tableDiv"));
	cn.setStartPoint($("table").find("tr").eq(4).find("td").eq(1));
	cn.setEndPoint($("table").find("tr").eq(1).find("td").eq(3));
	cn.setLineColor("blue");
	cn.createLine();  */
	
	/* var td = $("table").find("tr").eq(5).find("td").eq(1);
	var td2 = $("table").find("tr").eq(3).find("td").eq(3);
	//alert($("table").find("tr").eq(1).find("td").eq(2).text());
	td.css("backgroundColor", "green");
	td2.css("backgroundColor", "green");
	//alert($("table").find("tr").eq(1).find("td").eq(2).width());
	
	var offset = td.offset();
	var startPointRight = td.width() + offset.left + 1;
	var startPointTop = (td.height() * 0.5) + offset.top;
	
	var offset2 = td2.offset();
	var endPointRight = offset2.left;
	var endPointTop = (td2.height() * 0.5) + offset2.top;
	
	var svgHeidht = startPointTop - endPointTop + 1;
	var svgWidth = endPointRight - startPointRight;
	var sss = startPointTop - svgHeidht;
	$("#tableDiv").append(
			"<div style='position:absolute; top:" + sss + "px; left:" + startPointRight + "px;'><svg height='" + svgHeidht + "' width='" + svgWidth + "'> "
			+"<line x1='0' y1='" + svgHeidht + "' x2='" + svgWidth + "' y2='0' style='stroke:green;stroke-width:1' />"
			+"  Sorry, your browser does not support inline SVG."
			+"</svg></div>"
	);  */
});
</script>
</body>
</html>