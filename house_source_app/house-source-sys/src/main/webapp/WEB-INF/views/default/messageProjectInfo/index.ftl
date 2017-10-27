<#include "/frame/_layout.ftl"/>
<@layout page_tab="messageProjectInfo">



<div class="ibox">
    <div class="ibox-title">
    	<div id="toolbar" class="">
    		<div class="page-toolbar form-inline">
    			<div class="btn-group">
    			<!--
    				<a option="modalAdd" href="${basePath}/admin/messageProjectInfo/add.do?navTabId=saveProjectInfo" class="btn btn-outline btn-default" type="button"><i class="fa fa-plus"></i> 新建</a>
					<a option="selectDelete" href="${basePath}/admin/messageProjectInfo/batchDelete.do?navTabId=${navTabId}" class="btn btn-outline btn-default" type="button" ><i class="fa fa-trash"></i> 删除</a>
    				<a option="selectModalEdit" href="${basePath}/admin/messageProjectInfo/edit.do?navTabId=editProjectInfo" class="btn btn-outline btn-default" type="button"><i class="fa fa-paste"></i> 编辑</a>
    			-->	
    				<div class="form-group" style="margin-left:10px;">
						<form id="search-bar">
							<input type="text" class="form-control" name="projectTitle" value="" placeholder="项目名称"/>
							<input type="text" class="form-control" name="projectName" value="" placeholder="项目简称"/>
							<input type="text" class="form-control" name="smsChannelNameDesc" value="" placeholder="渠道名称	"/>
							<button class="btn btn-primary btn-sm " type="button" onclick="search('search-bar')"> 搜索</button>
						</form>
					</div>
				</div>
    		</div>
		</div>
    </div>
	<div class="ibox-content">
		<div class="pageContent">	
			<table id="table"></table>
			<div id="pager"></div>
		</div>
	</div>
</div>
<script>
	
	var options = {
        url:"${basePath}/admin/messageProjectInfo/list.do",
        tableId:"table",
        pager:"#pager",
        prmNames: {
             		sort: "sort",
             		order: "order",
             		search: "search"
             	},
        colModel: [
        	{
				name: 'id',
				index: 'id',
				label: '流水号',
				width: 100,
				sorttype: "int",
				search:true, 
				stype:'text',
			},
			{
				name:'projectTitle',
				index:'projectTitle',
				label:'项目名称',
				sortable: false,
				align: 'center',
				width:'200'
			},
			{
				name:'projectName',
				index:'projectName',
				label:'项目简称',
				sortable: false,
				align: 'center',
				width:'150'
			},
			{
				name:'smsChannelNameDesc',
				index:'smsChannelNameDesc',
				label:'选中的渠道名称',
				hidden:true,
				sortable: false,
				align: 'center',
				width:'150'
			},
			{
				name:'smsChannelName',
				index:'smsChannelName',
				label:'选中的渠道简称',
				hidden:true,
				sortable: false,
				align: 'center',
				width:'150'
			},
			{
				name:'createTime',
				index:'createTime',
				label:'创建时间',
				sortable: false,
				width:'200'
			},
			{
				name:'updateTime',
				index:'updateTime',
				label:'更新时间',
				sortable: false,
				width:'200'
			},
			{
				name: 'status',
				index: 'status',
				label: '状态',
				width: 150
			},
			{
				name: 'edit_btn',
				index: '',
				width: 200,
				label: '操作',
				formatter: function (value, grid, rows, state) {
					var editBtn = "<a option='modalEdit' href='${basePath}/admin/messageProjectInfo/edit.do?navTabId=editMemberInfo&id=" + rows.id +"' class='btn btn-warning btn-sm'><i class='glyphicon glyphicon-edit'></i> 编辑</a>";
					return editBtn;
				}
			}
		]
	}
	
	$(function () {
		common_jqgrid.createOptions(options);
		common_jqgrid.init();
    	
	});

</script>
</@layout>