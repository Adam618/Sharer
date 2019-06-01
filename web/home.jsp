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
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrapValidator.js"></script>
    <script src="js/dropdown.js"></script>

    <style>
        .panel {
            border-radius: 2px
        }

        body {
            background-color: #fafafa
        }

    </style>
</head>
<body>

<div class="row">
    <div class="col-md-2 col-sm-2 col-xs-1 " style="background-color: #2e6da4">1
        <%--第一列--%>
    </div>

    <div class="col-md-5  col-sm-5 col-xs-10 ">
        <%--        发表动态部分开始--%>
        <div class="row thumbnail" style="margin-bottom: 40px;background-color:white">
            <div style="margin-right: 0;margin-left: 0;margin-top: 20px;">
                <form role="form" style="">
                    <div class="form-group">
                        <textarea style="resize: none;" placeholder="有什么新鲜事？" class="form-control" id="Stext"
                                  rows="3"></textarea>
                    </div>
                </form>

            </div>

            <div style="margin-top: -15px">
                <input style="position: absolute;opacity: 0;display: none" id="thisFile" type="file">
                <img style="float: left;margin-left:2px;margin-top: 5px"
                     id="browse" src="images/图片.png" alt="选择图片">
                <input type="text" id="showname" style="margin-left: 4px;margin-top: 5px;width: 95px">
                <button type="button" class="btn btn-info btn-sm" id="uploadBtn"
                        style="float: right;margin-top: 5px;margin-right: 3px;">发表
                </button>
                <%--                <label for="visibleSelected">可见范围</label>--%>
                <select id="visibleSelected"
                        style="float: right;margin-right: 10px;margin-top: 5px;height: 28px;width: 95px">
                    <option selected="selected" value="0">所有人可见</option>
                    <option value="1">仅自己可见</option>
                </select>
            </div>
        </div>
        <div id="sharePanel"></div>
        <%--        发表动态部分结束--%>

        <%--        <div class="panel panel-default " style="margin-bottom: 0;margin-top: 40px">--%>
        <%--            <!-- Default panel contents -->--%>
        <%--            <div class="panel-heading;" style="background-color: #ffffff;">--%>
        <%--                &lt;%&ndash;            用户名、头像部分&ndash;%&gt;--%>
        <%--                <div>--%>
        <%--                    <div style="display: inline-block">--%>
        <%--                        <a href="#" class="img-responsive">--%>
        <%--                            <img class="img-circle " src="profilePicture/defaultImg.jpeg"--%>
        <%--                                 style="height: 40px;width: 40px;margin-bottom: 3px"--%>
        <%--                                 alt="用户头像">--%>
        <%--                        </a>--%>
        <%--                    </div>--%>
        <%--                    &nbsp;--%>
        <%--                    <div style="display: inline-block">--%>
        <%--                        <h5> haha</h5>--%>
        <%--                    </div>--%>
        <%--                </div>--%>

        <%--            </div>--%>
        <%--            &lt;%&ndash;            动态图片部分&ndash;%&gt;--%>
        <%--            <img class="img-responsive " src="profilePicture/test.jpg">--%>
        <%--        </div>--%>

        <%--        &lt;%&ndash;        点赞、评论、转发部分&ndash;%&gt;--%>
        <%--        <div class="panel panel-default">--%>
        <%--            <!-- Default panel contents -->--%>
        <%--            <div class="panel-heading" style="background-color: #ffffff ;">--%>
        <%--                &lt;%&ndash;                <div class="feed" id="feed1">&ndash;%&gt;--%>
        <%--                &lt;%&ndash;                                    点赞&ndash;%&gt;--%>
        <%--                <div class="heart "--%>
        <%--                     style="margin-top: -25px;margin-left: 10px;display: inline-block;position: absolute;z-index: 0;"--%>
        <%--                     id="like1" rel="like"></div>--%>

        <%--                &lt;%&ndash;                评论&ndash;%&gt;--%>
        <%--                <div style="display: inline-block;margin-top: 3px;margin-left: 35px;position: absolute;z-index: 1"><img--%>
        <%--                        src="images/评论%20(2).png"></div>--%>

        <%--                &lt;%&ndash;                分享&ndash;%&gt;--%>
        <%--                <div style="float: right;margin-right: -10px"><img src="images/星星线描%20(1).png"></div>--%>
        <%--&lt;%&ndash;            <div style="float: right;margin-right: -10px"><img src="images/星星_选中.png"></div>&ndash;%&gt;--%>
        <%--                <div style="margin-top:6px;margin-left: 77px"><img src="images/分享%20(3).png"></div>--%>
        <%--                <div class="likeCount" style="width: 30px;margin-left: -8px;margin-top: 2px" id="likeCount1">14</div>--%>

        <%--                <div style="margin-left: 15px;margin-top: -20px;float: left"><b>&nbsp;次赞</b></div>--%>
        <%--                <div></div>--%>
        <%--                &lt;%&ndash;                            </div>&ndash;%&gt;--%>

        <%--            </div>--%>
        <%--        </div>--%>


    </div>
    <%--    这个div用来存放响应隐藏面板--%>
    <div class="col-md-3 col-sm-3  hidden-xs" style="background-color: #8c8c8c">3</div>
    <div class="col-md-2 col-sm-2 col-xs-1 " style="background-color: #8a6d3b">4</div>

