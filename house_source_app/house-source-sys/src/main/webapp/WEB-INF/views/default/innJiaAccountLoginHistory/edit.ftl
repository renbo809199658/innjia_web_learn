
<div class="ibox">
    <div class="ibox-title">
    	<h4 class="pull-left"><label>会员编辑</label></h4>
    	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    </div>
    	<div class="ibox-content">
    		<div class="pageContent">
    			<form class="form-horizontal m-t" id="ajaxForm" method="post" action="${basePath}/admin/innjiaAccount/update.do" >
    				<input type="hidden" name="id" value="${model.innJiaAccount.id}"/>
    				<div class="pageFormContent">    					
						<div class="form-group col-md-12 col-sm-12">
							<label class="col-md-2 col-sm-2 control-label">会员昵称：</label>
							<div class="col-md-9 col-sm-9">
								<input class="form-control" disabled name="nickName" value="${model.innJiaAccount.nickName}" type="text" />
							</div>
						</div>
						<div class="form-group col-md-12 col-sm-12">
							<label class="col-md-2 col-sm-2 control-label">性别：</label>
							<div class="col-md-9 col-sm-9">
								<label class="radioButton"><input name="sex" type="radio" value="男"  <#if model.innJiaAccount.sex=="男" || model.innJiaAccount.sex!="女">checked</#if> disabled />男</label>
								&nbsp;&nbsp;
								<label class="radioButton"><input name="sex" type="radio" value="女" <#if model.innJiaAccount.sex=="女">checked</#if> disabled />女</label>
							</div>
						</div>
						<div class="form-group col-md-12 col-sm-12">
							<label class="col-md-2 col-sm-2 control-label">住址：</label>
							<div class="col-md-9 col-sm-9">
								<input class="form-control" disabled name="address" value="${model.innJiaAccount.address}" type="text" />
							</div>
						</div>
						<div class="form-group col-md-12 col-sm-12">
							<label class="col-md-2 col-sm-2 control-label">电子邮箱：</label>
							<div class="col-md-9 col-sm-9">
								<input class="form-control" disabled name="email" value="${model.innJiaAccount.email}" type="text" />
							</div>
						</div>						
    				</div>
    				<div class="formBar">
						<div class="ibox-content">    						
							<button type="button" class="btn btn-danger" data-dismiss="modal">取消</button>
						</div>
					</div>
    			</form>
    		</div>
    	</div>
    </div>
</div>
<!-- 引入事件绑定 -->
<script src="${basePath }/public/js/viewBind.js"></script>