var 
	parentsDivId = "",
	startPointLeft = "",
	startPointTop = "",
	endPointLeft = "",
	endPointTop = "",
	lineColor = "",
	svgTop ="",
	svgLeft = "",
	svgWidth = "",
	svgHeidht = "",
	coordinateX1 = "",
	coordinateY1 = "",
	coordinateX2 = "",
	coordinateY2 = "",
	
	connectionLine = 
	{
		setParentsDivId : function(divId){
			parentsDivId = divId;
		},
		getParentsDivId : function(){
			return parentsDivId;
		},
		
		setStartPoint : function(startNode) {
			var  offset = startNode.offset();
			startPointLeft = startNode.width() + offset.left + 1,
			startPointTop = (startNode.height() * 0.5) + offset.top
		},
		getStartPointLeft : function(){
			return startPointLeft;
		},
		getStartPointTop : function(){
			return startPointTop;
		},
		
		setEndPoint : function(endNode){
			var
			offset = endNode.offset();
			endPointLeft = offset.left,
			endPointTop = (endNode.height() * 0.5) + offset.top
		},
		getEndPointLeft : function(){
			return endPointLeft;
		},
		getEndPointTop : function(){
			return endPointTop;
		},
			
		setLineColor : function(color){
			lineColor = color;
		},
		getLineColor : function(){
			return lineColor;
		},
		
		createLine : function(){
			if (startPointTop<=endPointTop){
				svgTop = startPointTop,
				svgLeft = startPointLeft,
				svgHeidht = endPointTop - startPointTop + 1,
				svgWidth = endPointLeft - startPointLeft + 1,
				coordinateX1 = "0",
				coordinateY1 = "0",
				coordinateX2 = svgWidth,
				coordinateY2 = svgHeidht,
				parentsDivId.append(
						"<div style='position:absolute; top:" + svgTop + "px; left:" + svgLeft + "px;'><svg height='" + svgHeidht + "' width='" + svgWidth + "'> "
						+"<line x1='" + coordinateX1 + "' y1='" + coordinateY1 + "' x2='" + coordinateX2 + "' y2='" + coordinateY2 + "' style='stroke:" + lineColor + ";stroke-width:0.5' />"
						+"  Sorry, your browser does not support inline SVG."
						+"</svg></div>"
				);
			} else if(startPointTop>endPointTop){
				svgTop = startPointTop - svgHeidht;
				svgLeft = startPointLeft,
				svgHeidht = startPointTop - endPointTop + 1,
				svgWidth = endPointLeft - startPointLeft + 1,
				coordinateX1 = "0",
				coordinateY1 = svgHeidht,
				coordinateX2 = svgWidth,
				coordinateY2 = "0",
				parentsDivId.append(
						"<div style='position:absolute; top:" + svgTop + "px; left:" + svgLeft + "px;'><svg height='" + svgHeidht + "' width='" + svgWidth + "'> "
						+"<line x1='" + coordinateX1 + "' y1='" + coordinateY1 + "' x2='" + coordinateX2 + "' y2='" + coordinateY2 + "' style='stroke:" + lineColor + ";stroke-width:0.5' />"
						+"  Sorry, your browser does not support inline SVG."
						+"</svg></div>"
				);
			}
	}
	}