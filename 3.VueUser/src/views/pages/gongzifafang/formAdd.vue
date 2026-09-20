
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
					<el-form-item label="月份" prop="yuefen">
						<el-input class="list_inp" v-model="form.yuefen" placeholder="月份"
							 type="text" 							:readonly="!isAdd||disabledForm.yuefen?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="账号" prop="zhanghao">
						<el-input class="list_inp" v-model="form.zhanghao" placeholder="账号"
							 type="text" 							:readonly="!isAdd||disabledForm.zhanghao?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="姓名" prop="xingming">
						<el-select
							class="list_sel"
							:disabled="!isAdd||disabledForm.xingming?true:false"
							v-model="form.xingming" 
							placeholder="请选择姓名"
							style="width:100%;"
							@change="xingmingChange">
							<el-option v-for="(item,index) in xingmingLists" :label="item" :value="item">
							</el-option>
						</el-select>
					</el-form-item>
				</el-col>
				<el-col :span="8">
					<el-form-item label="岗位" prop="gangwei">
						<el-input class="list_inp" v-model="form.gangwei" placeholder="岗位"
							 type="text" 							:readonly="!isAdd||disabledForm.gangwei?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="低薪" prop="dixin">
						<el-input class="list_inp" v-model.number="form.dixin" placeholder="低薪"
							 type="number" 							:readonly="!isAdd||disabledForm.dixin?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="加班工资" prop="jiabangongzi">
						<el-input class="list_inp" v-model.number="form.jiabangongzi" placeholder="加班工资"
							 type="number" 							:readonly="!isAdd||disabledForm.jiabangongzi?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="绩效工资" prop="jixiaogongzi">
						<el-input class="list_inp" v-model.number="form.jixiaogongzi" placeholder="绩效工资"
							 type="number" 							:readonly="!isAdd||disabledForm.jixiaogongzi?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="迟到" prop="chidao">
						<el-input class="list_inp" v-model.number="form.chidao" placeholder="迟到"
							 type="number" 							:readonly="!isAdd||disabledForm.chidao?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="早退" prop="zaotui">
						<el-input class="list_inp" v-model.number="form.zaotui" placeholder="早退"
							 type="number" 							:readonly="!isAdd||disabledForm.zaotui?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="缺勤" prop="queqin">
						<el-input class="list_inp" v-model.number="form.queqin" placeholder="缺勤"
							 type="number" 							:readonly="!isAdd||disabledForm.queqin?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="请假" prop="qingjia">
						<el-input class="list_inp" v-model.number="form.qingjia" placeholder="请假"
							 type="number" 							:readonly="!isAdd||disabledForm.qingjia?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="全勤" prop="quanqin">
						<el-input class="list_inp" v-model.number="form.quanqin" placeholder="全勤"
							 type="number" 							:readonly="!isAdd||disabledForm.quanqin?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="社保代缴" prop="shebaodaijiao">
						<el-input class="list_inp" v-model.number="form.shebaodaijiao" placeholder="社保代缴"
							 type="number" 							:readonly="!isAdd||disabledForm.shebaodaijiao?true:false" />
					</el-form-item>
				</el-col>

				<el-col :span="8">
					<el-form-item label="实发工资" prop="shifagongzi">
						<el-input class="list_inp" v-model="shifagongzi" placeholder="实发工资" readonly></el-input>
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
	const tableName = 'gongzifafang'
	const formName = '工资发放'
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
		yuefen: '',
		zhanghao: '',
		xingming: '',
		gangwei: '',
		dixin: '',
		jiabangongzi: '',
		jixiaogongzi: '',
		chidao: '',
		zaotui: '',
		queqin: '',
		qingjia: '',
		quanqin: '',
		shebaodaijiao: '',
		shifagongzi: '',
	})
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	const disabledForm = ref({
		yuefen : false,
		zhanghao : false,
		xingming : false,
		gangwei : false,
		dixin : false,
		jiabangongzi : false,
		jixiaogongzi : false,
		chidao : false,
		zaotui : false,
		queqin : false,
		qingjia : false,
		quanqin : false,
		shebaodaijiao : false,
		shifagongzi : false,
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
		yuefen: [
		],
		zhanghao: [
		],
		xingming: [
		],
		gangwei: [
		],
		dixin: [
			{ validator: validateNumber, trigger: 'blur' },
		],
		jiabangongzi: [
			{ validator: validateNumber, trigger: 'blur' },
		],
		jixiaogongzi: [
			{ validator: validateNumber, trigger: 'blur' },
		],
		chidao: [
			{ validator: validateNumber, trigger: 'blur' },
		],
		zaotui: [
			{ validator: validateNumber, trigger: 'blur' },
		],
		queqin: [
			{ validator: validateNumber, trigger: 'blur' },
		],
		qingjia: [
			{ validator: validateNumber, trigger: 'blur' },
		],
		quanqin: [
			{ validator: validateNumber, trigger: 'blur' },
		],
		shebaodaijiao: [
			{ validator: validateNumber, trigger: 'blur' },
		],
		shifagongzi: [
			{ validator: validateNumber, trigger: 'blur' },
		],
	})
	//姓名列表
	const xingmingLists = ref([])
	const shifagongzi =computed(()=>{
		let c = form.value
		let a = c.dixin+c.jiabangongzi+c.jixiaogongzi-c.chidao-c.zaotui-c.queqin-c.qingjia+c.quanqin-c.shebaodaijiao
		form.value.shifagongzi = a?a.toFixed(2):0
		return a?a.toFixed(2):0
	})
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
				if(x=='yuefen'){
					form.value.yuefen = row[x];
					disabledForm.value.yuefen = true;
					continue;
				}
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
				if(x=='gangwei'){
					form.value.gangwei = row[x];
					disabledForm.value.gangwei = true;
					continue;
				}
				if(x=='dixin'){
					form.value.dixin = row[x];
					disabledForm.value.dixin = true;
					continue;
				}
				if(x=='jiabangongzi'){
					form.value.jiabangongzi = row[x];
					disabledForm.value.jiabangongzi = true;
					continue;
				}
				if(x=='jixiaogongzi'){
					form.value.jixiaogongzi = row[x];
					disabledForm.value.jixiaogongzi = true;
					continue;
				}
				if(x=='chidao'){
					form.value.chidao = row[x];
					disabledForm.value.chidao = true;
					continue;
				}
				if(x=='zaotui'){
					form.value.zaotui = row[x];
					disabledForm.value.zaotui = true;
					continue;
				}
				if(x=='queqin'){
					form.value.queqin = row[x];
					disabledForm.value.queqin = true;
					continue;
				}
				if(x=='qingjia'){
					form.value.qingjia = row[x];
					disabledForm.value.qingjia = true;
					continue;
				}
				if(x=='quanqin'){
					form.value.quanqin = row[x];
					disabledForm.value.quanqin = true;
					continue;
				}
				if(x=='shebaodaijiao'){
					form.value.shebaodaijiao = row[x];
					disabledForm.value.shebaodaijiao = true;
					continue;
				}
				if(x=='shifagongzi'){
					form.value.shifagongzi = row[x];
					disabledForm.value.shifagongzi = true;
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
		})
		//由上级字段带出不可改
		disabledForm.value.zhanghao = true;
		context?.$http({
			url: `option/yuangong/xingming`,
			method: 'get'
		}).then(res=>{
			xingmingLists.value = res.data.data
		})
		//由上级字段带出不可改
		disabledForm.value.gangwei = true;
	}
	//初始化
	//取消
	const backClick = () => {
		history.back()
	}
	//姓名回调
	const xingmingChange=()=>{
		context?.$http({
			url: `follow/yuangong/xingming?columnValue=` + form.value.xingming,
			method: 'get'
		}).then(res=>{
			//带出账号字段
			if(res.data.data.zhanghao){
				form.value.zhanghao = res.data.data.zhanghao
			}
			//带出岗位字段
			if(res.data.data.gangwei){
				form.value.gangwei = res.data.data.gangwei
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