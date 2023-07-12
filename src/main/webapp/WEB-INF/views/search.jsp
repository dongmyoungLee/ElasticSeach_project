<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>국민청원</title>
  <link rel="stylesheet" href="resources/css/common.css">
  <link rel="stylesheet" href="resources/css/detail.css">
  <link rel="stylesheet" href="resources/css/main.css">
  <link rel="stylesheet" href="resources/css/search.css">
</head>
<body>
<main class="wrap">
  <div>
    <!--        <div class="center_area">-->
    <div class="inner_background_height">
      <div class="center_area_other">
        <header>
          <div class="header_inner_wrap">
            <div>
              <img src="https://petitions.assembly.go.kr/assets/img/gnb_assembly_logo.fd2631f3.png">
            </div>
            <div>
              <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">회원가입</a></li>
                <li><a href="#">로그인</a></li>
                <li><a href="#">FAQ</a></li>
              </ul>
            </div>
          </div>
        </header>

        <section class="gnb">
          <div class="gnb_wrap">
            <div class="first_menu_img">
              <img src="https://petitions.assembly.go.kr/assets/img/gnbLogo.3b00e93d.png">
            </div>
            <div><p>청원안내</p></div>
            <div><p>동의진행 청원</p></div>
            <div><p>동의종료 청원</p></div>
            <div><p>위원부 회부 청원</p></div>
          </div>
        </section>

        <section class="mid_text_area">
          <h2 style="font-size: 38px; font-weight: 700;">청원검색</h2>
          <p style="font-size: 21px; font-weight: 500;">국민과 국회가 함께 만들어가는 국민참여 입법시스템</p>
        </section>
      </div>

    </div>

    <section class="contents_wrap">
      <div class="center_area_other">
        <div class="search_history_info">
          <div class="search_history_info_inner">
            <div class="top_history">
              <p><span>·</span>인기 검색어</p>
              <div class="history_inner">
                <div>검색어1</div>
                <div>검색어2</div>
                <div>검색어3</div>
                <div>검색어4</div>
                <div>검색어5</div>
                <div>검색어6</div>
                <div>검색어7</div>
                <div>검색어8</div>
                <div>검색어9</div>
              </div>
            </div>
            <div class="mid_history">
              <p><span>·</span>내가 찾은 검색어</p>
              <div class="history_inner">
                <div>검색어1</div>
                <div>검색어2</div>
                <div>검색어3</div>
                <div>검색어4</div>
                <div>검색어5</div>
                <div>검색어6</div>
                <div>검색어7</div>
                <div>검색어8</div>
                <div>검색어9</div>
              </div>
            </div>
            <div class="bot_history">
              <p><span>·</span>연관검색어</p>
              <div class="history_inner">
                <div>검색어1</div>
                <div>검색어2</div>
                <div>검색어3</div>
                <div>검색어4</div>
                <div>검색어5</div>
                <div>검색어6</div>
                <div>검색어7</div>
                <div>검색어8</div>
                <div>검색어9</div>
              </div>
            </div>
          </div>
        </div>
      </div>

    </section>
    <div class="center_area">
      <div class="search_area_zone">
        <form action="/search" method="post" class="input_wrap">
          <input placeholder="검색어를 입력하세요." class="search_input" type="text" />
        </form>
        <div class="search_range">
          <p><span>·</span>검색범위</p>
          <div class="radio_area">
            <input id="radio1" name="select" type="radio" />
            <label for="radio1">제목+내용</label>
          </div>
          <div class="radio_area">
            <input id="radio2" name="select" type="radio" />
            <label for="radio2">제목</label>
          </div>
          <div class="radio_area">
            <input id="radio3" name="select" type="radio" />
            <label for="radio3" >내용</label>
          </div>
        </div>
      </div>
      <div class="search_result_area">
        <p class="info_text"><span class="keyword">'TEST'</span> 키워드로 <span class="type">제목 + 내용</span>에서 검색한 결과 (총 <span class="qty">49</span>건) 입니다.</p>

        <div class="result_info_area">
          <p class="qtyInfo">총 <span class="qty">49</span>건</p>
          <div>
            <div class="radio_area">
              <input id="radio5" name="select" type="radio" />
              <label for="radio5">정확도순</label>
            </div>
            <div class="radio_area">
              <input id="radio4" name="select" type="radio" />
              <label for="radio4" >최신순</label>
            </div>
          </div>
        </div>

        <div class="result_area">
          <p class="date">등록일 : <span>2022-08-52</span></p>
          <h2 class="title" onclick="window.location.href='/detail'">제발 제 조카를 성폭력 가해학생과 한 교실에 두지 말아 주세요 성폭력 가해학생의 교실분리 또는 전학 조치 의무화에 관한 청원</h2>
          <p class="content" onclick="window.location.href='/detail'">발달장애를 가지고 있는 조카가 어느새 6학년이 되었습니다. 장애가 있음에도 불구하고 나름 학교생활을 잘 해 나가고 있는 게 기특했고 감사했습니다. 하지만 얼마 전부터 조카는 등교를 거부했고 그 이유가 같은 반 학생에게 지속적으로 성폭력을 당해 왔기 때문이라는 사실을 알게 되었습니다.발달장애를 가지고 있는 조카가 어느새 6학년이 되었습니다. 장애가 있음에도 불구하고 나름 학교생활을 잘 해 나가고 있는 게 기특했고 감사했습니다. 하지만 얼마 전부터 조카는 등교를 거부했고 그 이유가 같은 반 학생에게 지속적으로 성폭력을 당해 왔기 때문이라는 사실을 알게 되었습니다.발달장애를 가지고 있는 조카가 어느새 6학년이 되었습니다. 장애가 있음에도 불구하고 나름 학교생활을 잘 해 나가고 있는 게 기특했고 감사했습니다. 하지만 얼마 전부터 조카는 등교를 거부했고 그 이유가 같은 반 학생에게 지속적으로 성폭력을 당해 왔기 때문이라는 사실을 알게 되었습니다.</p>
        </div>

        <div class="result_area">
          <p class="date">등록일 : <span>2022-08-52</span></p>
          <h2 class="title">제발 제 조카를 성폭력 가해학생과 한 교실에 두지 말아 주세요 성폭력 가해학생의 교실분리 또는 전학 조치 의무화에 관한 청원</h2>
          <p class="content">발달장애를 가지고 있는 조카가 어느새 6학년이 되었습니다. 장애가 있음에도 불구하고 나름 학교생활을 잘 해 나가고 있는 게 기특했고 감사했습니다. 하지만 얼마 전부터 조카는 등교를 거부했고 그 이유가 같은 반 학생에게 지속적으로 성폭력을 당해 왔기 때문이라는 사실을 알게 되었습니다.발달장애를 가지고 있는 조카가 어느새 6학년이 되었습니다. 장애가 있음에도 불구하고 나름 학교생활을 잘 해 나가고 있는 게 기특했고 감사했습니다. 하지만 얼마 전부터 조카는 등교를 거부했고 그 이유가 같은 반 학생에게 지속적으로 성폭력을 당해 왔기 때문이라는 사실을 알게 되었습니다.발달장애를 가지고 있는 조카가 어느새 6학년이 되었습니다. 장애가 있음에도 불구하고 나름 학교생활을 잘 해 나가고 있는 게 기특했고 감사했습니다. 하지만 얼마 전부터 조카는 등교를 거부했고 그 이유가 같은 반 학생에게 지속적으로 성폭력을 당해 왔기 때문이라는 사실을 알게 되었습니다.</p>
        </div>

        <div class="result_area">
          <p class="date">등록일 : <span>2022-08-52</span></p>
          <h2 class="title">제발 제 조카를 성폭력 가해학생과 한 교실에 두지 말아 주세요 성폭력 가해학생의 교실분리 또는 전학 조치 의무화에 관한 청원</h2>
          <p class="content">발달장애를 가지고 있는 조카가 어느새 6학년이 되었습니다. 장애가 있음에도 불구하고 나름 학교생활을 잘 해 나가고 있는 게 기특했고 감사했습니다. 하지만 얼마 전부터 조카는 등교를 거부했고 그 이유가 같은 반 학생에게 지속적으로 성폭력을 당해 왔기 때문이라는 사실을 알게 되었습니다.발달장애를 가지고 있는 조카가 어느새 6학년이 되었습니다. 장애가 있음에도 불구하고 나름 학교생활을 잘 해 나가고 있는 게 기특했고 감사했습니다. 하지만 얼마 전부터 조카는 등교를 거부했고 그 이유가 같은 반 학생에게 지속적으로 성폭력을 당해 왔기 때문이라는 사실을 알게 되었습니다.발달장애를 가지고 있는 조카가 어느새 6학년이 되었습니다. 장애가 있음에도 불구하고 나름 학교생활을 잘 해 나가고 있는 게 기특했고 감사했습니다. 하지만 얼마 전부터 조카는 등교를 거부했고 그 이유가 같은 반 학생에게 지속적으로 성폭력을 당해 왔기 때문이라는 사실을 알게 되었습니다.</p>
        </div>

        <div class="result_area">
          <p class="date">등록일 : <span>2022-08-52</span></p>
          <h2 class="title">제발 제 조카를 성폭력 가해학생과 한 교실에 두지 말아 주세요 성폭력 가해학생의 교실분리 또는 전학 조치 의무화에 관한 청원</h2>
          <p class="content">발달장애를 가지고 있는 조카가 어느새 6학년이 되었습니다. 장애가 있음에도 불구하고 나름 학교생활을 잘 해 나가고 있는 게 기특했고 감사했습니다. 하지만 얼마 전부터 조카는 등교를 거부했고 그 이유가 같은 반 학생에게 지속적으로 성폭력을 당해 왔기 때문이라는 사실을 알게 되었습니다.발달장애를 가지고 있는 조카가 어느새 6학년이 되었습니다. 장애가 있음에도 불구하고 나름 학교생활을 잘 해 나가고 있는 게 기특했고 감사했습니다. 하지만 얼마 전부터 조카는 등교를 거부했고 그 이유가 같은 반 학생에게 지속적으로 성폭력을 당해 왔기 때문이라는 사실을 알게 되었습니다.발달장애를 가지고 있는 조카가 어느새 6학년이 되었습니다. 장애가 있음에도 불구하고 나름 학교생활을 잘 해 나가고 있는 게 기특했고 감사했습니다. 하지만 얼마 전부터 조카는 등교를 거부했고 그 이유가 같은 반 학생에게 지속적으로 성폭력을 당해 왔기 때문이라는 사실을 알게 되었습니다.</p>
        </div>

        <div class="result_area">
          <p class="date">등록일 : <span>2022-08-52</span></p>
          <h2 class="title">제발 제 조카를 성폭력 가해학생과 한 교실에 두지 말아 주세요 성폭력 가해학생의 교실분리 또는 전학 조치 의무화에 관한 청원</h2>
          <p class="content">발달장애를 가지고 있는 조카가 어느새 6학년이 되었습니다. 장애가 있음에도 불구하고 나름 학교생활을 잘 해 나가고 있는 게 기특했고 감사했습니다. 하지만 얼마 전부터 조카는 등교를 거부했고 그 이유가 같은 반 학생에게 지속적으로 성폭력을 당해 왔기 때문이라는 사실을 알게 되었습니다.발달장애를 가지고 있는 조카가 어느새 6학년이 되었습니다. 장애가 있음에도 불구하고 나름 학교생활을 잘 해 나가고 있는 게 기특했고 감사했습니다. 하지만 얼마 전부터 조카는 등교를 거부했고 그 이유가 같은 반 학생에게 지속적으로 성폭력을 당해 왔기 때문이라는 사실을 알게 되었습니다.발달장애를 가지고 있는 조카가 어느새 6학년이 되었습니다. 장애가 있음에도 불구하고 나름 학교생활을 잘 해 나가고 있는 게 기특했고 감사했습니다. 하지만 얼마 전부터 조카는 등교를 거부했고 그 이유가 같은 반 학생에게 지속적으로 성폭력을 당해 왔기 때문이라는 사실을 알게 되었습니다.</p>
        </div>

      </div>
    </div>

  </div>
</main>

</body>
</html>