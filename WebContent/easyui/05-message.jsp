<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>message-消息提示</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript">
		$(function () {
			//$.messager.alert("标题","内容信息","info");
			/* window.setTimeout(function(){
				$.messager.show({
					title:'欢迎信息',
					msg:'欢迎登录系统',
					timeout:3000,
					showType:'slide'
				});
			},3000); */
			/* $.messager.confirm("提示信息","确定删除当前信息？",function(r){
				alert(r);
			}); */
			/* $.messager.prompt("提示信息","确定删除当前信息？",function(r){
				alert(r);
			}); */
			$.messager.progress();
			//进度条延迟三秒钟之后再关闭
			window.setTimeout(function(){
				$.messager.progress('close');
			},3000);
		});
		
	</script>
</head>
<body>
	
</body>
</html>