<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/QuestionBank.css">
</head>

<body>
  <!-- 头部 -->
  <div class="head">
    <h1>这里是第二部分的题</h1>
    <p class="small">这部分是多选题！</p>
  </div>

  <!-- 主体 -->
  <div class="body">
    <p>第二部分的第二题选啥呢？（&nbsp;&nbsp;&nbsp;）</p>
    <form>
      <input type="checkbox" name="choice" value="A">A<br />
      <input type="checkbox" name="choice" value="B">B<br />
      <input type="checkbox" name="choice" value="C">C<br />
      <input type="checkbox" name="choice" value="D">D
    </form>
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