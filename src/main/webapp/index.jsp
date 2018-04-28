+<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	
	function requestJson() {  
		var data1 = document.getElementById("data1").value;
		var data2 = document.getElementById("data2").value;
		var data3 = document.getElementById("data3").value;
		var data4 = document.getElementById("data4").value;
		var data5 = document.getElementById("data5").value;
		var data6 = document.getElementById("data6").value;
		var data7 = document.getElementById("data7").value;
		var data8 = document.getElementById("data8").value;
		var str = {
						"account_id": data1,
						"black_date": data2,
						"msg_num": 1,
						"reject_num": 21,
						"role_id": data5,
						"role_name": data6,
						"server_id": data7,
						"status": data8,
						"token_id": "测试内容2cd6",
						"vip_level": 71423
					}
		
		$.ajax({
		
			url: "${pageContext.request.contextPath}/rowdata",
			
			data:JSON.stringify(str),
			
			type: "POST",

			contentType: "application/json;charset=utf-8",
			success:function (Json) {
					tan(Json);
            },

			error:function(er){
				alert(er);
			}

		});
	}
	
	function tan(Json){
	
		var json = eval('(' + Json + ')');
		var datanav = json.data.rows;
		
		
		var table = document.getElementsByTagName('table')[0];
		for(var i = 0 ; i < datanav.length ; i++){
			var tr = table.insertRow(table.rows.length);
			var obj = datanav[i];
			for(var p in obj){
				if (p == 'tenancy'){
					break;
				}
				var td = tr.insertCell(tr.cells.length);
				td.innerText = obj[p];
			}
		}
		
	}
	
	</script>
  </head>
  
  <body>

<div class="container-fluid" style="display:inline;">
	<div class="row-fluid" style="display:inline;">
		</br>
		<div class="span3" style="display:inline;">
		
		<center>
			<h2>
				标黑审核
			</h2>
		</center>
		</div>
		</br></br>
	</div>
	</br>
	<div class="row-fluid">
		<div class="span12">
			<div class="row-fluid" style="display:inline;">
				<div class="span1" style="display:inline;">
					<div class="btn-group">
						标黑日期
						<select id="data1">
							<option >2018-03-05</option>
							<option >2018-03-06</option>
							<option >2018-03-07</option>
							<option >2018-03-08</option>
						</select>
					</div>
				</div>
				至
				<div class="span1" style="display:inline;">
					<div class="btn-group">
						<select id="data2">
							<option >2018-04-05</option>
							<option >2018-04-06</option>
							<option >2018-04-07</option>
							<option >2018-04-08</option>
						</select>
					</div>
				</div>
				<div class="span1" style="display:inline;">
					<div class="btn-group">
					    审核状态
						<select id="data3">
							<option value ="volvo">全部</option>
							<option value ="saab">待审核</option>
							<option value="opel">解除标黑</option>
							<option value="audi">封号处理</option>
						</select>
					</div>
				</div>
				<div class="span1" style="display:inline;" >
					<div class="btn-group">
						屏蔽次数
						<select id="data4">
							<option value ="volvo">全部</option>
							<option value ="saab">大于</option>
							<option value="opel">等于</option>
							<option value="audi">小于</option>
							<option value="opel1">大于等于</option>
							<option value="audi1">小于等于</option>
						</select>
					</div>
				</div>
				</br>
				</br>
				<div class="span1" style="display:inline;">
				账号ID: <input  id="data5" type="text" >
				</div>
				<div class="span1" style="display:inline;">
				服务器ID: <input id="data6" type="text" >
				</div>
				<div class="span1" style="display:inline;">
				角色ID: <input  id="data7" type="text" >
				</div>
				<div class="span1" style="display:inline;">
					<div class="btn-group">
						 VIP等级
						 <select id="data8">
							<option value ="volvo">全部</option>
							<option value ="saab">大于</option>
							<option value="opel">等于</option>
							<option value="audi">小于</option>
							<option value="opel1">大于等于</option>
							<option value="audi1">小于等于</option>
						</select>
					</div>
				</div>
				<div class="span1">
				</div>
				</br>
				<div class="span3" style="display:inline;" >
					 <button  onclick="requestJson()" >查询</button>
				</div>
			</div>
			</br>
			<table id="maintable" class="table">
				
					<tr>
						<th>
							账号ID
						</th>
						<th>
							服务器ID
						</th>
						<th>
							角色ID
						</th>
						<th>
							角色名
						</th>
						<th>
							VIP等级
						</th>
						<th>
							聊天次数
						</th>
						<th>
							屏蔽次数
						</th>
						<th>
							标黑日期
						</th>
						<th>
							审核状态
						</th>
						<th>
							等级
						</th>
						<th>
							查看详情
						</th>
					</tr>
				
			</table>
		</div>
	</div>
						<div class="pagination">
						<center>
						<ul>

							<li style="display:inline;margin-left: 30px" style="display:inline;"><a href="${pageContext.request.contextPath  }/pageservlet?currentpage=${pb.currentPage==pb.totalPage?pb.totalPage:pb.currentPage+1}">&lt;上一页</a></li>
							<li class="active" style="display:inline;"><a href="#">1</a></li>
							<li class="disabled" style="display:inline;"><a href="#">2</a></li>
							<li style="display:inline;"><a href="#" style="display:inline;">3</a></li>
							
							<li style="display:inline;margin-left: 30px" style="display:inline;">第1页/共5页</li>

							<li style="display:inline;margin-left: 30px" style="display:inline;"><a href="${pageContext.request.contextPath  }/pageservlet?currentpage=${pb.currentPage==pb.totalPage?pb.totalPage:pb.currentPage+1}">&lt;下一页</a></li>

						</ul>
						</center>

					</div>
</div>
</body>
</html>
