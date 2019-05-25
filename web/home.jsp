<%--
  Created by IntelliJ IDEA.
  User: 24429
  Date: 2019/5/15
  Time: 19:05
  To change this template use File | Settings | File Templates.
--%>

<%@include file="navigationBar.jsp" %>
<%@page pageEncoding="UTF-8" %>

<html>
<head>
    <title>首页</title>
    <script src="js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"--%>
<%--            crossorigin="anonymous"></script>--%>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrapValidator.js"></script>
<%--    <script--%>
<%--            src="https://cdn.bootcss.com/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"></script>--%>

    <style>
        .panel {
            border-radius: 2px
        }


    </style>
</head>
<body>

<div class="row">
    <div class="col-md-2 col-sm-2 col-xs-1 " style="background-color: #2e6da4">1
        <%--第一列--%>
    </div>

    <div class="col-md-5  col-sm-5 col-xs-10 " style="" id="sharePanel">
        <div>
            <div class="row " style="margin-right: 0;margin-left: 0;margin-top: 20px;">
                <form role="form" style="">
                    <div class="form-group">
                        <textarea style="resize: none;" placeholder="有什么新鲜事？" class="form-control " rows="3"></textarea>
                    </div>
                </form>

            </div>

            <div style="margin-top: -15px">
                <input style="position: absolute;opacity: 0"  type="file">
                <img style="float: left;margin-bottom: 50px;margin-left:2px;margin-top: 5px" src="images/图片.png">
<%--                <div class="btn-group">--%>
<%--                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
<%--                        Action <span class="caret"></span>--%>
<%--                    </button>--%>
<%--                    <ul class="dropdown-menu">--%>
<%--                        <li><a href="#">Action</a></li>--%>
<%--                        <li><a href="#">Another action</a></li>--%>
<%--                        <li><a href="#">Something else here</a></li>--%>
<%--                        <li role="separator" class="divider"></li>--%>
<%--                        <li><a href="#">Separated link</a></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
                <button type="button" class="btn btn-info" id="loginBtn" style="float: right;margin-top: 3px;margin-right: 3px">发表</button>
            </div>
        </div>

        <%--                        <div class="panel panel-default" style="margin-bottom: 0px">--%>
        <%--                            <!-- Default panel contents -->--%>
        <%--                            <div class="panel-heading" style="background-color: #ffffff">--%>
        <%--                                &lt;%&ndash;            用户名、头像部分&ndash;%&gt;--%>
        <%--                                <div>--%>
        <%--                                    <div style="display: inline-block">--%>
        <%--                                        <a href="#" class="img-responsive">--%>
        <%--                                            <img class="img-circle" src="profilePicture/defaultImg.jpeg"--%>
        <%--                                                 style="height: 40px;width: 40px"--%>
        <%--                                                 alt="用户头像">--%>
        <%--                                        </a>--%>
        <%--                                    </div>--%>
        <%--                                    &nbsp;--%>
        <%--                                    <div style="display: inline-block">--%>
        <%--                                        <h5> haha</h5>--%>
        <%--                                    </div>--%>
        <%--                                </div>--%>

        <%--                            </div>--%>
        <%--                            &lt;%&ndash;            动态部分&ndash;%&gt;--%>
        <%--                            <img class="img-responsive " src="profilePicture/test.jpg">--%>
        <%--                        </div>--%>

        <%--                        &lt;%&ndash;        点赞、评论、转发部分&ndash;%&gt;--%>
        <%--                        <div class="panel panel-default">--%>
        <%--                            <!-- Default panel contents -->--%>
        <%--                            <div class="panel-heading" style="background-color: #ffffff ;">--%>
        <%--                                &lt;%&ndash;                <div class="feed" id="feed1">&ndash;%&gt;--%>
        <%--                                <div class="heart " style="margin-top: -25px;margin-left: 10px;display: inline-block;float: left;"--%>
        <%--                                     id="like1" rel="like"></div>--%>
        <%--                                <div style="display: inline-block;float: left;margin-left: 35px; margin-top: 3px"><img--%>
        <%--                                        src="images/评论%20(2).png"></div>--%>
        <%--                                <div style="margin-left: 12px;margin-top:6px;float: left"><img src="images/分享%20(3).png"></div>--%>
        <%--                                <div class="likeCount" style="display: inline-block;margin-left: -105px" id="likeCount1">14</div>--%>
        <%--                                &lt;%&ndash;         block 有换行作用&ndash;%&gt;--%>
        <%--                                <span style="display: inline-block;margin-top: 10px"><b>&nbsp;次赞</b></span>--%>
        <%--                                &lt;%&ndash;                </div>&ndash;%&gt;--%>

        <%--                            </div>--%>
        <%--                        </div>--%>
        <div class="panel panel-default " style="margin-bottom: 0;margin-top: 40px">
            <!-- Default panel contents -->
            <div class="panel-heading;" style="background-color: #ffffff;">
                <%--            用户名、头像部分--%>
                <div>
                    <div style="display: inline-block">
                        <a href="#" class="img-responsive">
                            <img class="img-circle " src="profilePicture/defaultImg.jpeg"
                                 style="height: 40px;width: 40px;margin-bottom: 3px"
                                 alt="用户头像">
                        </a>
                    </div>
                    &nbsp;
                    <div style="display: inline-block">
                        <h5> haha</h5>
                    </div>
                </div>

            </div>
            <%--            动态图片部分--%>
            <img class="img-responsive " src="profilePicture/test.jpg">
        </div>

        <%--        点赞、评论、转发部分--%>
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading" style="background-color: #ffffff ;">
                <%--                <div class="feed" id="feed1">--%>
                <%--            点赞--%>
                <div class="heart "
                     style="margin-top: -25px;margin-left: 10px;display: inline-block;position: absolute;z-index: 0;"
                     id="like1" rel="like"></div>
                <%--                评论--%>
                <div style="display: inline-block;margin-top: 3px;margin-left: 35px;position: absolute;z-index: 1"><img
                        src="images/评论%20(2).png"></div>
                <%--                分享--%>
                <div style="margin-top:6px;margin-left: 77px"><img src="images/分享%20(3).png"></div>
                <div class="likeCount" style="width: 30px;margin-left: -8px;margin-top: 2px" id="likeCount1">14</div>

                <div style="margin-left: 15px;margin-top: -20px;float: left"><b>&nbsp;次赞</b></div>
                <div></div>
                <%--                            </div>--%>

            </div>
        </div>


    </div>
    <%--    这个div用来存放响应隐藏面板--%>
    <div class="col-md-3 col-sm-3  hidden-xs" style="background-color: #8c8c8c">3</div>
    <div class="col-md-2 col-sm-2 col-xs-1 " style="background-color: #8a6d3b">4</div>

