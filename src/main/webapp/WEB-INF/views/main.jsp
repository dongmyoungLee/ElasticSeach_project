<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>국민청원</title>
  <link rel="stylesheet" href="resources/css/common.css">
  <link rel="stylesheet" href="resources/css/detail.css">
  <link rel="stylesheet" href="resources/css/main.css">
</head>
<body>
<main class="wrap">
  <div class="inner_background">
    <div class="center_area">

      <%@include file="header.jsp"%>

      <section class="mid_text_area">
        <h2>국민과 국회가 함께 만들어가는</h2>
        <p>국회참여 입법시스템</p>
      </section>
      <section class="btn_area">
        <div class="left_btn">
          <div>
            <img style="height: 50px;" src="https://petitions.assembly.go.kr/assets/img/main_icon_write.20321d03.png">
          </div>
          <p>청원하기</p>
        </div>
        <div class="right_btn">
          <div>
            <img style="height: 50px;" src="https://petitions.assembly.go.kr/assets/img/main_icon_agree.4907a534.png">
          </div>
          <p>동의하기</p>
        </div>
      </section>
      <section class="search_area">
        <form action="/search" method="post" class="input_wrap">
          <input placeholder="검색어를 입력하세요." class="search_input" type="text" />
        </form>
      </section>
    </div>
  </div>
</main>

</body>
</html>