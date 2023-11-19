<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%
    String path2 = request.getContextPath();
%>
<style>
    .btn_group{
        margin-left: 800px
    }

    .container img{
        width: 300px;
    }

    *{
        font-family: 'Gaegu', cursive!important;
        font-family: 'Nanum Pen Script', cursive!important;
        font-family: 'Noto Serif KR', serif !important;
    }

    .navbar-nav{
        margin: 0 auto;
    }

    .container-fluid{
        border-bottom: #dddddd solid 1px;
    }

</style>

<!-- Topbar Start -->
<div class="container-fluid bg-dark text-white d-none d-lg-flex">
    <div class="container py-3">
        <div class="d-flex align-items-center">
            <img src="${path2}/img/logo_main1.png" class="rounded float-start" alt="로고">
            <% if(sid!=null) { %>
            <div class="btn_group" role="group" aria-label="button" style="margin-left: 700px">
                <a href="${path2}/member/mypage.jsp" class="btn btn-join btn-outline-light" role="button">마이페이지</a>
                <a href="${path2}/member/logout.jsp" class="btn btn-login btn-outline-light" role="button">로그아웃</a>
            </div>
            <% } else {%>
        <div class="btn_group" role="group" aria-label="button">
            <a href="${path2}/member/term.jsp" class="btn btn-join btn-outline-light" role="button">회원가입</a>
            <a href="${path2}/member/login.jsp" class="btn btn-login btn-outline-light" role="button">로그인</a>
        </div>
            <% } %>
        </div>
    </div>
</div>
<!-- Topbar End -->


<!-- Navbar Start -->
<div class="container-fluid bg-white sticky-top">
    <div class="container">
        <nav class="navbar nav-underline navbar-expand-lg bg-white navbar-light p-lg-0">
            <a href="index.html" class="navbar-brand d-lg-none">
                <h1 class="fw-bold m-0">승원스쿨</h1>
            </a>
            <button type="button" class="navbar-toggler me-0" data-bs-toggle="collapse"
                    data-bs-target="#navbarCollapse">
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav">
                    <a href="${path2}/menu/company.jsp" class="nav-item nav-link">회사 소개</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link " data-bs-toggle="dropdown">커뮤니티 게시판</a>
                        <div class="dropdown-menu bg-white rounded-0 rounded-bottom m-0">
                            <a href="${path2}/board/boardList.jsp" class="dropdown-item">자유게시판</a><br>
                            <a href="${path2}/board_stu/boardStuList.jsp" class="dropdown-item">학생 게시판</a><br>
                            <a href="${path2}/board_tea/boardTeaList.jsp" class="dropdown-item">선생님 게시판</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link " data-bs-toggle="dropdown">정보 게시판</a>
                        <div class="dropdown-menu bg-white rounded-0 rounded-bottom m-0">
                            <a href="${path2}/qna_career/qnaList.jsp" class="dropdown-item">진로 상담</a><br>
                            <a href="${path2}/faq/faqList.jsp" class="dropdown-item">FAQ</a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</div>
<!-- Navbar End -->
    <script src="/js/load.js"></script>
</div>