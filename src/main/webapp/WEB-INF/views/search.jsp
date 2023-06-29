<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>국민청원</title>
  <style>
    /* Reset.css */

    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR:wght@400;500;700&display=swap');
    @import url("https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard.css");


    /* Remove default margin and padding */
    body, h1, h2, h3, h4, h5, h6, p, ol, ul {
      margin: 0;
      padding: 0;
      font-family: Pretendard;
    }

    /* Set default font size and family */
    body, button, input, select, textarea {
      font-size: 100%;
      font-family: inherit;
    }

    /* Remove list styles (bullets/numbers) */
    ol, ul {
      list-style: none;
    }

    /* Reset hyperlink styles */
    a {
      text-decoration: none;
      color: inherit;
    }

    /* Remove underline on linked images */
    a img {
      border: none;
    }

    /* Reset form element styles */
    button, input, select, textarea {
      margin: 0;
      border: none;
      outline: none;
    }


    header {
      margin-bottom: 15px;
    }

    .inner_background {
      width: 100%;
      height: 100vh;
      background-image: url("https://petitions.assembly.go.kr/assets/img/mainVisual01.6a05f050.jpg");
      background-size: cover;
    }

    .center_area {
      width: 1100px;
      margin: 0 auto;
    }

    .center_area .header_inner_wrap {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .center_area .header_inner_wrap ul {
      display: flex;
      gap: 20px;
    }

    .center_area .header_inner_wrap ul li a {
      color: #fff;
      text-shadow: 2px 1px 1px rgba(0,0,0,.4);
      font-weight: 400;
      font-size: 14px;
    }

    .gnb {
      width: 100%;
      height: 65px;
      background: #ffffff;
      margin-bottom: 40px;
    }

    .gnb .gnb_wrap {
      display: flex;
      width: 100%;
      height: 100%;
    }

    .gnb .gnb_wrap .first_menu_img {
      width: 30%;
    }

    .gnb .gnb_wrap div {
      width: 17.5%;
      height: 100%;
      display: flex;
      justify-content: center;
      align-items: center;
      border-right: 1px solid #ccc;
      font-weight: 600;
      color: #000;
      cursor: pointer;
    }

    .mid_text_area {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      gap: 10px;
      margin-bottom: 40px;
    }

    .mid_text_area h2 {
      color: #fff;
      text-shadow: 2px 1px 1px rgba(0,0,0,.4);
      font-size: 38px;
      font-weight: 700;
    }

    .mid_text_area p {
      color: #fff;
      text-shadow: 2px 1px 1px rgba(0,0,0,.4);
      font-size: 21px;
      font-weight: 500;
    }

  </style>
<%--  <link rel="stylesheet" href="../style/common.css">--%>
<%--  <link rel="stylesheet" href="../style/main.css">--%>
</head>
<body>
<main class="wrap">
  <div class="inner_background">
    <div class="center_area">

      <%@include file="header.jsp"%>

      <section class="mid_text_area">
        <h2>청원검색</h2>
        <p>국민과 국회가 함께 만들어가는 국민참여 입법시스템</p>
      </section>



    </div>
  </div>
</main>

</body>
</html>