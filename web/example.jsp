<%--
  Created by IntelliJ IDEA.
  User: 24429
  Date: 2019/5/23
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="css/fileinput.css" />
    <script type="text/javascript" src="js/fileinput.js"></script>
    <script type="text/javascript" src="js/zh.js"></script>

</head>
<body>
<input type="file" id="input-id" />
</body>
<script>
    $("#cover").fileinput({
        language: "zh",
        showCaption: false, // 不显示本地文件名
        allowedFileTypes: ['image'], // 只允许上传图片
        allowedFileExtensions: ["jpg", "jpeg", "png", "gif"],
        uploadUrl: "{{ url('uploads/image') }}" //上传图片的服务器地址
    }).on('fileuploaded', function(event, data, previewId, index){
        var response = data.response;
        $('input#coverUploader').attr('required', false);
        var input = $('<input type="hidden" name="cover" />');
        input.attr('value', response.key);
        $('form').append(input);
    });
</script>
</html>
