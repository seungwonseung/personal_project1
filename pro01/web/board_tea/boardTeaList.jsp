<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.chunjae.db.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.chunjae.dto.Board" %>
<%@ include file="/encoding.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QNA</title>
    <%@ include file="../head.jsp" %>

    <!-- 스타일 초기화 : reset.css 또는 normalize.css -->
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">

    <!-- 플러그인 연결-->
    <!-- jquery -->
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <!-- datatables -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.css">
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.js"></script>

    <!-- 스타일 초기화 -->
    <link rel="stylesheet" href="../css/reset.css">
    <!-- 웹 폰트 -->
    <link rel="stylesheet" href="../css/font.css">

    <!-- css 모듈화 -->
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/hd.css">
    <link rel="stylesheet" href="../css/ft.css">
    <style>
        /* 본문 영역 스타일 */
        html, body, div, span, applet, object, iframe,
        h1, h2, h3, h4, h5, h6, p, blockquote, pre,
        a, abbr, acronym, address, big, cite, code,
        del, dfn, em, img, ins, kbd, q, s, samp,
        small, strike, strong, sub, sup, tt, var,
        b, u, i, center,
        dl, dt, dd, ol, ul, li,
        fieldset, form, label, legend,
        table, caption, tbody, tfoot, thead, tr, th, td,
        article, aside, canvas, details, embed,
        figure, figcaption, footer, header, hgroup,
        menu, nav, output, ruby, section, summary,
        time, mark, audio, video {
            margin: 0;
            padding: 0;
            border: 0;
            font-size: 120%;
            font: inherit;
            vertical-align: baseline;
        }
        }
        .contents {
            clear: both;
            min-height: 100vh;
            background-repeat: no-repeat;
            background-position: center -250px;
        }
        .contents::after {
            content: "";
            clear: both;
            display: block;
            width: 100%;
        }

        .page {
            clear: both;
            width: 100vw;
            height: 100vh;
            position: relative;
            margin-bottom: 100px;
        }
        .page::after {
            content: "";
            display: block;
            width: 100%;
            clear: both;
        }

        .page_wrap {
            clear: both;
            width: 1200px;
            height: auto;
            margin: 0 auto;
            margin-top: 55px;

        }
        .page_tit {
            font-size: 48px;
            text-align: center;
            /*padding-top: 0.7em;*/
            color: #0e0f1a;
            padding-top: 70px;
        }

        .breadcrumb {
            clear: both;
            width: 1200px;
            margin: 0 auto;
            text-align: right;
            color: #fff;
            padding-top: 28px;
            padding-bottom: 28px;
        }
        .breadcrumb a {
            color: #fff;

        }

        /* 테이블 스타일 */
        .tb1 {
            width: 80%;
            margin: 50px auto;
            font-size: 20px;
            border-collapse: collapse;
        }
        .tb1 th {
            background-color: #0e0f1a;
            color: #fff;
            padding: 16px;
            border: 1px solid #0e0f1a;

        }
        .tb1 td {
            padding: 12px 16px;
            border: 1px solid #ddd;
            text-align: center;
            line-height: 24px;

        }
        .tb1 th:first-child {
            width: 40px;
        }

        .tb1 tbody {

        }

        .tb1 .item1 {
            width: 8%;
        }
        .tb1 .item2 {
            width: 60%;

            text-align: left;
        }
        .tb1 .item3 {
            width: 12%;
        }

        /* 기타 버튼 스타일 */
        .inbtn {
            display: block;
            border-radius: 10px;
            min-width: 60px;
            padding-left: 24px;
            padding-right: 24px;
            text-align: center;
            line-height: 38px;
            background-color: #527AF2;
            color: #fff;
            font-size: 18px;
            float: right;
            cursor: pointer;
            transition: background-color 0.3s;

        }
        .inbtn:hover {
            background-color: #666666;
        }

        .btn_group {
            margin-top: -38px;
            z-index: 1000;
            position: relative;
        }
        .btn_group p {
            float: right;

        }
    </style>
</head>
<%
    if(sid != null && (sjob.equals("2") || sid.equals("admin"))) {

    } else {
        out.println("<script>alert('해당 페이지는 선생님만 접근 가능합니다.')</script>");
        out.println("<script>location.href='/index.jsp'</script>");
    }
%>
<%
    request.setCharacterEncoding("utf8");
    response.setContentType("text/html;charset=UTF-8");
    response.setCharacterEncoding("utf8");

    List<Board> boardList = new ArrayList<>();

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    DBC con = new MariaDBCon();
    conn = con.connect();
    if(conn != null){
        System.out.println("DB 연결 성공");
    }

    // 해당 회원의 정보를 db에서 가져옴
    try {
        String sql = "select * from board_tea where lev=0 order by par desc";
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();
        while(rs.next()){
            Board board = new Board();
            board.setPar(rs.getInt("par"));
            board.setTitle(rs.getString("title"));
            board.setCnt(rs.getInt("cnt"));
            board.setAuthor(rs.getString("author"));
            board.setResdate(rs.getString("resdate"));
            boardList.add(board);
        }
    } catch(SQLException e) {
        System.out.println("SQL 구문이 처리되지 못했습니다.");
    } finally {
        con.close(rs, pstmt, conn);
    }
%>
<body>
<div class="wrap">
    <header class="hd" id="hd">
        <%@ include file="../header.jsp" %>
    </header>
    <div class="contents" id="contents">
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">선생님게시판</h2>
                <table class="tb1" id="myTable">
                    <thead>
                        <tr>
                            <th class="item1">번호</th>
                            <th class="item2">제목</th>
                            <th class="item1">작성자</th>
                            <th class="item1">작성일</th>
                            <th class="item1">조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                        int tot = boardList.size();
                        SimpleDateFormat ymd = new SimpleDateFormat("yy-MM-dd");
                        for(Board arr:boardList) {
                        Date d = ymd.parse(arr.getResdate());  //날짜데이터로 변경
                        String date = ymd.format(d);    //형식을 포함한 문자열로 변경
                    %>
                    <tr>
                        <td class="item1"><%=tot-- %></td>
                        <td class="item2"><a href="/board_tea/getBoardTea.jsp?bno=<%=arr.getPar() %>"><%=arr.getTitle() %></a></td>
                        <td class="item1"><%=arr.getAuthor()%></td>
                        <td class="item1"><%=date %></td>
                        <td class="item1"><%=arr.getCnt() %></td>
                    </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
                <script>
                    $(document).ready( function () {
                        $('#myTable').DataTable({
                            order: [[0, 'desc']], // 0번째 컬럼을 기준으로 내림차순 정렬
                        });
                    } );
                </script>
                <div class="btn_group">
                    <% if (sid != null) { %>
                    <a href="addBoardTea.jsp" class="inbtn"> 글 작성 </a>
                    <% } else {%>
                    <p>글을 쓰려면 로그인 하세요</p>
                    <% } %>
                </div>
            </div>
        </section>
    </div>
    <footer class="ft" id="ft">
        <%@ include file="../footer2.jsp" %>
    </footer>
</div>
</body>
</html>