<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>datagrid--数据表格使用</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/js/easyui/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/easyui/locale/easyui-lang-zh_CN.js"></script>
	
</head>
<body>
	<h3>方式一：将静态的HTML代码渲染成datagrid格式</h3>
	<table class="easyui-datagrid">
		<thead>
			<tr>
				<th data-options="field:'id'">编号</th>
				<th data-options="field:'name'">姓名</th>
				<th data-options="field:'age'">年龄</th>
			</tr>  
		</thead>
		<tbody>
			<tr>
				<td>001</td>
				<td>张三</td>
				<td>6</td>
			</tr>
			<tr>
				<td>002</td>
				<td>李四</td>
				<td>14</td>
			</tr>
		</tbody>
	</table>
	<h3>方式二：发送ajax请求获取json数据(数据动态查找)</h3>
	<table class="easyui-datagrid" data-options="url:'/bos/json/data.json'">
		<thead>
			<tr>
				<th data-options="field:'id'">编号</th>
				<th data-options="field:'name'">姓名</th>
				<th data-options="field:'age'">年龄</th>
			</tr>  
		</thead>
	</table>
	<h3>方式三：通过js代码动态创建datagrid</h3>
	<table id="grid">
	</table>
	<script type="text/javascript">
		$(function(){
			$("#grid").datagrid({
				//通过键值对的方式，设置一些表格的属性
				columns:[[     //定义标题所有的行
				          {field:'id',title:'编号',checkbox:true},
				          {field:'name',title:'姓名'},
				          {field:'age',title:'年龄'}
				          ]],
				 url:'/bos/json/data.json',   //指定URL地址，控件自动发送ajax请求获取数据
				 toolbar:[
				          {text:'添加',iconCls:'icon-edit'},
				          {text:'修改',iconCls:'icon-remove',
				        	  handler:function(){
				        	  //获得选中的行
				        	    var rows = $("#grid").datagrid("getSelections");
								for(var i=0;i<rows.length;i++){
									var id = rows[i].id;
									alert(id);
								}				        	  
				          	  }},
				          {text:'删除',iconCls:'icon-edit'}
				          ],
				 singleSelect:true,  //是否可以单选
				 pagination:true,  //分页条
				 pageList:[3,5,7]   //可选的分页的数量
			});
		});
	</script>
</body>
</html>