</div>
</body>

<script>
    var Kuid = "${sessionScope.user.uid}";  // 存储的当前登录用户的uid
    var start = 1;
    var path = "${applicationScope.path}";
    $(document).ready(function () {
        // 初始化界面
        created();

        function created() {
            $.ajax({
                url: 'sss',
                type: 'GET',
                data: {Uid: ${sessionScope.user.uid}, start: start},
                async: false,
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

                                userInfoList = userInfo;
                            },
                            error: function () {
                                alert("error!")
                            }
                        });


                        console.log('userInfoList', userInfoList);
                        console.log('shareTest', share.stext);
                        console.log('shareTest', share.sid);
                        var s1 = "    <div class=\"panel panel-default\" style=\"margin-bottom: 0px;\">\n" +
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
                            "        <img class=\"img-responsive center-block \" src=\"${initParam.path}" + share.simg + "\">\n" +
                            "    </div>";


                        var s2 = "    <%--        点赞、评论、转发部分--%>\n" +
                            "    <div class=\"panel panel-default\">\n" +
                            "        <!-- Default panel contents -->\n" +
                            "        <div class=\"panel-heading\" id=\"doPanel\" style=\"background-color: #ffffff ;\">\n" +
                            "            <%--                <div class=\"feed\" id=\"feed1\">--%>\n" +
                            "        <%--            点赞--%>\n" +
                            "          <a id=\"like" + share.sid + "\" href=\"#\">  <div class=\"heart \" style=\"margin-top: -25px;margin-left: 10px;display: inline-block;position: absolute;z-index: 0;id=\"like1\" rel=\"like\"></div>\n</a>" +
                            "        <%--                评论--%>\n" +
                            "            <div style=\"display: inline-block;margin-top: 3px;margin-left: 35px;position: absolute;z-index: 1\"><img\n" +
                            "                    src=\"images/评论%20(2).png\"></div>\n" +
                            "        <%--                分享--%>\n" +
                            "            <div style=\"margin-top:6px;margin-left: 77px\"><img src=\"images/分享%20(3).png\"></div>\n" +
                            // 收藏
                            "            <a id=\"" + share.sid + "\" href=\"javascript:updateKeep('" + share.sid + "')\"><div id=\"keep\" style=\"float: right;margin-right: -10px;margin-top:-30px\">" + iskeep(share.sid) + "</div>\n</a>" +

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

        }


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

        // 展示图片路径
        $('#browse').click(function makeThisFile() {
                $('#thisFile').click();
            }
        );


        // 当此元素的值发生改变时调用此函数
        $('#thisFile').change(function () {
            var path = $('#thisFile').val();  // 文件路径
            var fileNameIndex = path.lastIndexOf("\\") + 1;
            var filename = path.substr(fileNameIndex);
            $('#showname').val(filename)

        });

// 展示图片路径结束
// 当页面开始滚动时就触发此事件

        $(window).scroll(function () {
            var scrolltop = $(document).scrollTop();
            var scrollheight = $(document).height();
            var widowheight = $(window).height();
            if (scrolltop + widowheight + 1 >= scrollheight) {
                start++;
                created();
                console.log('start' + start);
            }
        });
        $('#uploadBtn').click(function btu() {
            start = 1;
            // var name=$("#name").val();
            var Svisable = $('#visibleSelected').val();
            var file = $("#thisFile")[0].files[0];//新特性，获取文件对象
            var Stext = $("#Stext").val();
            var fordata = new FormData();//新特性，得到formData对象，把获取的值扔进去，相当于map
            fordata.append("Svisible", Svisable);
            fordata.append("Stext", Stext);
            fordata.append("file", file);
            console.log(file);
            console.log('visable', Svisable);
            $.ajax({
                url: "uss",
                data: fordata,
                cache: false,
                processData: false, //必须写
                contentType: false, //必须写
                type: "post",
                success: function (data) {
                    console.log("Success")
                },
                complete: function () {
                    $("#Stext").val("");
                    $("#showname").val("");
                    $("#sharePanel").html('');
                    created();
                }
            })
        });

// 查询收藏状态
        function iskeep(Ksid) {
            var flag = false;
            console.log("run");
            var unSelected = "<img title=\"收藏\" id=\"unSelected\" src=\"images/星星线描%20(1).png\">";
            var selected = "<img title=\"取消收藏\" id=\"selected\" src=\"images/星星_选中.png\">";
            $.ajax({
                url: "iks",
                async: false,
                type: 'POST',
                data: {Kuid: Kuid, Ksid: Ksid},
                dataType: 'text',
                success: function (status) {
                    console.log('status', status);

                    if (status === "true") {
                        // $('#keep').html(selected);
                        flag = true;
                    }
                },
                error: function () {
                    alert("error!")
                }

            });
            if (flag === true) {
                return selected;
            } else {
                return unSelected
            }
        }


    });

    function updateKeep(Sid) {
        var flag = 0;
        var unSelected = "<img title=\"收藏\" id=\"unSelected\" src=\"images/星星线描%20(1).png\">";
        var selected = "<img title=\"取消收藏\" id=\"selected\" src=\"images/星星_选中.png\">";
        if ($("#" + Sid + " #selected").length > 0) {  // 原来选中点击变为不选中,取消收藏
            $.ajax({
                type: 'POST',
                url: "uks",
                dataType: "text",
                async: false,
                data: {flag: flag, Kuid: Kuid, Ksid: Sid},
                success: function (deleteStatus) {
                    if (deleteStatus === "true") {
                        $("#" + Sid + " #keep").html(unSelected);
                    } else {
                        console.log("取消收藏失败！")
                    }
                },
                error: function () {
                    console.log("error1")
                }
            });

            console.log("存在选中！");
        } else { // 原来不选中点击变为选中，收藏
            flag = 1;
            $.ajax({
                type: 'POST',
                url: "uks",
                dataType: "text",
                async: false,
                data: {flag: flag, Kuid: Kuid, Ksid: Sid},
                success: function (insertStatus) {
                    if (insertStatus === "true") {
                        $("#" + Sid + " #keep").html(selected);
                    } else {
                        console.log("收藏失败！")
                    }
                },
                error: function () {
                    console.log("error2")
                }
            });

        }
    }
</script>
</html>