<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html style="overflow-x:hidden;overflow-y:auto;">
<head>
	<title>数据选择</title>
	<%@include file="/WEB-INF/views/include/head.jsp" %>
	<%@include file="/WEB-INF/views/include/treeview.jsp" %>
	<script type="text/javascript">
		var key, lastValue = "", nodeList = [];
		var tree, setting = {
				//不允许多选
				view:{selectedMulti:false},
				//nocheck=true 表示此节点不显示 checkbox / radio，不影响勾选的关联关系，不影响父节点的半选状态。
				//当父节点设置 nocheck = true 时，设置子节点是否自动继承 nocheck = true 。
				check:{enable:"${checked}",nocheckInherit:true},
				//关于simpleData的格式:
				//确定 zTree 初始化时的节点数据、异步加载时的节点数据、或 addNodes 方法中输入的 newNodes 数据是否采用简单数据模式 (Array)
				//不需要用户再把数据库中取出的 List 强行转换为复杂的 JSON 嵌套格式
				data:{simpleData:{enable:true}},
				view:{
					fontCss:function(treeId, treeNode) {
						return (!!treeNode.highlight) ? {"font-weight":"bold"} : {"font-weight":"normal"};
					}
				},
				callback:{
					//再点击之前
					beforeClick:function(id, node){
						if("${checked}" == "true"){
							//关于下面函数中四个参数的分别定义是：
							//1、treeNode	json
								//需要勾选 或 取消勾选 的节点数据
							//2、checked		Boolean
								//checked = true 表示勾选节点
								//checked = false 表示节点取消勾选
								//省略此参数，则根据对此节点的勾选状态进行 toggle 切换
							//3、checkTypeFlagBoolean
								//checkTypeFlag = true 表示按照 setting.check.chkboxType 属性进行父子节点的勾选联动操作
								//checkTypeFlag = false 表示只修改此节点勾选状态，无任何勾选联动操作
							//4、callbackFlag	Boolean
								//callbackFlag = true 表示执行此方法时触发 beforeCheck & onCheck 事件回调函数
								//callbackFlag = false 表示执行此方法时不触发事件回调函数
							tree.checkNode(node, !node.checked, true, true);
							return false;
						}
				}, 
				onDblClick:function(){
					top.$.jBox.getBox().find("button[value='ok']").trigger("click");
				}}};
		
		$(document).ready(function(){
			$.get("${ctx}${url}${fn:indexOf(url,'?')==-1?'?':'&'}&extId=${extId}&module=${module}&t="+new Date().getTime(), function(zNodes){
				// 初始化树结构
				tree = $.fn.zTree.init($("#tree"), setting, zNodes);
				
				// 默认展开一级节点
				var nodes = tree.getNodesByParam("level", 0);
				for(var i=0; i<nodes.length; i++) {
					//expandNode函数的参数说明
					//1、treeNodeJSON
						//需要 展开 / 折叠 的节点数据
					//2、expandFlagBoolean
						//expandFlag = true 表示 展开 节点
						//expandFlag = false 表示 折叠 节点
					//3、sonSignBoolean
						//sonSign = true 表示 全部子孙节点 进行与 expandFlag 相同的操作
						//sonSign = false 表示 只影响此节点，对于其 子孙节点无任何影响
					//4、focusBoolean
						//focus = true 表示 展开 / 折叠 操作后，通过设置焦点保证此焦点进入可视区域内
						//focus = false 表示 展开 / 折叠 操作后，不设置任何焦点
					tree.expandNode(nodes[i], true, false, false);
				}
				// 默认选择节点
				var ids = "${selectIds}".split(",");
				for(var i=0; i<ids.length; i++) {
					var node = tree.getNodeByParam("id", ids[i]);
					if("${checked}" == "true"){
						try{
							tree.checkNode(node, true, true);
						}catch(e){}
						tree.selectNode(node, false);
					}else{
						tree.selectNode(node, true);
					}
				}
			});
			key = $("#key");
			key.bind("focus", focusKey).bind("blur", blurKey).bind("change keydown cut input propertychange", searchNode);
		});
	  	function focusKey(e) {
			if (key.hasClass("empty")) {
				key.removeClass("empty");
			}
		}
		function blurKey(e) {
			if (key.get(0).value === "") {
				key.addClass("empty");
			}
			searchNode(e);
		}
		function searchNode(e) {
			// 取得输入的关键字的值
			var value = $.trim(key.get(0).value);
			
			// 按名字查询
			var keyType = "name";
			if (key.hasClass("empty")) {
				value = "";
			}
			
			// 如果和上次一次，就退出不查了。
			if (lastValue === value) {
				return;
			}
			
			// 保存最后一次
			lastValue = value;
			
			// 如果要查空字串，就退出不查了。
			if (value === "") {
				return;
			}
			//先去高亮
			updateNodes(false);
			//搜索出符合条件的节点
				//根据节点数据的属性搜索，获取条件模糊匹配的节点数据 JSON 对象集合
			nodeList = tree.getNodesByParamFuzzy(keyType, value);
			//更新节点
			updateNodes(true);
		}
		function updateNodes(highlight) {
			for(var i=0, l=nodeList.length; i<l; i++) {
				nodeList[i].highlight = highlight;				
				tree.updateNode(nodeList[i]);
				tree.expandNode(nodeList[i].getParentNode(), true, false, false);
			}
		}
		function search() {
			$("#search").slideToggle(200);
			$("#txt").toggle();
			$("#key").focus();
		}
	</script>
</head>
<body>
	<div style="position:absolute;right:8px;top:5px;cursor:pointer;" onclick="search();">
		<i class="icon-search"></i><label id="txt">搜索</label>
	</div>
	<div id="search" class="control-group hide" style="padding:10px 0 0 15px;">
		<label for="key" class="control-label" style="float:left;padding:5px 5px 3px;">关键字：</label>
		<input type="text" class="empty" id="key" name="key" maxlength="50" style="width:180px;">
	</div>
	<div id="tree" class="ztree" style="padding:15px 20px;"></div>
</body>