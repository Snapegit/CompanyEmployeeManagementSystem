
<template>
	<div class="app-contain" :style='{"minHeight":"100vh","padding":"0","margin":"20px auto 60px","borderRadius":"20px","background":"#fff","width":"64%","position":"relative","height":"100%"}'>
		<div class="bread_view">
			<el-breadcrumb separator="⊰" class="breadcrumb">
				<el-breadcrumb-item class="first_breadcrumb" :to="{ path: '/' }">首页</el-breadcrumb-item>
				<el-breadcrumb-item class="second_breadcrumb" v-for="(item,index) in breadList" :key="index">{{item.name}}</el-breadcrumb-item>
			</el-breadcrumb>
		</div>
		<el-form ref="formRef" :model="form" class="add_form" label-width="120px" :rules="rules">
			<el-row>
				<el-col :span="8">
					<el-form-item label="账号" prop="zhanghao">
						<el-select
							class="list_sel"
							:disabled="!isAdd||disabledForm.zhanghao?true:false"
							v-model="form.zhanghao" 
							placeholder="请选择账号"
							style="width:100%;"
							@change="zhanghaoChange">
							<el-option v-for="(item,index) in zhanghaoLists" :label="item" :value="item">
							</el-option>
						</el-select>
					</el-form-item>
				</el-col>
				<el-col :span="8">
					<el-form-item label="姓名" prop="xingming">
						<el-input class="list_inp" v-model="form.xingming" placeholder="姓名"
							 type="text" 							:readonly="!isAdd||disabledForm.xingming?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="手机" prop="shouji">
						<el-input class="list_inp" v-model="form.shouji" placeholder="手机"
							 type="text" 							:readonly="!isAdd||disabledForm.shouji?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="岗位" prop="gangwei">
						<el-input class="list_inp" v-model="form.gangwei" placeholder="岗位"
							 type="text" 							:readonly="!isAdd||disabledForm.gangwei?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="部门名称" prop="bumenmingcheng">
						<el-select
							class="list_sel"
							:disabled="!isAdd||disabledForm.bumenmingcheng?true:false"
							v-model="form.bumenmingcheng" 
							placeholder="请选择部门名称"
							style="width:100%;"
							@change="bumenmingchengChange">
							<el-option v-for="(item,index) in bumenmingchengLists" :label="item" :value="item">
							</el-option>
						</el-select>
					</el-form-item>
				</el-col>
				<el-col :span="8">
					<el-form-item label="部门编号" prop="bumenbianhao">
						<el-input class="list_inp" v-model="form.bumenbianhao" placeholder="部门编号"
							 type="text" 							:readonly="!isAdd||disabledForm.bumenbianhao?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="出勤次数" prop="chuqincishu">
						<el-input class="list_inp" v-model="form.chuqincishu" placeholder="出勤次数"
							 type="text" 							:readonly="!isAdd||disabledForm.chuqincishu?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="加班次数" prop="jiabancishu">
						<el-input class="list_inp" v-model="form.jiabancishu" placeholder="加班次数"
							 type="text" 							:readonly="!isAdd||disabledForm.jiabancishu?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="迟到次数" prop="chidaocishu">
						<el-input class="list_inp" v-model="form.chidaocishu" placeholder="迟到次数"
							 type="text" 							:readonly="!isAdd||disabledForm.chidaocishu?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="早退次数" prop="zaotuicishu">
						<el-input class="list_inp" v-model="form.zaotuicishu" placeholder="早退次数"
							 type="text" 							:readonly="!isAdd||disabledForm.zaotuicishu?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="缺勤次数" prop="queqincishu">
						<el-input class="list_inp" v-model="form.queqincishu" placeholder="缺勤次数"
							 type="text" 							:readonly="!isAdd||disabledForm.queqincishu?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="外出次数" prop="waichucishu">
						<el-input class="list_inp" v-model="form.waichucishu" placeholder="外出次数"
							 type="text" 							:readonly="!isAdd||disabledForm.waichucishu?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="登记时间" prop="dengjishijian">
						<el-date-picker
							class="list_date"
							v-model="form.dengjishijian"
							format="YYYY-MM-DD HH:mm:ss"
							value-format="YYYY-MM-DD HH:mm:ss"
							type="datetime"
							style="width:100%;"
							:readonly="!isAdd||disabledForm.dengjishijian?true:false"
							placeholder="请选择登记时间" />
					</el-form-item>
				</el-col>
			</el-row>
			<div class="formModel_btn_box">
				<el-button class="formModel_cancel" @click="backClick">取消</el-button>
				<el-button class="formModel_confirm" @click="save"
					type="success"
					>
					保存
				</el-button>
			</div>
		</el-form>
	</div>
