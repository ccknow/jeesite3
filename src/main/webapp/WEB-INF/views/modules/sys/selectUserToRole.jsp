<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>分配角色</title>
	<%@include file="/WEB-INF/views/include/treeview.jsp" %>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
	
		var selectedTree;//zTree已选择对象
		
		// 初始化
		$(document).ready(function(){

			selectedTree = $.fn.zTree.init($("#selectedTree"), setting, selectedNodes);

			$.get("${ctx}/sys/role/users?id=${role.id}", function(userNodes){
				$.fn.zTree.init($("#userTree"), setting, userNodes);
			});
		});

		var setting = {
				view: {
					selectedMulti:false,
					//设置 name 属性是否支持 HTML 脚本
					//如果允许 HTML 脚本，请根据自己的需求做校验，避免出现 js 注入等安全问题。
					//默认值: false
					nameIsHTML:true,
					//设置 zTree 是否显示节点的 title 提示信息(即节点 DOM 的 title 属性)。
					showTitle:false
				},
				data: {simpleData: {enable: true}},
				callback: {onClick: treeOnClick}
		};
		
	
		var pre_selectedNodes =[
   		        <c:forEach items="${role.userList}" var="user">
   		        {
   	   		        id:"${user.id}",
   		         	pId:"0",
   		         	name:"<font color='red' style='font-weight:bold;'>${user.name}</font>"},
   		        </c:forEach>
   	   	];
		
		var selectedNodes =[
		        <c:forEach items="${role.userList}" var="user">
		        {id:"${user.id}",
		         pId:"0",
		         name:"<font color='red' style='font-weight:bold;'>${user.name}</font>"},
		        </c:forEach>];
		
		var pre_ids = "${selectIds}".split(",");
		var ids = "${selectIds}".split(",");
		
		//点击选择项回调
		function treeOnClick(event, treeId, treeNode, clickFlag){

			if("userTree"==treeId){
				if($.inArray(String(treeNode.id), ids)<0){
					selectedTree.addNodes(null, treeNode);
					ids.push(String(treeNode.id));
				}
			}
			
            if("selectedTree"==treeId){
                //判断该id是否原始存在的	若不是
                if($.inArray(String(treeNode.id), pre_ids)<0){
                    //将id移除
                    selectedTree.removeNode(treeNode);
                    ids.splice($.inArray(String(treeNode.id), ids), 1);
                }else{
                    top.$.jBox.tip("只能删除新添加人员！", 'info');
                }
            }
		}
				
		function clearAssign(){
			var submit = function (v, h, f) {
			    if (v == 'ok'){
					var tips="";
					if(pre_ids.sort().toString() == ids.sort().toString()){
						tips = "未给角色【${role.name}】分配新成员！";
					}else{
						tips = "已选人员清除成功！";
					}
					
					//slice() 方法可从已有的数组中返回选定的元素
					//将pre_ids数组重新赋值给ids数组
					ids=pre_ids.slice(0);
					selectedNodes=pre_selectedNodes;
					$.fn.zTree.init($("#selectedTree"), setting, selectedNodes);
			    	top.$.jBox.tip(tips, 'info');
			    	
			    } else if (v == 'cancel'){
			    	// 取消
			    	top.$.jBox.tip("取消清除操作！", 'info');
			    }
			    return true;
			};
			tips="确定清除角色【${role.name}】下的已选人员？";
			top.$.jBox.confirm(tips, "清除确认", submit);
		};
	</script>
</head>
<body>
	<div id="assignRole" class="row-fluid span12">

		<div class="span4">
			<p>待选用户：</p>
			<div id="userTree" class="ztree"></div>
		</div>
		
		<div class="span4" style="padding-left:16px;border-left: 1px solid #A8A8A8;">
			<p>已选用户：</p>
			<div id="selectedTree" class="ztree"></div>
		</div>
	</div>
</body>
</html>
