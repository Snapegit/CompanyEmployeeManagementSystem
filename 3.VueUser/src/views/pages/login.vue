<template>
	<div>
		<div class="login_view">
			<el-form :model="loginForm" class="login_form">
				<div class="title_view">阿尔珐公司员工管理系统登录</div>
				<div class="tabView" v-if="userList.length>1">
					<div class="tab" :style="{'width':`calc(100% / ${userList.length})`}"
						:class="loginForm.role==item.roleName?'tabActive':''" v-for="(item,index) in userList"
						:key="index" @click="tabClick(item.roleName)">{{item.roleName}}</div>
				</div>
				<div class="list_item" v-if="loginType==1">
					<div class="list_label">
						账号：
					</div>
					<input class="list_inp" v-model="loginForm.username" placeholder="请输入账号" />
				</div>
				<div class="list_item" v-if="loginType==1">
					<div class="list_label">
						密码：
					</div>
					<input class="list_inp" v-model="loginForm.password" type="password" placeholder="请输入密码" @keydown.enter.native="handleLogin" />
				</div>
				<div class="remember_view" v-if="loginType==1">
					<el-checkbox v-model="rememberPassword" label="记住密码" size="large" :true-label="true"
						:false-label="false" />
				</div>
				<div class="btn_view">
					<el-button class="login" v-if="loginType==1" type="success" @click="handleLogin">登录</el-button>
					<el-button class="register" type="primary" @click="handleRegister('yuangong')">注册员工</el-button>
				</div>
			</el-form>
		</div>
	</div>
</template>
<script setup>
	import {
		ref,
		getCurrentInstance,
		nextTick,
		onMounted,
	} from "vue";
	import menu from '@/utils/menu'
	const userList = ref([])
	const menus = ref([])
	const loginForm = ref({
		role: '',
		username: '',
		password: ''
	})
	const tableName = ref('')
	const loginType = ref(1)
	//是否记住密码
	const rememberPassword = ref(true)
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	//注册
    const handleRegister = (tableName) => {
    	context?.$router.push(`/${tableName}Register`)
    	
    }
	//登录用户tab切换
	const tabClick = (role) => {
		loginForm.value.role = role
	}
	const handleLogin = () => {
		if (!loginForm.value.username) {
			context?.$toolUtil.message('请输入用户名', 'error')
			
			return;
		}
		if (!loginForm.value.password) {
			context?.$toolUtil.message('请输入密码', 'error')
			
			return;
		}
		if (userList.value.length > 1) {
			if (!loginForm.value.role) {
				context?.$toolUtil.message('请选择角色', 'error')
				verifySlider.reset()
				return;
			}
			for (let i = 0; i < menus.value.length; i++) {
				if (menus.value[i].roleName == loginForm.value.role) {
					tableName.value = menus.value[i].tableName;
				}
			}
		} else {
			tableName.value = userList.value[0].tableName;
			loginForm.value.role = userList.value[0].roleName;
		}
		login()
	}
	const login = () => {
		context?.$http({
			url: `${tableName.value}/login?username=${loginForm.value.username}&password=${loginForm.value.password}`,
			method: 'post'
		}).then(res => {
			//是否保存当前账号密码至缓存
			if (rememberPassword.value) {
				let loginForm1 = JSON.parse(JSON.stringify(loginForm.value))
				delete loginForm1.code
				context?.$toolUtil.storageSet("frontLoginForm", JSON.stringify(loginForm1));
			} else {
				context?.$toolUtil.storageRemove("frontLoginForm")
			}
			context?.$toolUtil.storageSet("frontToken", res.data.token);
			context?.$toolUtil.storageSet("frontRole", loginForm.value.role);
			context?.$toolUtil.storageSet("frontSessionTable", tableName.value);
			let path = context?.$toolUtil.storageGet('toPath')
			if (path) {
				context?.$router.push(path)
				context?.$toolUtil.storageRemove('toPath')
				return
			}
			context?.$router.push(`/index/${tableName.value}Center`)
		},err=>{
		})
	}
	//获取菜单
	const getMenu=()=> {
		let arr = menu.list()
		menus.value = arr
		for (let i = 0; i < menus.value.length; i++) {
			if (menus.value[i].hasFrontLogin=='是') {
				userList.value.push(menus.value[i])
			}
		}
    }
	//初始化
	const init = () => {
		getMenu();
		//获取缓存是否有保存的账号密码
		let form = context?.$toolUtil.storageGet('frontLoginForm')
		if (form) {
			loginForm.value = JSON.parse(form)
		}else {
			loginForm.value.role = userList.value[0].roleName
		}
	}
	onMounted(()=>{
		init()
	})
