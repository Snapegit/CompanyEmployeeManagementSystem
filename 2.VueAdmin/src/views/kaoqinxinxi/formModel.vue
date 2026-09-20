<template>
	<div>
		<el-dialog v-model="formVisible" :title="formTitle" width="80%" destroy-on-close :fullscreen='false'>
			<el-form class="formModel_form" ref="formRef" :model="form" label-width="$template2.back.add.form.base.labelWidth" :rules="rules">
				<el-row>
					<el-col :span="12">
						<el-form-item label="账号" prop="zhanghao">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.zhanghao?true:false"
								v-model="form.zhanghao" 
								placeholder="请选择账号"
								@change="zhanghaoChange">
								<el-option v-for="(item,index) in zhanghaoLists" :label="item" :value="item">
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="姓名" prop="xingming">
							<el-input class="list_inp" v-model="form.xingming" placeholder="姓名"
								 type="text" 								:readonly="!isAdd||disabledForm.xingming?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="手机" prop="shouji">
							<el-input class="list_inp" v-model="form.shouji" placeholder="手机"
								 type="text" 								:readonly="!isAdd||disabledForm.shouji?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="岗位" prop="gangwei">
							<el-input class="list_inp" v-model="form.gangwei" placeholder="岗位"
								 type="text" 								:readonly="!isAdd||disabledForm.gangwei?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="部门名称" prop="bumenmingcheng">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.bumenmingcheng?true:false"
								v-model="form.bumenmingcheng" 
								placeholder="请选择部门名称"
								@change="bumenmingchengChange">
								<el-option v-for="(item,index) in bumenmingchengLists" :label="item" :value="item">
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="部门编号" prop="bumenbianhao">
							<el-input class="list_inp" v-model="form.bumenbianhao" placeholder="部门编号"
								 type="text" 								:readonly="!isAdd||disabledForm.bumenbianhao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="出勤次数" prop="chuqincishu">
							<el-input class="list_inp" v-model="form.chuqincishu" placeholder="出勤次数"
								 type="text" 								:readonly="!isAdd||disabledForm.chuqincishu?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="加班次数" prop="jiabancishu">
							<el-input class="list_inp" v-model="form.jiabancishu" placeholder="加班次数"
								 type="text" 								:readonly="!isAdd||disabledForm.jiabancishu?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="迟到次数" prop="chidaocishu">
							<el-input class="list_inp" v-model="form.chidaocishu" placeholder="迟到次数"
								 type="text" 								:readonly="!isAdd||disabledForm.chidaocishu?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="早退次数" prop="zaotuicishu">
							<el-input class="list_inp" v-model="form.zaotuicishu" placeholder="早退次数"
								 type="text" 								:readonly="!isAdd||disabledForm.zaotuicishu?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="缺勤次数" prop="queqincishu">
							<el-input class="list_inp" v-model="form.queqincishu" placeholder="缺勤次数"
								 type="text" 								:readonly="!isAdd||disabledForm.queqincishu?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="外出次数" prop="waichucishu">
							<el-input class="list_inp" v-model="form.waichucishu" placeholder="外出次数"
								 type="text" 								:readonly="!isAdd||disabledForm.waichucishu?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="登记时间" prop="dengjishijian">
							<el-date-picker
								class="list_date"
								v-model="form.dengjishijian"
								format="YYYY-MM-DD HH:mm:ss"
								value-format="YYYY-MM-DD HH:mm:ss"
								type="datetime"
								:readonly="!isAdd||disabledForm.dengjishijian?true:false"
								placeholder="请选择登记时间" />
						</el-form-item>
					</el-col>
				</el-row>
			</el-form>
			<template #footer v-if="isAdd||type=='logistics'||type=='reply'">
				<span class="formModel_btn_box">
					<el-button class="formModel_cancel" @click="closeClick">取消</el-button>
					<el-button class="formModel_confirm" type="primary" @click="save"
						>
						提交
					</el-button>
				</span>
			</template>
		</el-dialog>
	</div>
