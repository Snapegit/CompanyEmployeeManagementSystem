<template>
	<div class="home">
		<div class="index_top">
			<div class="index_top_title">阿尔珐公司员工管理系统</div>
			<div class="index_top_right">
				<template v-if="Token">
					<div v-if="date&&weather.city" class="weather_time_view">
						<div class="weather">
							<div class="city">{{weather.city}}</div>
							<div class="wea">
								{{weather.wea}} | {{weather.tem}}℃
							</div>
						</div>
						<div class="time">
							<div class="date">{{date}}</div>
							<div class="timer">{{timer}}</div>
						</div>
					</div>
				</template>
				<el-button v-if="!Token" type="success" icon="User" circle @click="loginClick" />
				<el-button v-if="Token" type="danger" icon="SwitchButton" circle @click="loginOut" />
			</div>
		</div>
		<el-scrollbar class="contain_view">
			<el-scrollbar wrap-class="scrollbar-wrapper" class="menu_scrollbar">
				<el-menu :default-openeds="[]" :unique-opened="false" :default-active="menuIndex" class="menu_view"
					:collapse="collapse" @select="menuChange">
					<el-menu-item class="first_item" index="0" @click="menuHandler('/')">
						<template #title>
							<span>首页</span>
						</template>
					</el-menu-item>
					<template v-for="(menu,index) in menuList" :key="menu.menu">
						<el-sub-menu v-if="menu.child.length>1" :index="index+2+''" class="first_item">
							<template #title>
								<span>{{ menu.name }}</span>
							</template>
							<el-menu-item class="menu_item_view" v-for=" (child,sort) in menu.child" :key="sort"
								:index="(index+2)+'-'+sort" @click="menuHandler(child.url)">{{ child.name }}
							</el-menu-item>
						</el-sub-menu>
						<el-menu-item v-else :index="index+2+''" class="first_item" @click="menuHandler(menu.child[0].url)">
							<template #title>
								<span>{{menu.child[0].name}}</span>
							</template>
						</el-menu-item>
					</template>
					<el-menu-item v-if="Token" class="first_item" @click="menuHandler('center')">
						<template #title>
							<span>个人中心</span>
						</template>
					</el-menu-item>
				</el-menu>
			</el-scrollbar>
			<div class="rotation_view">
				<mySwiper :type="3" :data="rotationList" :autoHeight="false" :autoplay="true"
					:loop="true" :navigation="false" :pagination="true" 
					:paginationType="2" :scrollbar="false" :slidesPerView="1" 
					:spaceBetween="20" :centeredSlides="false"
					:freeMode="false" :effectType="1"
					:direction="horizontal">
					<template #default="scope">
						<img :style='{"width":"100%","height":"640px"}' :src="scope.row.value?$config.url + scope.row.value:''">
					</template>
				</mySwiper>
			</div>
			<router-view />
			<el-backtop :right="100" :bottom="100" />
			<div class="bottom_view">
				<img class="bottom_img" src="http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg" alt="">
				<div class="bottom_company"></div>
				<div class="bottom_record"></div>
				<div class="bottom_desc"></div>
			</div>
		</el-scrollbar>
	</div>
