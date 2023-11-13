<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 페이지</title>
    <%@ include file="../head.jsp" %>

    <!-- 스타일 초기화 : reset.css 또는 normalize.css -->
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">

    <!-- 플러그인 연결-->
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <!-- 스타일 초기화 -->
    <link rel="stylesheet" href="../css/reset.css">
    <!-- 웹 폰트 -->
    <link rel="stylesheet" href="../css/font.css">

    <!-- css 모듈화 -->
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/hd.css">
    <link rel="stylesheet" href="../css/ft2.css">
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
            top: 180px;
        }


        .page_wrap {
            clear: both;
            width: 500px;
            height: 500px;
            box-shadow: 0 0 25px rgba(0, 0, 0, 0.2);
            background-color: #404040;
            margin-left: 700px;
            border-radius: 75%;

        }

        .page_tit {
            font-size: 48px;
            text-align: center;
            padding-top: 0.7em;
            color: #fff;
            padding-bottom: 1.3em;
        }

        .breadcrumb {
            clear: both;
            width: 1200px;
            margin: 0 auto;
            text-align: right;
            color: #fff;
            padding-top: 28px;
        }

        .breadcrumb a {
            color: #fff;
        }


        .login-form {
            /*margin-top: 50px;*/
            padding-top: 0px;
            padding-left: 0px;
            padding-right: 0px;
            padding-bottom: 0px;
            width: 440px;
            height: 420px;
            margin-top: 100px;
            border: 0;
            border-radius: 40%;
            padding: 30px;

            text-align: center;
        }

        .login-form a {
            text-decoration: none;
            color: #9B9B9B;
            font-size: 18px;
            margin-left: 60px;
        }
        .tb1 {
            margin-left: 22px;
        }

        .logo-wrap {
            margin: 0 auto;
            padding: 50px 10px 20px;
        }

        .indata {
            font-size: 14px;
            box-sizing: border-box;
            margin-left: 15px;
            margin-bottom: 16px;
            border: none;
            border-radius: 5px;
            padding: 10px;
            width: 150%;
            height: 48px;
        }

        .inbtn {
            color: #404040;
            font-size: 14px;
            background-color: white;
            font-weight: bolder;
            font-size: 20px;
            margin: 5px 10px 15px 15px;
            padding: 10px;
            border: none;
            border-radius: 5px;
            width: 150%;
            height: 48px;
        }
        .logo-wrap img{
            margin-left: 40px;
        }



    </style>

</head>
<body>
<div class="wrap">
    <header class="hd" id="hd">
        <%@ include file="../header.jsp" %>
    </header>
    <div class="contents" id="contents">

        <section class="page" id="page1">
            <div class="page_wrap">
                <div class="login-form">
                    <div class="logo-wrap" style="padding-left: 0px">
                        <img src="/img/logo_main1.png" style="width: 400px; margin-left: 25px; margin-top: 10px;">
                    </div>
                    <form action="loginpro.jsp" id="login_frm" class="frm">
                        <table class="tb1">
                            <tbody>
                            <tr>
                                <td><input type="text" name="id" id="id" class="indata" placeholder="아이디 입력" autofocus
                                           required></td>
                            </tr>
                            <tr>
                                <td><input type="password" name="pw" id="pw" class="indata" placeholder="패스워드 입력"
                                           required></td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="submit" value="로그인" class="inbtn btn-outline-dark">
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </form>
                    <a href="/member/term.jsp"> 회원가입 </a>

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