	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import news from '@/views/news/list'
	import yuangong from '@/views/yuangong/list'
	import qingjiashenqing from '@/views/qingjiashenqing/list'
	import xiabandaka from '@/views/xiabandaka/list'
	import jiabanshenqing from '@/views/jiabanshenqing/list'
	import qingjialeixing from '@/views/qingjialeixing/list'
	import shangbandaka from '@/views/shangbandaka/list'
	import users from '@/views/users/list'
	import bumenxinxi from '@/views/bumenxinxi/list'
	import gongzifafang from '@/views/gongzifafang/list'
	import waichushenqing from '@/views/waichushenqing/list'
	import kaoqinxinxi from '@/views/kaoqinxinxi/list'
	import config from '@/views/config/list'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/news',
			name: '新闻资讯',
			component: news
		}
		,{
			path: '/yuangong',
			name: '员工',
			component: yuangong
		}
		,{
			path: '/qingjiashenqing',
			name: '请假申请',
			component: qingjiashenqing
		}
		,{
			path: '/xiabandaka',
			name: '下班打卡',
			component: xiabandaka
		}
		,{
			path: '/jiabanshenqing',
			name: '加班申请',
			component: jiabanshenqing
		}
		,{
			path: '/qingjialeixing',
			name: '请假类型',
			component: qingjialeixing
		}
		,{
			path: '/shangbandaka',
			name: '上班打卡',
			component: shangbandaka
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		,{
			path: '/bumenxinxi',
			name: '部门信息',
			component: bumenxinxi
		}
		,{
			path: '/gongzifafang',
			name: '工资发放',
			component: gongzifafang
		}
		,{
			path: '/waichushenqing',
			name: '外出申请',
			component: waichushenqing
		}
		,{
			path: '/kaoqinxinxi',
			name: '考勤信息',
			component: kaoqinxinxi
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		]
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