</template>
<script setup>
	import menu from '@/utils/menu'
	import axios from 'axios'
	import {
		ref,
		onBeforeUnmount,
		getCurrentInstance,
		nextTick,
		computed,
		watch,
	} from 'vue';
	import {
		useRouter
	} from 'vue-router';
	import {
		useStore
	} from 'vuex';
	const router = useRouter()
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const Token = ref('')
	const weather = ref({})
	const date = ref('')
	const timer = ref('')
	const interval = ref(null)
	const getWeather = () => {
		axios({
			method: 'get',
			url: 'http://v0.yiketianqi.com/free/day?appid=69475998&appsecret=rldbX1Zl&city=北京'
		}).then(res => {
			weather.value = res.data
		})
	}
	watch(() => router.currentRoute.value,() => {
		Token.value = context?.$toolUtil.storageGet('frontToken')
		// 获取默认菜单index
		menuIndex.value = context?.$toolUtil.storageGet('menuIndex')?context?.$toolUtil.storageGet('menuIndex'): '0'
	})
	onBeforeUnmount(() => {
		clearInterval(interval.value)
	})
	// 默认菜单index
	const menuIndex = ref('0')
	const init = () => {
		// 获取默认菜单index
		menuIndex.value = context?.$toolUtil.storageGet('menuIndex')?context?.$toolUtil.storageGet('menuIndex'): '0'
		// 获取菜单
		getMenu()
		// 赋值token
		Token.value = context?.$toolUtil.storageGet('frontToken')
		// 时间
		interval.value = setInterval(() => {
			date.value = context?.$toolUtil.getCurDate()
			timer.value = context?.$toolUtil.getCurDateTime().split(' ')[1]
		}, 1000)
		// 天气
		getWeather()
		// 轮播图
		getRotationList()
		if(Token.value){
			getSession()
		}
	}
	// 切换菜单保存index
	const menuChange = (e)=>{
		context?.$toolUtil.storageSet('menuIndex',e)
	}
	// 轮播图
	const rotationList = ref([])
	const baseUrl = context?.$config.url
	const getRotationList = () => {
		context?.$http({
			url: 'config/list',
			method: 'get',
			params: {
				page: 1,
				limit: 3
			}
		}).then(res => {
			rotationList.value = res.data.data.list
		})
	}
	const menuList = ref([])
	const role = ref('')
	const getMenu = () => {
		let params = {
			page: 1,
			limit: 1,
			sort: 'id',
		}
		context?.$http({
			url: "menu/list",
			method: "get",
			params: params
		}).then(res => {
			context?.$toolUtil.storageSet("menus", res.data.data.list[0].menujson);
		})
		menuList.value = context?.$config.menuList
	}
	const loginClick = () => {
		context?.$toolUtil.storageSet('toPath',window.history.state.current)
		router.push('/login')
	}
	const loginOut = () => {
		context?.$toolUtil.message('退出成功', 'success')
		context?.$toolUtil.storageClear()
		router.replace('/index/home')
		context?.$toolUtil.storageSet('menuIndex','0')
		Token.value = ''
	}
	//菜单跳转
	const menuHandler = (name) => {
		if (name == 'center') {
			name = `${context?.$toolUtil.storageGet('frontSessionTable')}Center`
		}
		router.push(name)
	}
	// 获取用户信息
	const getSession = () =>{
		context?.$http({
			url: `${context?.$toolUtil.storageGet('frontSessionTable')}/session`,
			method:'get'
		}).then(res=>{
			context?.$toolUtil.storageSet('userid',res.data.data.id)
			if(context?.$toolUtil.storageGet('frontSessionTable') == 'yuangong'){
				context?.$toolUtil.storageSet("frontName", res.data.data.zhanghao)
			}
			if(context?.$toolUtil.storageGet('frontSessionTable') == 'yuangong'){
				context?.$toolUtil.storageSet('headportrait',res.data.data.touxiang)
			}
		})
	}
	init()
