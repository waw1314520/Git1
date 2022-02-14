<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎登录考试系统</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<style type="text/css">
.zhukuang {
	width: 1702px;
	height: 464px;
	border: 2px #ccc solid;
	margin: auto;
	margin-top: auto;
	margin-right: auto;
	margin-bottom: auto;
	margin-left: auto;
	margin-top: 45px;
}

.timu {
	border: 1px #ccc solid;
	width: 500px;
	height: 460px;
	float: left;
}

.dati {
	border: 1px #ccc solid;
	width: 698px;
	height: 460px;
	float: left;
}

.xingxi {
	border: 1px #ccc solid;
	width: 498px;
	height: 460px;
	float: left;
}
</style>

<script type="text/javascript">
	function timu(id){
		location.href = "topiclistid?topic_id="+id;
		
	}
</script>

</head>
<body> 
<div class="zhukuang">
	<div class="timu">
		<c:forEach items="${Topic}" var="t" varStatus="j">
			<p class="ti" onclick="timu(${t.topic_id})">
				${j.count}、
				${t.topic_content}
			</p>
		</c:forEach>		
	</div>
	
	<div class="dati">
			<c:forEach items="${topiclistid}" var="t" >
				<p>
				${t.topic_content}
				</p>
				<p>
				<input type="radio" name="topic_examineeanswers"  value='${t.topic_answerA}' >
				A、${t.topic_answerA}
				<input type="radio" name="topic_examineeanswers"  value='${t.topic_answerA}' >
				B、${t.topic_answerB}
				<input type="radio" name="topic_examineeanswers"  value='${t.topic_answerA}' >
				C、${t.topic_answerC}
				<input type="radio" name="topic_examineeanswers"  value='${t.topic_answerA}' >
				D、${t.topic_answerD}
				</p>
			</c:forEach>
	</div>
	
	<div class="xingxi">
	
	</div>
</div>
</body>
</html>