</template>
<script setup>
	import {
		ref,
		getCurrentInstance,
		watch,
		onUnmounted,
		onMounted,
		nextTick,
		computed
	} from 'vue';
	import {
		useRoute,
		useRouter
	} from 'vue-router';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const route = useRoute()
	const router = useRouter()
	//基础信息
	const tableName = 'kaoqinxinxi'
	const formName = '考勤信息'
	//基础信息
	const breadList = ref([{
		name: formName
	}])
	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//form表单
	const form = ref({
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
	})
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
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
	const isAdd = ref(false)
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
	//账号列表
	const zhanghaoLists = ref([])
	//部门名称列表
	const bumenmingchengLists = ref([])
	//methods

	//methods
	//获取info
	const getInfo = ()=>{
		context?.$http({
			url: `${tableName}/info/${id.value}`,
			method: 'get'
		}).then(res => {
			let reg=new RegExp('../../../file','g')
			form.value = res.data.data
		})
	}
	const crossRow = ref('')
	const crossTable = ref('')
	const crossTips = ref('')
	const crossColumnName = ref('')
	const crossColumnValue = ref('')
	//初始化
	const init = (formId=null,formType='add',formNames='',row=null,table=null,statusColumnName=null,tips=null,statusColumnValue=null) => {
			form.value.dengjishijian = context?.$toolUtil.getCurDateTime()
		if(formId){
			id.value = formId
			type.value = formType
		}
		if(formType == 'add'){
			isAdd.value = true
		}else if(formType == 'info'){
			isAdd.value = false
			getInfo()
		}else if(formType == 'edit'){
			isAdd.value = true
			getInfo()
		}
		else if(formType == 'cross'){
			isAdd.value = true
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
		}
		context?.$http({
			url: `${context?.$toolUtil.storageGet('frontSessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
			if(json.hasOwnProperty('zhanghao') && context?.$toolUtil.storageGet("frontRole")!="管理员"){
				form.value.zhanghao = json.zhanghao
				disabledForm.value.zhanghao = true;
			}
			if(json.hasOwnProperty('xingming') && context?.$toolUtil.storageGet("frontRole")!="管理员"){
				form.value.xingming = json.xingming
				disabledForm.value.xingming = true;
			}
			if(json.hasOwnProperty('shouji') && context?.$toolUtil.storageGet("frontRole")!="管理员"){
				form.value.shouji = json.shouji
				disabledForm.value.shouji = true;
			}
			if(json.hasOwnProperty('gangwei') && context?.$toolUtil.storageGet("frontRole")!="管理员"){
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
	//取消
	const backClick = () => {
		history.back()
	}
	//账号回调
	const zhanghaoChange=()=>{
		context?.$http({
			url: `follow/yuangong/zhanghao?columnValue=` + form.value.zhanghao,
			method: 'get'
		}).then(res=>{
			//带出姓名字段
			if(res.data.data.xingming){
				form.value.xingming = res.data.data.xingming
			}
			//带出手机字段
			if(res.data.data.shouji){
				form.value.shouji = res.data.data.shouji
			}
			//带出岗位字段
			if(res.data.data.gangwei){
				form.value.gangwei = res.data.data.gangwei
			}
			//带出部门编号字段
			if(res.data.data.bumenbianhao){
				form.value.bumenbianhao = res.data.data.bumenbianhao
			}
		})
	}
	//部门名称回调
	const bumenmingchengChange=()=>{
		context?.$http({
			url: `follow/bumenxinxi/bumenmingcheng?columnValue=` + form.value.bumenmingcheng,
			method: 'get'
		}).then(res=>{
			//带出姓名字段
			if(res.data.data.xingming){
				form.value.xingming = res.data.data.xingming
			}
			//带出手机字段
			if(res.data.data.shouji){
				form.value.shouji = res.data.data.shouji
			}
			//带出岗位字段
			if(res.data.data.gangwei){
				form.value.gangwei = res.data.data.gangwei
			}
			//带出部门编号字段
			if(res.data.data.bumenbianhao){
				form.value.bumenbianhao = res.data.data.bumenbianhao
			}
		})
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
									history.back()
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
							history.back()
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
	onMounted(()=>{
		type.value = route.query.type?route.query.type:'add'
		let row = null
		let table = null
		let statusColumnName = null
		let tips = null
		let statusColumnValue = null
		if(type.value == 'cross'){
			row = context?.$toolUtil.storageGet('crossObj')?JSON.parse(context?.$toolUtil.storageGet('crossObj')):{}
			table = context?.$toolUtil.storageGet('crossTable')
			statusColumnName = context?.$toolUtil.storageGet('crossStatusColumnName')
			tips = context?.$toolUtil.storageGet('crossTips')
			statusColumnValue = context?.$toolUtil.storageGet('crossStatusColumnValue')
		}
		init(route.query.id?route.query.id:null, type.value,'', row, table, statusColumnName, tips, statusColumnValue)
	})
	
</script>
<style lang="scss" scoped>
	// 面包屑盒子
	.bread_view {
		border-radius: 0px;
		padding: 12px 20px;
		margin: 0px auto;
		background: #fff;
		width: 100%;
		border-color: #eee;
		border-width: 0 0 0px;
		position: relative;
		border-style: solid;
		:deep(.breadcrumb) {
			font-size: 14px;
			line-height: 1;
			.el-breadcrumb__separator {
				margin: 0 9px;
				color: #999;
				font-weight: 500;
			}
			.first_breadcrumb {
				.el-breadcrumb__inner {
					color: #333;
					display: inline-block;
				}
			}
			.second_breadcrumb {
				.el-breadcrumb__inner {
					color: #999;
					display: inline-block;
				}
			}
		}
	}
	// 表单
	.add_form{
		border: 0px solid #2da065;
		border-radius: 0px;
		padding: 30px 7%;
		background: none;
		// form item
		:deep(.el-form-item) {
			border: 0px solid #eee;
			padding: 6px 0;
			margin: 0 0 20px 0;
			background: none;
			display: flex;
			//label
			.el-form-item__label {
			 background: none;
			 display: block;
			 width: auto;
			 min-width: 150px;
			 text-align: right;
			}
			// 内容盒子
			.el-form-item__content {
				display: flex;
				width: calc(100% - 150px);
				justify-content: flex-start;
				align-items: center;
				flex-wrap: wrap;
				// 输入框
				.list_inp {
					padding: 0 10px;
					background: none;
					width: auto;
					border-color: #2da06550;
					border-width: 0 0 1px;
					line-height: 36px;
					box-sizing: border-box;
					border-style: solid;
					min-width: 100%;
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
					border-radius: 0px;
					background: none;
					width: auto;
					border-color: #2da06550;
					border-width: 0 0 1px;
					line-height: 36px;
					box-sizing: border-box;
					border-style: solid;
					min-width: 100%;
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
					border-radius: 0px;
					padding: 0 10px;
					background: none;
					width: auto;
					border-color: #2da06550;
					border-width: 0 0 1px;
					line-height: 36px;
					box-sizing: border-box;
					border-style: solid;
					min-width: 100%;
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
		padding: 0 150px;
		display: flex;
		width: 100%;
		justify-content: flex-start;
		align-items: center;
		.formModel_cancel {
			border: 0px solid #27bacc;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 40px;
			margin: 0 20px 0 0;
			outline: none;
			color: #2da065;
			background: #2da06530;
			width: auto;
			font-size: 14px;
			line-height: 40px;
			height: 40px;
		}
		.formModel_cancel:hover {
		}
		
		.formModel_confirm {
			border: 0;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 40px;
			margin: 0 20px 0 0;
			outline: none;
			color: #fff;
			background: #2da065;
			width: auto;
			font-size: 14px;
			line-height: 40px;
			height: 40px;
		}
		.formModel_confirm:hover {
		}
	}
</style>