</script>
<style lang="scss" scoped>
	/* 头部 */
	.index_top {
		padding: 0px 18%;
		z-index: 1002;
		color: #fff;
		background: rgba(45,160,101,.96);
		display: block;
		width: 100%;
		justify-content: space-between;
		box-sizing: border-box;
		height: 44px;
		.index_top_title {
			padding: 0px;
			color: #fff;
			top: 0px;
			background: none;
			font-weight: 500;
			font-size: 18px;
			line-height: 44px;
			position: absolute;
			text-align: left;
			height: auto;
		}
		.index_top_right {
			display: flex;
			align-items: flex-start;
			float: right;
			// 天气时间盒子
			.weather_time_view {
				margin: 16px 20px 0;
				display: flex;
				// 天气城市盒子
				.weather {
					border: 0px solid #fff;
					padding: 0 20px;
					flex-direction: row;
					display: flex;
					font-size: 14px;
					border-width: 0 0px 0 0;
					line-height: 1;
					justify-content: center;
					align-items: center;
					// 城市
					.city {
						padding: 0 0 0px;
					}
					// 天气
					.wea {
					}
				}
				// 时间盒子
				.time {
					padding: 0 20px;
					flex-direction: row;
					display: flex;
					font-size: 14px;
					line-height: 1;
					justify-content: center;
					align-items: center;
					// 日期
					.date {
						padding: 0px;
						margin: 0 10px 0 0;
					}
					// 时间
					.timer {
						color: #eee;
					}
				}
			}
		}
		// 登录按钮
		:deep(.el-button--success) {
			border: 0px solid #ffffff;
			border-radius: 100%;
			padding: 0px;
			margin: 8px 10px 0 0;
			color: #fff;
			background: #00c25f;
			width: 26px;
			font-size: 16px;
			height: 26px;
		}
		:deep(.el-button--success:hover) {
			background: #00c25f;
		}
		// 登出按钮
		:deep(.el-button--danger) {
			border: 0px solid #999;
			border-radius: 100%;
			padding: 0px;
			margin: 8px 0 0;
			color: #999;
			background: #fff;
			width: 26px;
			font-size: 16px;
			height: 26px;
		}
		:deep(.el-button--danger:hover) {
			background: #fff;
		}
	}
	// 轮播盒子
	.rotation_view {
		border: 0px solid #fff;
		border-radius: 0px;
		margin: 0 auto;
		background: none;
		display: block;
		width: 100%;
		height: 640px;
	}
	// 底部
	.bottom_view {
		padding: 20px 18% 20px;
		flex-direction: column;
		color: #fff;
		background: url(http://clfile.zggen.cn/20231023/906c56c098424151a4ef59af2bb0de64.jpg) no-repeat center top / cover,#333;
		display: flex;
		width: 100%;
		font-size: 14px;
		min-height: 100px;
		justify-content: center;
		align-items: center;
		// 图片
		.bottom_img {
			border-radius: 100%;
			object-fit: cover;
			display: none;
			width: 44px;
			height: 44px;
		}
		// 公司
		.bottom_company {
			margin: 10px 0 0;
			color: inherit;
			font-size: inherit;
			line-height: 1;
		}
		// 备案号
		.bottom_record {
			margin: 10px 0 0;
			color: inherit;
			font-size: inherit;
			line-height: 1;
		}
		// 联系方式
		.bottom_desc {
			margin: 10px 0 0;
			color: inherit;
			font-size: inherit;
			line-height: 1;
		}
	}
	
	
	

	.contain_view {
		padding: 0;
		margin: 0;
		background: #fff;
		position: inherit;
	}
	.el-aside {
		transition: width 0.15s;
		-webkit-transition: width 0.15s;
		-moz-transition: width 0.15s;
		-webkit-transition: width 0.15s;
		-o-transition: width 0.15s;
	}
	// 总盒子
	:deep(.menu_scrollbar) {
		border: 0;
		padding: 0 0 0 20px;
		margin: 0;
		z-index: 9;
		overflow: hidde;
		top: 44px;
		left: 18%;
		background: rgba(0,0,0,.6);
		width: 180px;
		position: absolute;
		height: 640px;
		// 菜单盒子
		.menu_view {
			border: 0;
			padding: 20px 0 60px;
			margin: 0;
			color: #fff;
			background: none;
			min-height: auto;
			height: 100%;

			// 无二级菜单
			.el-menu-item {
				padding: 0 10px;
				color: inherit;
				background: none;
				line-height: 50px;
				height: 50px;
			}

			// 无二级悬浮
			.el-menu-item:hover {
				padding: 0 10px;
				color: #00c25f;
				background: none;
				line-height: 50px;
				height: 50px;
			}

			// 无二级选中
			.el-menu-item.is-active {
				padding: 0 10px;
				color: #00c25f;
				background: none;
				line-height: 50px;
				height: 50px;
			}

			// 有二级盒子
			.el-sub-menu {
				cursor: pointer;
				padding: 0 0 0 20px;
				color: #fff;
				white-space: nowrap;
				background: none;
				width: 180px;
				position: relative;

				// 有二级item
				.el-sub-menu__title {
					padding: 0 10px;
					color: inherit;
					background: none;
					line-height: 50px;
					height: 50px;
					.el-sub-menu__icon-arrow{
						margin: -3px 0 0 8px;
						color: inherit;
						vertical-align: middle;
						font-size: 12px;
						position: static;
					}
				}

				// 有二级item悬浮
				.el-sub-menu__title:hover {
					padding: 0 10px;
					color: #00c25f;
					background: none;
					line-height: 50px;
					height: 50px;
				}
			}
			//二级选中
			.is-active {
				.el-sub-menu__title {
					padding: 0 10px;
					color: #00c25f;
					background: none;
					line-height: 50px;
					height: 50px;
				}
			}
			// 二级盒子
			.el-menu--inline {
				border: 0px solid #eee;
				border-radius: 4px;
				padding: 0px;
				margin: 0 auto;
				background: none;
				width: 92%;
				// 二级菜单
				.menu_item_view {
					padding: 0 40px;
					color: #eee;
					background: none;
					line-height: 40px;
					height: 40px;
				}
				// 二级悬浮
				.menu_item_view:hover {
					padding: 0 40px;
					color: #fff;
					background: none;
					line-height: 40px;
					height: 40px;
				}
				// 二级选中
				.is-active.menu_item_view {
					padding: 0 40px;
					color: #fff;
					background: none;
					line-height: 40px;
					height: 40px;
				}
			}
		}
	}
</style>
<style lang="scss">
	.el-popper{
		.el-menu--popup-container {
			.el-menu--popup{
				border: 0px solid #eee;
				border-radius: 4px;
				padding: 0px;
				margin: 0 auto;
				background: none;
				width: 92%;
				// 二级菜单
				.menu_item_view {
					padding: 0 40px;
					color: #eee;
					background: none;
					line-height: 40px;
					height: 40px;
				}
				// 二级悬浮
				.menu_item_view:hover {
					padding: 0 40px;
					color: #fff;
					background: none;
					line-height: 40px;
					height: 40px;
				}
				// 二级选中
				.is-active.menu_item_view {
					padding: 0 40px;
					color: #fff;
					background: none;
					line-height: 40px;
					height: 40px;
				}
			}
		}
	}
</style>