</template>
<script setup>
	import {
		reactive,
		ref,
		getCurrentInstance,
		nextTick,
		computed,
		defineEmits
	} from 'vue'
	const context = getCurrentInstance()?.appContext.config.globalProperties;	
	const emit = defineEmits(['formModelChange'])
	//基础信息
	const tableName = 'kaoqinxinxi'
	const formName = '考勤信息'
	//基础信息
	//form表单
	const form = ref({})
	const disabledForm = ref({
		zhanghao : false,
		xingming : false,
		shouji : false,
		gangwei : false,
		bumenmingcheng : false,
		bumenbianhao : false,
		chuqincishu : false,
		jiabancishu : false,
		chidaocishu : false,
		zaotuicishu : false,
		queqincishu : false,
		waichucishu : false,
		dengjishijian : false,
	})
	const formVisible = ref(false)
	const isAdd = ref(false)
	const formTitle = ref('')
	//表单验证
	//匹配整数
	const validateIntNumber = (rule, value, callback) => {
		if (!value) {
			callback();
		} else if (!context?.$toolUtil.isIntNumer(value)) {
			callback(new Error("请输入整数"));
		} else {
			callback();
		}
	}
	//匹配数字
	const validateNumber = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isNumber(value)) {
			callback(new Error("请输入数字"));
		} else {
			callback();
		}
	}
	//匹配手机号码
	const validateMobile = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isMobile(value)) {
			callback(new Error("请输入正确的手机号码"));
		} else {
			callback();
		}
	}
	//匹配电话号码
	const validatePhone = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isPhone(value)) {
			callback(new Error("请输入正确的电话号码"));
		} else {
			callback();
		}
	}
	//匹配邮箱
	const validateEmail = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isEmail(value)) {
			callback(new Error("请输入正确的邮箱地址"));
		} else {
			callback();
		}
	}
	//匹配身份证
	const validateIdCard = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.checkIdCard(value)) {
			callback(new Error("请输入正确的身份证号码"));
		} else {
			callback();
		}
	}
	//匹配网站地址
	const validateUrl = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isURL(value)) {
			callback(new Error("请输入正确的URL地址"));
		} else {
			callback();
		}
	}
	const rules = ref({
		zhanghao: [
		],
		xingming: [
		],
		shouji: [
		],
		gangwei: [
		],
		bumenmingcheng: [
		],
		bumenbianhao: [
		],
		chuqincishu: [
		],
		jiabancishu: [
		],
		chidaocishu: [
		],
		zaotuicishu: [
		],
		queqincishu: [
		],
		waichucishu: [
		],
		dengjishijian: [
		],
	})
	//表单验证
	
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	//账号列表
	const zhanghaoLists = ref([])
	//部门名称列表
	const bumenmingchengLists = ref([])
	//methods

	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//重置
	const resetForm = () => {
		form.value = {
			zhanghao: '',
			xingming: '',
			shouji: '',
			gangwei: '',
			bumenmingcheng: '',
			bumenbianhao: '',
			chuqincishu: '',
			jiabancishu: '',
			chidaocishu: '',
			zaotuicishu: '',
			queqincishu: '',
			waichucishu: '',
			dengjishijian: '',
		}
	}
	//获取info
	const getInfo = ()=>{
		context?.$http({
			url: `${tableName}/info/${id.value}`,
			method: 'get'
		}).then(res => {
			let reg=new RegExp('../../../file','g')
			form.value = res.data.data
			formVisible.value = true
		})
	}
	const crossRow = ref('')
	const crossTable = ref('')
	const crossTips = ref('')
	const crossColumnName = ref('')
	const crossColumnValue = ref('')
	//初始化
	const init=(formId=null,formType='add',formNames='',row=null,table=null,statusColumnName=null,tips=null,statusColumnValue=null)=>{
		resetForm()
			form.value.dengjishijian = context?.$toolUtil.getCurDateTime()
		if(formId){
			id.value = formId
			type.value = formType
		}
		if(formType == 'add'){
			isAdd.value = true
			formTitle.value = '新增' + formName
			formVisible.value = true
		}else if(formType == 'info'){
			isAdd.value = false
			formTitle.value = '查看' + formName
			getInfo()
		}else if(formType == 'edit'){
			isAdd.value = true
			formTitle.value = '修改' + formName
			getInfo()
		}
		else if(formType == 'cross'){
			isAdd.value = true
			formTitle.value = formNames
			// getInfo()
			for(let x in row){
				if(x=='zhanghao'){
					form.value.zhanghao = row[x];
					disabledForm.value.zhanghao = true;
					continue;
				}
				if(x=='xingming'){
					form.value.xingming = row[x];
					disabledForm.value.xingming = true;
					continue;
				}
				if(x=='shouji'){
					form.value.shouji = row[x];
					disabledForm.value.shouji = true;
					continue;
				}
				if(x=='gangwei'){
					form.value.gangwei = row[x];
					disabledForm.value.gangwei = true;
					continue;
				}
				if(x=='bumenmingcheng'){
					form.value.bumenmingcheng = row[x];
					disabledForm.value.bumenmingcheng = true;
					continue;
				}
				if(x=='bumenbianhao'){
					form.value.bumenbianhao = row[x];
					disabledForm.value.bumenbianhao = true;
					continue;
				}
				if(x=='chuqincishu'){
					form.value.chuqincishu = row[x];
					disabledForm.value.chuqincishu = true;
					continue;
				}
				if(x=='jiabancishu'){
					form.value.jiabancishu = row[x];
					disabledForm.value.jiabancishu = true;
					continue;
				}
				if(x=='chidaocishu'){
					form.value.chidaocishu = row[x];
					disabledForm.value.chidaocishu = true;
					continue;
				}
				if(x=='zaotuicishu'){
					form.value.zaotuicishu = row[x];
					disabledForm.value.zaotuicishu = true;
					continue;
				}
				if(x=='queqincishu'){
					form.value.queqincishu = row[x];
					disabledForm.value.queqincishu = true;
					continue;
				}
				if(x=='waichucishu'){
					form.value.waichucishu = row[x];
					disabledForm.value.waichucishu = true;
					continue;
				}
				if(x=='dengjishijian'){
					form.value.dengjishijian = row[x];
					disabledForm.value.dengjishijian = true;
					continue;
				}
			}
			if(row){
				crossRow.value = row
			}
			if(table){
				crossTable.value = table
			}
			if(tips){
				crossTips.value = tips
			}
			if(statusColumnName){
				crossColumnName.value = statusColumnName
			}
			if(statusColumnValue){
				crossColumnValue.value = statusColumnValue
			}
			formVisible.value = true
		}

		context?.$http({
			url: `${context?.$toolUtil.storageGet('sessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
			if(json.hasOwnProperty('zhanghao')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.zhanghao = json.zhanghao
				disabledForm.value.zhanghao = true;
			}
			if(json.hasOwnProperty('xingming')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.xingming = json.xingming
				disabledForm.value.xingming = true;
			}
			if(json.hasOwnProperty('shouji')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.shouji = json.shouji
				disabledForm.value.shouji = true;
			}
			if(json.hasOwnProperty('gangwei')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.gangwei = json.gangwei
				disabledForm.value.gangwei = true;
			}
		})
		context?.$http({
			url: `option/yuangong/zhanghao`,
			method: 'get'
		}).then(res=>{
			zhanghaoLists.value = res.data.data
		})
		//由上级字段带出不可改
		disabledForm.value.xingming = true;
		//由上级字段带出不可改
		disabledForm.value.shouji = true;
		//由上级字段带出不可改
		disabledForm.value.gangwei = true;
		context?.$http({
			url: `option/bumenxinxi/bumenmingcheng`,
			method: 'get'
		}).then(res=>{
			bumenmingchengLists.value = res.data.data
		})
		//由上级字段带出不可改
		disabledForm.value.bumenbianhao = true;
	}
	//初始化
	//声明父级调用
	defineExpose({
		init
	})
	//关闭
	const closeClick = () => {
		formVisible.value = false
	}
	const zhanghaoChange=()=>{
		context?.$http({
			url: `follow/yuangong/zhanghao?columnValue=` + form.value.zhanghao,
			method: 'get'
		}).then(res=>{
			if(res.data.data.xingming){
				form.value.xingming = res.data.data.xingming
			}
			if(res.data.data.shouji){
				form.value.shouji = res.data.data.shouji
			}
			if(res.data.data.gangwei){
				form.value.gangwei = res.data.data.gangwei
			}
			if(res.data.data.bumenbianhao){
				form.value.bumenbianhao = res.data.data.bumenbianhao
			}
		})
	}
	const bumenmingchengChange=()=>{
		context?.$http({
			url: `follow/bumenxinxi/bumenmingcheng?columnValue=` + form.value.bumenmingcheng,
			method: 'get'
		}).then(res=>{
			if(res.data.data.xingming){
				form.value.xingming = res.data.data.xingming
			}
			if(res.data.data.shouji){
				form.value.shouji = res.data.data.shouji
			}
			if(res.data.data.gangwei){
				form.value.gangwei = res.data.data.gangwei
			}
			if(res.data.data.bumenbianhao){
				form.value.bumenbianhao = res.data.data.bumenbianhao
			}
		})
	}
	//富文本
	const editorChange = (e,name) =>{
		form.value[name] = e
	}
	//提交
	const save=()=>{
		var table = crossTable.value
		var objcross = JSON.parse(JSON.stringify(crossRow.value))
		let crossUserId = ''
		let crossRefId = ''
		let crossOptNum = ''
		if(type.value == 'cross'){
			if(crossColumnName.value!=''){
				if(!crossColumnName.value.startsWith('[')){
					for(let o in objcross){
						if(o == crossColumnName.value){
							objcross[o] = crossColumnValue.value
						}
					}
					//修改跨表数据
					changeCrossData(objcross)
				}else{
					crossUserId = context?.$toolUtil.storageGet('userid')
					crossRefId = objcross['id']
					crossOptNum = crossColumnName.value.replace(/\[/,"").replace(/\]/,"")
				}
			}
		}
		formRef.value.validate((valid)=>{
			if(valid){
				if(crossUserId&&crossRefId){
					form.value.crossuserid = crossUserId
					form.value.crossrefid = crossRefId
					let params = {
						page: 1,
						limit: 1000, 
						crossuserid:form.value.crossuserid,
						crossrefid:form.value.crossrefid,
					}
					context?.$http({
						url: `${tableName}/page`,
						method: 'get', 
						params: params 
					}).then(res=>{
						if(res.data.data.total>=crossOptNum){
							context?.$toolUtil.message(`${crossTips.value}`,'error')
							return false
						}else{
							context?.$http({
								url: `${tableName}/${!form.value.id ? "save" : "update"}`,
								method: 'post', 
								data: form.value 
							}).then(res=>{
								context?.$toolUtil.message(`操作成功`,'success',()=>{
									formVisible.value = false
									emit('formModelChange')
								})
							})
						}
					})
				}else{
					context?.$http({
						url: `${tableName}/${!form.value.id ? "save" : "update"}`,
						method: 'post', 
						data: form.value 
					}).then(res=>{
						context?.$toolUtil.message(`操作成功`,'success',()=>{
							formVisible.value = false
							emit('formModelChange')
						})
					})
				}
			}
		})
	}
	//修改跨表数据
	const changeCrossData=(row)=>{
		context?.$http({
			url: `${crossTable.value}/update`,
			method: 'post',
			data: row
		}).then(res=>{})
	}
</script>
<style lang="scss" scoped>
	// 表单
	.formModel_form{
		border: 0px solid rgba(254, 182, 203, 0.5);
		border-radius: 0px;
		padding: 40px 30px;
		margin: 0;
		background: #fff;
		// form item
		:deep(.el-form-item) {
			margin: 0 150px 20px 0;
			background: none;
			display: flex;
			//label
			.el-form-item__label {
			 color: #666;
			 background: none;
			 font-weight: 500;
			 display: block;
			 width: 150px;
			 text-align: right;
			 min-width: 150px;
			}
			// 内容盒子
			.el-form-item__content {
				display: flex;
				width: calc(100% - 120px);
				justify-content: flex-start;
				align-items: center;
				flex-wrap: wrap;
				// 输入框
				.list_inp {
					border: 1px solid rgba(255, 255, 255, 0.25);
					border-radius: 0px;
					padding: 0 10px;
					color: #666;
					background: rgba(0, 0, 0, 0.1);
					width: auto;
					line-height: 36px;
					box-sizing: border-box;
					min-width: 350px;
					height: 36px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
						padding: 0;
					}
					.is-focus {
						box-shadow: none !important;
					}
				}
				//日期选择器
				.list_date {
					border: 1px solid rgba(255, 255, 255, 0.25);
					border-radius: 0px;
					color: #666;
					background: rgba(0, 0, 0, 0.1);
					width: auto;
					line-height: 36px;
					box-sizing: border-box;
					min-width: 250px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
					}
				}
				// 下拉框
				.list_sel {
					border: 1px solid rgba(255, 255, 255, 0.25);
					border-radius: 0px;
					padding: 0 10px;
					color: #666;
					background: rgba(0, 0, 0, 0.1);
					width: auto;
					line-height: 36px;
					box-sizing: border-box;
					min-width: 300px;
					//去掉默认样式
					.select-trigger{
						height: 100%;
						.el-input{
							height: 100%;
							.el-input__wrapper{
								border: none;
								box-shadow: none;
								background: none;
								border-radius: 0;
								height: 100%;
								padding: 0;
							}
							.is-focus {
								box-shadow: none !important;
							}
						}
					}
				}
			}
		}
	}
	// 按钮盒子
	.formModel_btn_box {
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: center;
		.formModel_cancel {
			border: 1px solid #d43f3a;
			cursor: pointer;
			border-radius: 3px;
			padding: 0 24px;
			margin: 0 20px 0 0;
			outline: none;
			color: #fff;
			background: rgba(217, 83, 79, 0.45);
			width: auto;
			font-size: 14px;
			min-width: 100px;
			height: 36px;
		}
		.formModel_cancel:hover {
		}
		
		.formModel_confirm {
			border: 1px solid #357ebd;
			cursor: pointer;
			border-radius: 3px;
			padding: 0 24px;
			margin: 0 20px 0 0;
			outline: none;
			color: #fff;
			background: rgba(66, 139, 202, 0.55);
			width: auto;
			font-size: 14px;
			min-width: 100px;
			height: 36px;
		}
		.formModel_confirm:hover {
		}
	}
</style>