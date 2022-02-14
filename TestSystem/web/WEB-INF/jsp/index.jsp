<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>主页</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
</head>

<body>
  <!-- 头部 -->
  <h1>火真消防考试系统</h1>

  <!-- 主体 -->
  <div class="body">

    <!-- 左侧导航栏 -->
    <div class="nav">
      <ul>
        <div id="nav" class="qnumber">
        </div>
      </ul>
    </div>

    <!-- 右侧题目 -->
    <div class="question">

      <iframe src="userxingxi" height="100%" width="100%" name="iframe_a"></iframe>

    </div>

  </div>

  <script src="${pageContext.request.contextPath}/js/exam.js"></script>

  <!-- 动态加载题号 -->
  <script>
    window.onload = () => {
      $.ajax({
        type:"GET",
        data: '',
        url:"${pageContext.request.contextPath}/countlist",
        //调用servlet方法
        // data:"action=jQueryAjax",
        success:function (data) {
          // alert("服务器返回的数据是：" + data);
          // var jsonObj = JSON.parse(data);
          //console.log(data);
          alert(data.length);


        },
        //返回数据的格式
        dataType : "json"
      });

      /*const chine = ['一', '二', '三', '四', '五']

      for (let i = 1; i < chine.length; i++) {
        $('#nav').append(`<li>
            <h4 id="part${i}">第${chine[i - 1]}部分</h4>
            <ul id="ul-${i}" class="qnumber${i}">
            </ul>
          </li>`)
        for (let j = 1; j < conut.length; j++) {
          $(`#ul-${i}`).append(`<li><a href="${i}-${j}.html" target="iframe_a"> ${j} </a></li>`)
        }
      }*/



      //  菜单栏收缩

      for (let i = 1; i < 6; i++) {
        $(document).ready(function () {
          $(`.qnumber${i}`).hide();
          $(`#part${i}`).click(function () {
            $(`.qnumber${i}`).slideToggle("slow");
          });
        });
      }
    }

  </script>
</body>

</html>