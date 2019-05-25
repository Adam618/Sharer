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
body {background-color: #fafafa}

    </style>
</head>
<body>

<div class="row">
    <div class="col-md-2 col-sm-2 col-xs-1 " style="background-color: #2e6da4">1
        <%--第一列--%>
    </div>

    <div class="col-md-5  col-sm-5 col-xs-10 " id="sharePanel">
<%--        发表动态部分开始--%>
        <div class="row" style="margin-bottom: 40px;background-color:white" >
            <div  style="margin-right: 0;margin-left: 0;margin-top: 20px;">
                <form role="form" style="">
                    <div class="form-group">
                        <textarea style="resize: none;" placeholder="有什么新鲜事？" class="form-control " rows="3"></textarea>
                    </div>
                </form>

            </div>

            <div style="margin-top: -15px">
                <input style="position: absolute;opacity: 0;display: none" id="thisFile" type="file">
                <img onclick="makeThisFile()" style="float: left;margin-left:2px;margin-top: 5px"
                     id="browse" src="images/图片.png" alt="选择图片">
                <input type="text" id="showname" style="margin-left: 4px;margin-top: 5px;width: 95px">
                <button onclick="upload()" type="button" class="btn btn-info btn-sm" id="loginBtn"
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
  <%--发表动态部分结束--%>
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
<%--                &lt;%&ndash;            点赞&ndash;%&gt;--%>
<%--                <div class="heart "--%>
<%--                     style="margin-top: -25px;margin-left: 10px;display: inline-block;position: absolute;z-index: 0;"--%>
<%--                     id="like1" rel="like"></div>--%>
<%--                &lt;%&ndash;                评论&ndash;%&gt;--%>
<%--                <div style="display: inline-block;margin-top: 3px;margin-left: 35px;position: absolute;z-index: 1"><img--%>
<%--                        src="images/评论%20(2).png"></div>--%>
<%--                &lt;%&ndash;                分享&ndash;%&gt;--%>
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
// 展示图片路径
    function makeThisFile() {
        $('#thisFile').click();
    }

    // 当此元素的值发生改变时调用此函数
    $('#thisFile').change(function () {
        $('#showname').val($(this).val())

    });
// 展示图片路径结束

// 上传图片
function upload() {

    var fakePath= $('#thisFile').val();
   // var path = fakePath.replace(/fakepath/, "shareData\\shareImg");  // 将虚假路径替换掉
    // var strFileName = path.substring(fileName.lastIndexOf("\\")+1);
  $.ajax({
      url:"uss",
      type:'POST',
      async:false,
      data:{path:path},
      success:function () {
          alert("成功！")
      },
      error:function () {
          alert("失败！")
      }
  })

}


</script>
</html>