const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '部门信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'部门信息',
							url:'/index/bumenxinxiList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "阿尔珐公司员工管理系统"
        } 
    }
}
export default config