</script>

<style lang="scss" scoped>
	.login_view {
		background-repeat: no-repeat;
		flex-direction: column;
		background-size: cover;
		background: url(http://clfile.zggen.cn/20240302/436fde4f6c97486a99f9e7ac2909f2c0.jpg);
		display: flex;
		min-height: 100vh;
		justify-content: center;
		align-items: center;
		position: relative;
		background-position: center center;
		// 表单盒子
		.login_form {
			border-radius: 8px;
			padding: 40px 90px 40px 40px;
			box-shadow: 0px 26px 26px -30px #999;
			margin: 0;
			background: #fff;
			display: block;
			width: 600px;
			justify-content: center;
			position: relative;
			flex-wrap: wrap;
		}
		.title_view {
			padding: 0px;
			margin: 0 0 20px 90px;
			color: #3f3f3f;
			background: #fff;
			width: calc(100% - 90px);
			font-size: 22px;
			text-align: center;
		}
		// item盒子
		.list_item {
			margin: 0 0 20px;
			display: flex;
			width: 100%;
			align-items: center;
			// label
			.list_label {
				padding: 0 6px 0 0;
				color: #666;
				width: 90px;
				font-size: 14px;
				text-align: right;
			}
			// 输入框
			.list_inp {
				border: 1px solid #ddd;
				border-radius: 4px;
				padding: 0 10px;
				width: calc(100% - 90px);
				line-height: 40px;
				height: 40px;
			}
		}
		// 用户类型样式
		.tabView{
			padding: 0 0 0 90px;
			margin: 20px auto;
			background: #fff;
			display: flex;
			width: 100%;
			justify-content: space-between;
			align-items: center;
			// 默认样式
			.tab{
				cursor: pointer;
				border: 0px solid #ddd;
				border-radius: 0px;
				margin: 0 20px 0 0;
				color: #333;
				background: #fff;
				border-color: #eee;
				border-width: 0 0 2px;
				line-height: 40px;
				border-style: solid;
				text-align: center;
				height: 40px;
			}
			// 选中样式
			.tabActive{
				cursor: pointer;
				border-radius: 0px;
				margin: 0 20px 0 0;
				color: rgba(45,160,100,1);
				background: none;
				border-color: rgba(45,160,100,1);
				border-width: 0 0 2px;
				line-height: 40px;
				border-style: solid;
				text-align: center;
				height: 40px;
			}
		}
		// 记住密码样式
		.remember_view {
			padding: 0 0 0 90px;
			margin: 0px auto;
			width: 100%;
			text-align: left;
		
			// 未选中样式
			:deep(.el-checkbox) {
				margin: 0;
				display: flex;
				width: 100%;
				justify-content: flex-start;
				align-items: center;
				// 复选框
				.el-checkbox__inner {
					border: 1px solid #DCDFE6;
					background: #fff;
				}
				// 提示文字
				.el-checkbox__label{
					color: #999;
				}
			}
			// 选中样式
			:deep(.is-checked) {
				//复选框
				.el-checkbox__inner {
					background-color: rgba(45,160,100,1);
					border-color: rgba(45,160,100,1);
				}
				// 提示文字
				.el-checkbox__label{
					color: rgba(45,160,100,1);
				}
			}
		}
		// 按钮盒子
		.btn_view {
			padding: 20px 0px 0 90px;
			display: flex;
			width: 100%;
			align-items: center;
			flex-wrap: wrap;
			// 登录
			.login {
				border: 0;
				cursor: pointer;
				border-radius: 4px;
				padding: 0 24px;
				margin: 0 0px 20px 0;
				outline: none;
				color: #fff;
				background: rgba(45,160,100,1);
				width: 100%;
				font-size: 16px;
				height: 40px;
			}
			// 注册
			.register {
				border: 0px solid #27bacc30;
				cursor: pointer;
				border-radius: 4px;
				padding: 0 10px;
				margin: 0 10px 10px 0;
				outline: none;
				color: rgba(45,160,100,1);
				background: #fff;
				width: auto;
				font-size: 14px;
				height: 36px;
			}
		}
	}

</style>