</div>
</body>
<script>

    $(document).ready(function () {


        (function created() {
            $.ajax({
                url: 'sss',
                type: 'GET',
                data: {Uid: ${sessionScope.user.uid}, start: 1},
                dataType: "json",
                success: function (shareList) {


                    $.each(shareList, function (index, share) {
                        // 可以在这对发此条动态的用户进行查询,应该要改成同步的
                        var userInfoList = {}; // 用userInfoList来接收用户的数据
                        $.ajax({
                            url: "sus",
                            type: 'POST',
                            data: {Suid: share.suid},
                            dataType: "json",
                            async: false,
                            success: function (userInfo) {
                                console.log(userInfo);
                                userInfoList = userInfo;
                            },
                            error: function () {
                                alert("error!")
                            }
                        });
                        console.log('userIn', userInfoList.uname);
                        console.log('userInfoList', userInfoList);
                        var s1 = "    <div class=\"panel panel-default\" style=\"margin-bottom: 0px\">\n" +
                            "        <!-- Default panel contents -->\n" +
                            "        <div class=\"panel-heading\" style=\"background-color: #ffffff\">\n" +
                            "            <%--            用户名、头像部分--%>\n" +
                            "            <div>\n" +
                            "                <div style=\"display: inline-block\">\n" +
                            "                    <a href=\"#\" class=\"img-responsive\">\n" +
                            "                        <img class=\"img-circle \" src=\"profilePicture/" + userInfoList.uimg + "\"\n" +
                            "                             style=\"height: 40px;width: 40px;margin-bottom: 3px\"\n" +
                            "                             alt=\"用户头像\">\n" +
                            "                    </a>\n" +
                            "                </div>\n" +
                            "                &nbsp;\n" +
                            "                <div style=\"display: inline-block\">\n" +
                            "                    <h5 > " + userInfoList.uname + "</h5>\n" +
                            "                </div>\n" +
                            "            </div>\n" +
                            "\n" +
                            "        </div>\n" +
                            "        <%--            动态图片部分--%>\n" +
                            "        <img class=\"img-responsive \" src=\"profilePicture/" + share.simg + "\">\n" +
                            "    </div>";


                        var s2 = "    <%--        点赞、评论、转发部分--%>\n" +
                            "    <div class=\"panel panel-default\">\n" +
                            "        <!-- Default panel contents -->\n" +
                            "        <div class=\"panel-heading\" style=\"background-color: #ffffff ;\">\n" +
                            "            <%--                <div class=\"feed\" id=\"feed1\">--%>\n" +
                            "        <%--            点赞--%>\n" +
                            "            <div class=\"heart \" style=\"margin-top: -25px;margin-left: 10px;display: inline-block;position: absolute;z-index: 0;\"\n" +
                            "                                                   id=\"like1\" rel=\"like\"></div>\n" +
                            "        <%--                评论--%>\n" +
                            "            <div style=\"display: inline-block;margin-top: 3px;margin-left: 35px;position: absolute;z-index: 1\"><img\n" +
                            "                    src=\"images/评论%20(2).png\"></div>\n" +
                            "        <%--                分享--%>\n" +
                            "            <div style=\"margin-top:6px;margin-left: 77px\"><img src=\"images/分享%20(3).png\"></div>\n" +
                            "            <div class=\"likeCount\" style=\"width: 30px;margin-left: -8px;margin-top: 2px\" id=\"likeCount1\">14</div>\n" +
                            "\n" +
                            "          <div style=\"margin-left: 15px;margin-top: -20px;float: left\"><b>&nbsp;次赞</b></div>\n" +
                            "                <div></div>\n" +
                            "<%--                            </div>--%>\n" +
                            "\n" +
                            "        </div>\n" +
                            "    </div>";


                        $('#sharePanel').append(s1 + s2);
                    })

                },
                error: function () {
                    alert("error!")
                }
            });

        })();


        $('body').on("click", '.heart', function () {

            var A = $(this).attr("id");
            var B = A.split("like");
            var messageID = B[1];
            var C = parseInt($("#likeCount" + messageID).html());
            $(this).css("background-position", "")
            var D = $(this).attr("rel");

            if (D === 'like') {
                $("#likeCount" + messageID).html(C + 1);
                $(this).addClass("heartAnimation").attr("rel", "unlike");
            } else {
                $("#likeCount" + messageID).html(C - 1);
                $(this).removeClass("heartAnimation").attr("rel", "like");
                $(this).css("background-position", "left");
            }
        });

    });

</script>
</html>