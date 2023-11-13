<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .footer_wrap {
        font-size: 0.8125em;
        padding: 2.92308em 0;
        text-align: center;
        border-top: #dddddd solid 2px;
    }

    .footer_wrap .add_bx span:before {
        border-color: #585858;
    }

    .footer_wrap .add_bx span:before {
        content: '';
        border-left: 1px solid #585858;
        height: 10px;
        position: absolute;
        top: 50%;
        left: -1px;
        margin-top: -5px;
    }

    .footer_wrap .add_bx span {
        padding: 0 10px;
        position: relative;
        color: #585858;
    }

    .footer_wrap .add_bx span:first-child:before {
        display: none;
    }

    .add_bx div{
        display: block;
    }
</style>
<div class="footer_wrap" id="footer">
    <div class="wrapper">
        <div class="footer_logo">
            <img src="../img/logolo_dark.png" alt="">
        </div>
        <div class="txt_bx">
            <div class="add_bx">
                <span>
                    서울시 금천구 가산로9길 54 TeenTalk
                </span>
                <br class="show_480">
                <span class="no_be_480">
                    <a href="tel:07041753333">
                    TEL : 070.7777.3333
                    </a>
                </span>
                <span>
                    FAX : 02.9999.9221
                </span>
            </div>
            <div class="mt_05 copy_t">
                Copyright ⓒ 2023 TeenTalk. All righsts reserved.
            </div>
        </div>
    </div>
</div>