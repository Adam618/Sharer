
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>PersonalPage</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <link rel="stylesheet" href="css/personalPage_css.css" >
</head>
<body>
<div class="container">
    <!--用户头像和基本信息-->
    <div class="header">
        <div class="row">
            <div class="col-lg-2 col-lg-offset-2 col-md-2 col-md-2 col-md-offset-2 col-sm-offset-3 col-xs-offset-4 col-sm-2 col-xs-4">
                    <!--style="margin-left: 40%;width: inherit"-->
                    <img src="profilePicture/defaultImg.jpeg" alt="用户头像" class="img-responsive img-circle">
            </div>
            <div style="margin-top: 2%" class="col-lg-5 col-lg-offset-1 col-md-5 col-sm-5 col-xs-5 col-sm-offset-1 col-xs-offset-4">
                <span style="font-size: 35px;font-weight: 200">adam.2671</span><br class="visible-xs"><br class="visible-xs">
                &nbsp;&nbsp;&nbsp;&nbsp;<a style="margin-top:-4%"class="btn btn-default" href="#" role="button"><img style="display: inline-block" src="icons/edit.png" class="img-responsive"><b>编辑信息</b></a>
                <br><br>
                <span style="margin-left: 0px;font-weight: 400;"class="user_content">0&nbsp;帖子</span>
                <span class="user_content"><a class="userLike" data-toggle="modal" data-target="#userLikeModal">0&nbsp;关注</a></span>
                <span class="user_content"><a onclick="getFan(2)" class="userLike" data-toggle="modal" data-target="#userFanModal">0&nbsp;粉丝</a></span><br><br>
                <h4>我的签名</h4>
            </div>
        </div>

    <br><br>
    <!--标签页（用户动态，和收藏动态）-->
    <div class="share col-lg-9">
        <div>
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#我的动态" aria-controls="home" role="tab" data-toggle="tab"><img style="display: inline-block" src="icons/动态.png"class="img-responsive">&nbsp;我的动态</a></li>
                <li role="presentation"><a href="#我的收藏" aria-controls="profile" role="tab" data-toggle="tab"><img style="display: inline-block" src="icons/收藏.png"class="img-responsive">我的收藏</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="我的动态">
                    我的动态
                </div>
                <div role="tabpanel" class="tab-pane" id="我的收藏">
                    我的收藏
                </div>
            </div>

        </div>
    </div>
</div>

    <!--用户关注,粉丝静态块-->
    <!-- userLikeModal -->
    <div class="modal fade" id="userLikeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div style="width:25%; min-width: 300px" class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">关注列表</h4>
                </div>
                <div style="overflow-x: auto; overflow-y: auto;height: 400px;" class="modal-body">
                    <div>
                        <img style="max-width: 60px;max-height: 60px;float: left" src="profilePicture/defaultImg.jpeg" class="img img-circle img-responsive">
                        <div style="float: left;margin-top: 2%"><span><b style="margin-top: 15%">成龙</b></span><p>个性签名</p></div>
                        <a class="btn-userLike btn btn-default btn-sm">已关注</a>
                    </div>
                    <div class="clearfix"></div>
                    <hr>
                    <div>
                        <img style="max-width: 60px;max-height: 60px;display: inline-block;" src="profilePicture/defaultImg.jpeg" class="img img-circle img-responsive">
                        <span><b>李连杰</b></span>
                        <a class="btn-userLike btn btn-primary btn-sm">关注</a>
                    </div>
                    <hr>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- userFanModal -->
    <div class="modal fade" id="userFanModal" tabindex="-1" role="dialog" aria-labelledby="myFanLabel">
        <div style="width:25%; min-width: 300px"class="modal-dialog" role="document">
            <div  class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myFanLabel">粉丝列表</h4>
                </div>
                <div  id="fan-body"style="overflow-x: auto; overflow-y: auto;height: 400px;"class="modal-body">
                    <div>
                        <img style="max-width: 60px;max-height: 60px;display: inline-block;" src="profilePicture/defaultImg.jpeg" class="img img-circle img-responsive">
                        <span><b>赵丽颖</b></span>
                        <a class="btn-userLike btn btn-primary btn-sm">关注</a>
                    </div>
                    <hr>
                    <div>
                        <img style="max-width: 60px;max-height: 60px;display: inline-block;" src="profilePicture/defaultImg.jpeg" class="img img-circle img-responsive">
                        <span><b>鹿晗</b></span>
                        <a class="btn-userLike btn btn-primary btn-sm">关注</a>
                    </div>
                    <hr>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="js/jquery-3.3.1.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
    function getFan(id){
        $.ajax({
            url:"FS",
            type:"POST",
            data:{"Uid":id},
            // 要提交的数据格式，以键值对的形式存放
            success:function (data) {
                console.log(data)
                var c="";
                for(var i=0;i<data.length;i++){
                    c = c + "<div><img style=\"max-width: 60px;max-height: 60px;display: inline-block;\" src=\"profilePicture/"+data[i].uimg+"\" class=\"img img-circle img-responsive\">";
                    c = c + "&nbsp;&nbsp;<span><b>"+data[i].uname+"</b></span>"
                    if(isFan(id,data[i].uid)=='true'){
                        c = c + "<a class=\"btn-userLike btn btn-default btn-sm\">已关注</a></div><hr>";
                    }else{
                        c = c + "<a class=\"btn-userLike btn btn-primary btn-sm\">关注</a></div><hr>";
                    }
                }
                $("#fan-body").html(c);
            },
            dataType:"json"
        })
    }
    function isFan(fid,sid){
        var flag = 'false';
        $.ajax({
            url:"IFS",
            async:false,
            type:"POST",
            data:{"Fid":fid,"Sid":sid},
            success:function(data) {
                flag = data;
            },
            dataType:"text"
        })
        return flag;
    }
</script>
</body>
</html>
