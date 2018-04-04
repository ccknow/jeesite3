<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ attribute name="id" type="java.lang.String" required="true" description="编号"%>
<%@ attribute name="name" type="java.lang.String" required="true" description="输入框名称"%>
<%@ attribute name="value" type="java.lang.String" required="true" description="输入框值"%>

<i id="${id}Icon" class="icon-${not empty value?value:' hide'}"></i>&nbsp;
<label id="${id}IconLabel">${not empty value?value:'无'}</label>&nbsp;

<input id="${id}" name="${name}" type="hidden" value="${value}"/>
<a id="${id}Button" href="javascript:" class="btn">选择</a>&nbsp;&nbsp;

<script type="text/javascript">
	$("#${id}Button").click(function(){
		//一打开现获取原来的图标
		top.$.jBox.open("iframe:${ctx}/tag/iconselect?value="+$("#${id}").val(), "选择图标", 700, $(top.document).height()-180, {
            buttons:{"确定":"ok", "清除":"clear", "关闭":true}, submit:function(v, h, f){
                if (v=="ok"){
                    //所选择的图标的值
                    //这个#icon的值是在tagIconselect.jsp页面进行设定
                	var icon = h.find("iframe")[0].contentWindow.$("#icon").val();
					//显示新图标的信息	改写就图标的值
                	$("#${id}Icon").attr("class", "icon-"+icon);
	                $("#${id}IconLabel").text(icon);
	                $("#${id}").val(icon);
                }else if (v=="clear"){
	                $("#${id}Icon").attr("class", "icon- hide");
	                $("#${id}IconLabel").text("无");
	                $("#${id}").val("");
                }
            }, loaded:function(h){
                $(".jbox-content", top.document).css("overflow-y","hidden");
            }
        });
	});
</script>