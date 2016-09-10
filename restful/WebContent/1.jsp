<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript">
$(function() { 
	$.ajax({
			type : 'get',
			url : 'http://192.168.205.133:8080/interface/webservice/test1/list',
			dataType : 'jsonp',
			jsonp : '_jsonp',
			jsonpCallback : 'callback',
			success : function(data) { 
				/* var html = '';
				$.each(data.obj, function(i, v) {
					html += JSON.stringify(v)+'\n'; 
				});  */
				$("div").text(JSON.stringify(data));
			}
		}); 
	});
</script>
</head>
<body>
<div></div>
</body>
</html>