<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1-1</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/QuestionBank.css">
</head>
<body>
  <!-- 头部 -->
  <div class="head">
    <h1>欢迎登录火真消防考试系统</h1>
    <p class="small">请在左侧选择答题类型及题目！</p>
  </div>

  <!-- 主体 -->
  <div class="body">
  	<h4>个人信息</h4>
  	<p>欢迎您:${User.user_name}</p>
    <p>姓名:${User.user_name}</p>
    <p>身份证:${User.user_identitycard}</p>
    <p>培训机构:${User.user_trainingschool}</p>
  </div>

  <!-- 底部 -->
  <div class="button">
    <input type="reset" value="重置">
    <input type="submit" value="提交">
    <!-- 版权说明 -->
    <p>版权所有&copy;深圳海明科（昆明） YOLO。</p>
  </div>

</body>

</html>