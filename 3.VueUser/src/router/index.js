import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import yuangongList from '@/views/pages/yuangong/list'
import yuangongDetail from '@/views/pages/yuangong/formModel'
import yuangongAdd from '@/views/pages/yuangong/formAdd'
import yuangongRegister from '@/views/pages/yuangong/register'
import yuangongCenter from '@/views/pages/yuangong/center'
import bumenxinxiList from '@/views/pages/bumenxinxi/list'
import bumenxinxiDetail from '@/views/pages/bumenxinxi/formModel'
import bumenxinxiAdd from '@/views/pages/bumenxinxi/formAdd'
import shangbandakaList from '@/views/pages/shangbandaka/list'
import shangbandakaDetail from '@/views/pages/shangbandaka/formModel'
import shangbandakaAdd from '@/views/pages/shangbandaka/formAdd'
import qingjiashenqingList from '@/views/pages/qingjiashenqing/list'
import qingjiashenqingDetail from '@/views/pages/qingjiashenqing/formModel'
import qingjiashenqingAdd from '@/views/pages/qingjiashenqing/formAdd'
import qingjialeixingList from '@/views/pages/qingjialeixing/list'
import qingjialeixingDetail from '@/views/pages/qingjialeixing/formModel'
import qingjialeixingAdd from '@/views/pages/qingjialeixing/formAdd'
import jiabanshenqingList from '@/views/pages/jiabanshenqing/list'
import jiabanshenqingDetail from '@/views/pages/jiabanshenqing/formModel'
import jiabanshenqingAdd from '@/views/pages/jiabanshenqing/formAdd'
import xiabandakaList from '@/views/pages/xiabandaka/list'
import xiabandakaDetail from '@/views/pages/xiabandaka/formModel'
import xiabandakaAdd from '@/views/pages/xiabandaka/formAdd'
import waichushenqingList from '@/views/pages/waichushenqing/list'
import waichushenqingDetail from '@/views/pages/waichushenqing/formModel'
import waichushenqingAdd from '@/views/pages/waichushenqing/formAdd'
import kaoqinxinxiList from '@/views/pages/kaoqinxinxi/list'
import kaoqinxinxiDetail from '@/views/pages/kaoqinxinxi/formModel'
import kaoqinxinxiAdd from '@/views/pages/kaoqinxinxi/formAdd'
import gongzifafangList from '@/views/pages/gongzifafang/list'
import gongzifafangDetail from '@/views/pages/gongzifafang/formModel'
import gongzifafangAdd from '@/views/pages/gongzifafang/formAdd'
import newsList from '@/views/pages/news/list'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'yuangongList',
			component: yuangongList
		}, {
			path: 'yuangongDetail',
			component: yuangongDetail
		}, {
			path: 'yuangongAdd',
			component: yuangongAdd
		}
		, {
			path: 'yuangongCenter',
			component: yuangongCenter
		}
		, {
			path: 'bumenxinxiList',
			component: bumenxinxiList
		}, {
			path: 'bumenxinxiDetail',
			component: bumenxinxiDetail
		}, {
			path: 'bumenxinxiAdd',
			component: bumenxinxiAdd
		}
		, {
			path: 'shangbandakaList',
			component: shangbandakaList
		}, {
			path: 'shangbandakaDetail',
			component: shangbandakaDetail
		}, {
			path: 'shangbandakaAdd',
			component: shangbandakaAdd
		}
		, {
			path: 'qingjiashenqingList',
			component: qingjiashenqingList
		}, {
			path: 'qingjiashenqingDetail',
			component: qingjiashenqingDetail
		}, {
			path: 'qingjiashenqingAdd',
			component: qingjiashenqingAdd
		}
		, {
			path: 'qingjialeixingList',
			component: qingjialeixingList
		}, {
			path: 'qingjialeixingDetail',
			component: qingjialeixingDetail
		}, {
			path: 'qingjialeixingAdd',
			component: qingjialeixingAdd
		}
		, {
			path: 'jiabanshenqingList',
			component: jiabanshenqingList
		}, {
			path: 'jiabanshenqingDetail',
			component: jiabanshenqingDetail
		}, {
			path: 'jiabanshenqingAdd',
			component: jiabanshenqingAdd
		}
		, {
			path: 'xiabandakaList',
			component: xiabandakaList
		}, {
			path: 'xiabandakaDetail',
			component: xiabandakaDetail
		}, {
			path: 'xiabandakaAdd',
			component: xiabandakaAdd
		}
		, {
			path: 'waichushenqingList',
			component: waichushenqingList
		}, {
			path: 'waichushenqingDetail',
			component: waichushenqingDetail
		}, {
			path: 'waichushenqingAdd',
			component: waichushenqingAdd
		}
		, {
			path: 'kaoqinxinxiList',
			component: kaoqinxinxiList
		}, {
			path: 'kaoqinxinxiDetail',
			component: kaoqinxinxiDetail
		}, {
			path: 'kaoqinxinxiAdd',
			component: kaoqinxinxiAdd
		}
		, {
			path: 'gongzifafangList',
			component: gongzifafangList
		}, {
			path: 'gongzifafangDetail',
			component: gongzifafangDetail
		}, {
			path: 'gongzifafangAdd',
			component: gongzifafangAdd
		}
		, {
			path: 'newsList',
			component: newsList
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/yuangongRegister',
		component: yuangongRegister
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
