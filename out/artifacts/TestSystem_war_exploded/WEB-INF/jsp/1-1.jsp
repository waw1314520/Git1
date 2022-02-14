<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>1-1</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/QuestionBank.css">
</head>

<body>
  <!-- 头部 -->
  <div class="head">
    <h1>这里是第一部分</h1>
    <p class="small">本部分是单选题！</p>
  </div>

  <!-- 主体 -->
  <div class="body">
  	<c:forEach items="${topiclistid}" var="t">
	 <%--  第${count}题&nbsp;&nbsp;&nbsp; --%>
	 ${t.topic_content.replaceAll('/r/n','</br>')}
	    <p>
		<input type="radio" name="topic_examineeanswers"  value='A' >
		A、
		<input type="radio" name="topic_examineeanswers"  value='B' >
		B、
		<input type="radio" name="topic_examineeanswers"  value='C' >
		C、
		<input type="radio" name="topic_examineeanswers"  value='D' >
		D、
		</p>
    </c:forEach>
  </div>
</body>

</html>