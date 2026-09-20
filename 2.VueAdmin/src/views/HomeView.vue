<template>
	<div class="home_view">
		<div class="projectTitle">欢迎使用 {{projectName}}</div>
		<div class="count_list">
			<el-collapse-transition v-if="btnAuth('shangbandaka','首页总数')">
				<el-card v-show="countTypeList.closeshangbandakaCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								上班打卡
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddenshangbandakaCountType')" class="showIcons"
									:class="countTypeList.hiddenshangbandakaCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closeshangbandakaCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddenshangbandakaCountType">
							<div class="count_title">上班打卡总数</div>
							<div class="count_num">{{shangbandakaCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('qingjiashenqing','首页总数')">
				<el-card v-show="countTypeList.closeqingjiashenqingCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								请假申请
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddenqingjiashenqingCountType')" class="showIcons"
									:class="countTypeList.hiddenqingjiashenqingCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closeqingjiashenqingCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddenqingjiashenqingCountType">
							<div class="count_title">请假申请总数</div>
							<div class="count_num">{{qingjiashenqingCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('jiabanshenqing','首页总数')">
				<el-card v-show="countTypeList.closejiabanshenqingCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								加班申请
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddenjiabanshenqingCountType')" class="showIcons"
									:class="countTypeList.hiddenjiabanshenqingCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closejiabanshenqingCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddenjiabanshenqingCountType">
							<div class="count_title">加班申请总数</div>
							<div class="count_num">{{jiabanshenqingCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('xiabandaka','首页总数')">
				<el-card v-show="countTypeList.closexiabandakaCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								下班打卡
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddenxiabandakaCountType')" class="showIcons"
									:class="countTypeList.hiddenxiabandakaCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closexiabandakaCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddenxiabandakaCountType">
							<div class="count_title">下班打卡总数</div>
							<div class="count_num">{{xiabandakaCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('waichushenqing','首页总数')">
				<el-card v-show="countTypeList.closewaichushenqingCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								外出申请
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddenwaichushenqingCountType')" class="showIcons"
									:class="countTypeList.hiddenwaichushenqingCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closewaichushenqingCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddenwaichushenqingCountType">
							<div class="count_title">外出申请总数</div>
							<div class="count_num">{{waichushenqingCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
		</div>
		<div class="card_list">
			<el-collapse-transition v-if="btnAuth('shangbandaka','首页统计')">
				<el-card v-show="cardTypeList.closeshangbandakaChartType1" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								上班打卡
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenshangbandakaChartType1')" class="showIcons"
									:class="cardTypeList.hiddenshangbandakaChartType1?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closeshangbandakaChartType1')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenshangbandakaChartType1">
							<div id="shangbandakaxingmingEchart1" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('qingjiashenqing','首页统计')">
				<el-card v-show="cardTypeList.closeqingjiashenqingChartType1" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								请假申请
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenqingjiashenqingChartType1')" class="showIcons"
									:class="cardTypeList.hiddenqingjiashenqingChartType1?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closeqingjiashenqingChartType1')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenqingjiashenqingChartType1">
							<div id="qingjiashenqingxingmingEchart1" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('jiabanshenqing','首页统计')">
				<el-card v-show="cardTypeList.closejiabanshenqingChartType1" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								加班申请
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenjiabanshenqingChartType1')" class="showIcons"
									:class="cardTypeList.hiddenjiabanshenqingChartType1?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closejiabanshenqingChartType1')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenjiabanshenqingChartType1">
							<div id="jiabanshenqingxingmingEchart1" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('xiabandaka','首页统计')">
				<el-card v-show="cardTypeList.closexiabandakaChartType1" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								下班打卡
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenxiabandakaChartType1')" class="showIcons"
									:class="cardTypeList.hiddenxiabandakaChartType1?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closexiabandakaChartType1')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenxiabandakaChartType1">
							<div id="xiabandakaxingmingEchart1" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('waichushenqing','首页统计')">
				<el-card v-show="cardTypeList.closewaichushenqingChartType1" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								外出申请
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenwaichushenqingChartType1')" class="showIcons"
									:class="cardTypeList.hiddenwaichushenqingChartType1?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closewaichushenqingChartType1')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenwaichushenqingChartType1">
							<div id="waichushenqingxingmingEchart1" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
		</div>
	</div>
</template>

<script setup>
	import {
		inject,
		nextTick,
		ref,
		getCurrentInstance
	} from 'vue';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const projectName = context.$project.projectName
	const countTypeList = ref({
	})
	const getCountList=()=>{
		countTypeList.value.closeshangbandakaCountType = true
		countTypeList.value.hiddenshangbandakaCountType = true
		if(btnAuth('shangbandaka','首页总数')){
			getshangbandakaCount()
		}
		countTypeList.value.closeqingjiashenqingCountType = true
		countTypeList.value.hiddenqingjiashenqingCountType = true
		if(btnAuth('qingjiashenqing','首页总数')){
			getqingjiashenqingCount()
		}
		countTypeList.value.closejiabanshenqingCountType = true
		countTypeList.value.hiddenjiabanshenqingCountType = true
		if(btnAuth('jiabanshenqing','首页总数')){
			getjiabanshenqingCount()
		}
		countTypeList.value.closexiabandakaCountType = true
		countTypeList.value.hiddenxiabandakaCountType = true
		if(btnAuth('xiabandaka','首页总数')){
			getxiabandakaCount()
		}
		countTypeList.value.closewaichushenqingCountType = true
		countTypeList.value.hiddenwaichushenqingCountType = true
		if(btnAuth('waichushenqing','首页总数')){
			getwaichushenqingCount()
		}
	}
	const shangbandakaCount = ref(0)
	const getshangbandakaCount = () => {
		context?.$http({
			url:'shangbandaka/count',
			method: 'get'
		}).then(res=>{
			shangbandakaCount.value = res.data.data
		})
	}
	const qingjiashenqingCount = ref(0)
	const getqingjiashenqingCount = () => {
		context?.$http({
			url:'qingjiashenqing/count',
			method: 'get'
		}).then(res=>{
			qingjiashenqingCount.value = res.data.data
		})
	}
	const jiabanshenqingCount = ref(0)
	const getjiabanshenqingCount = () => {
		context?.$http({
			url:'jiabanshenqing/count',
			method: 'get'
		}).then(res=>{
			jiabanshenqingCount.value = res.data.data
		})
	}
	const xiabandakaCount = ref(0)
	const getxiabandakaCount = () => {
		context?.$http({
			url:'xiabandaka/count',
			method: 'get'
		}).then(res=>{
			xiabandakaCount.value = res.data.data
		})
	}
	const waichushenqingCount = ref(0)
	const getwaichushenqingCount = () => {
		context?.$http({
			url:'waichushenqing/count',
			method: 'get'
		}).then(res=>{
			waichushenqingCount.value = res.data.data
		})
	}
	const countTypeClick = (e) => {
		countTypeList.value[e] = !countTypeList.value[e]
	}
	const init=()=>{
		getCountList()
		getCardList()
	}
	//权限验证
	const btnAuth = (e,a)=>{
		return context?.$toolUtil.isAuth(e,a)
	}
	let echarts = inject("echarts")
	const cardTypeClick = (e) =>{
		cardTypeList.value[e] = !cardTypeList.value[e]
		setTimeout(()=>{
			getCardList()
		},1000)
	}
	const cardTypeList = ref({
		closeshangbandakaChartType1: true,
		hiddenshangbandakaChartType1: true,
		closeqingjiashenqingChartType1: true,
		hiddenqingjiashenqingChartType1: true,
		closejiabanshenqingChartType1: true,
		hiddenjiabanshenqingChartType1: true,
		closexiabandakaChartType1: true,
		hiddenxiabandakaChartType1: true,
		closewaichushenqingChartType1: true,
		hiddenwaichushenqingChartType1: true,
	})
	const getCardList = () => {
		if(btnAuth('shangbandaka','首页统计')){
			getshangbandakaChart1()
		}
		if(btnAuth('qingjiashenqing','首页统计')){
			getqingjiashenqingChart1()
		}
		if(btnAuth('jiabanshenqing','首页统计')){
			getjiabanshenqingChart1()
		}
		if(btnAuth('xiabandaka','首页统计')){
			getxiabandakaChart1()
		}
		if(btnAuth('waichushenqing','首页统计')){
			getwaichushenqingChart1()
		}
	}
	const getshangbandakaChart1 = () => {
		nextTick(()=>{
			var xingmingEchart1 = echarts.init(document.getElementById("shangbandakaxingmingEchart1"),'macarons');
			context?.$http({
				url: "shangbandaka/group/xingming",
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].xingming);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].xingming
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '上班打卡统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis,
                        axisLabel: {
                            rotate: 40
                        }
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
				xingmingEchart1.clear()
				// 使用刚指定的配置项和数据显示图表。
				xingmingEchart1.setOption(option);
				//根据窗口的大小变动图表
				xingmingEchart1.resize();
			})
		})
	}
	const getqingjiashenqingChart1 = () => {
		nextTick(()=>{
			var xingmingEchart1 = echarts.init(document.getElementById("qingjiashenqingxingmingEchart1"),'macarons');
			context?.$http({
				url: "qingjiashenqing/group/xingming",
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].xingming);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].xingming
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '请假统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis,
                        axisLabel: {
                            rotate: 40
                        }
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
				xingmingEchart1.clear()
				// 使用刚指定的配置项和数据显示图表。
				xingmingEchart1.setOption(option);
				//根据窗口的大小变动图表
				xingmingEchart1.resize();
			})
		})
	}
	const getjiabanshenqingChart1 = () => {
		nextTick(()=>{
			var xingmingEchart1 = echarts.init(document.getElementById("jiabanshenqingxingmingEchart1"),'macarons');
			context?.$http({
				url: "jiabanshenqing/group/xingming",
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].xingming);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].xingming
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '加班统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis,
                        axisLabel: {
                            rotate: 40
                        }
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
				xingmingEchart1.clear()
				// 使用刚指定的配置项和数据显示图表。
				xingmingEchart1.setOption(option);
				//根据窗口的大小变动图表
				xingmingEchart1.resize();
			})
		})
	}
	const getxiabandakaChart1 = () => {
		nextTick(()=>{
			var xingmingEchart1 = echarts.init(document.getElementById("xiabandakaxingmingEchart1"),'macarons');
			context?.$http({
				url: "xiabandaka/group/xingming",
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].xingming);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].xingming
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '下班统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis,
                        axisLabel: {
                            rotate: 40
                        }
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
				xingmingEchart1.clear()
				// 使用刚指定的配置项和数据显示图表。
				xingmingEchart1.setOption(option);
				//根据窗口的大小变动图表
				xingmingEchart1.resize();
			})
		})
	}
	const getwaichushenqingChart1 = () => {
		nextTick(()=>{
			var xingmingEchart1 = echarts.init(document.getElementById("waichushenqingxingmingEchart1"),'macarons');
			context?.$http({
				url: "waichushenqing/group/xingming",
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].xingming);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].xingming
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '外出统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis,
                        axisLabel: {
                            rotate: 40
                        }
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
				xingmingEchart1.clear()
				// 使用刚指定的配置项和数据显示图表。
				xingmingEchart1.setOption(option);
				//根据窗口的大小变动图表
				xingmingEchart1.resize();
			})
		})
	}
	init()
</script>
<style lang="scss">
	.projectTitle{
		padding: 20px 0;
		margin: 20px 0 20px;
		color: #fff;
		font-weight: 500;
		display: flex;
		width: 100%;
		font-size: 24px;
		justify-content: center;
		align-items: center;
		height: auto;
	}

	.showIcons {
		transition: transform 0.3s;
		margin-right: 10px;
	}

	.showIcons1 {
		transform: rotate(-180deg);
	}
	
	// 总数盒子
	.count_list{
		padding: 0 0 0px;
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: flex-start;
		flex-wrap: wrap;
		// 总数card
		.card_view {
			border: 0px solid #eaeaea;
			border-radius: 0;
			box-shadow: 0px 0px 0px rgba(0,0,0,.12);
			margin: 0 1% 30px;
			background: rgba(68,70,79,0.5);
			width: 23%;
			box-sizing: border-box;
			height: auto;
			// card头部
			.el-card__header {
				border: 0px solid #555;
				background: rgba(68,70,79,0);
				width: 100%;
				border-width: 0 0 0px;
				// 头部盒子
				.index_card_head {
					display: flex;
					width: 100%;
					justify-content: space-between;
					align-items: center;
					height: 10px;
					// 标题
					.card_head_title {
						color: #999;
						font-size: 14px;
					}
					// 按钮盒子
					.card_head_right {
						display: flex;
						align-items: center;
						// 按钮
						.el-icon {
							cursor: pointer;
							color: #999;
							font-size: 20px;
						}
					}
				}
			}
			// body
			.el-card__body {
				padding: 0;
				// body盒子
				.count_item{
					padding: 30px;
					text-align: center;
					// 总数标题
					.count_title{
						color: #999;
						font-size: 16px;
						line-height: 2;
					}
					// 总数数字
					.count_num{
						color: #f00;
						font-size: 30px;
						line-height: 2;
					}
				}
			}
		}
	}
	// 首页盒子
	.home_view {
		padding: 0px 20px;
		margin: 0;
		background: url(http://clfile.zggen.cn/20240203/c67dcf19eea04d68bbcfe298e33c6918.png) no-repeat center top / 100% 100% !important;
		width: 100%;
		min-height: 100vh;
		height: auto;
	}
	// 统计图盒子
	.card_list {
		padding: 0 0 20px;
		display: flex;
		width: 100%;
		justify-content: space-between;
		align-items: flex-start;
		flex-wrap: wrap;
		// 统计图card
		.card_view {
			border: 0px solid #eaeaea;
			border-radius: 0;
			box-shadow: 0px 0px 0px rgba(0,0,0,.12);
			margin: 0 1% 40px;
			background: rgba(68,70,79,0.5);
			width: 31%;
			box-sizing: border-box;
			height: auto;
			// 头部
			.el-card__header {
				border: 0px solid rgba(68,70,79,1);
				background: rgba(255, 255, 255, 0);
				width: 100%;
				border-width: 0 0 0px;
				// 头部盒子
				.index_card_head {
					display: flex;
					width: 100%;
					justify-content: space-between;
					align-items: center;
					height: 10px;
					// 标题
					.card_head_title {
						color: #ccc;
						font-size: 14px;
					}
					// 按钮盒子
					.card_head_right {
						display: flex;
						align-items: center;
						// 按钮
						.el-icon{
							cursor: pointer;
							color: #999;
							font-size: 20px;
						}
					}
				}
			}
			// body
			.el-card__body {
				padding: 0;
				// body盒子
				.card_item{
					padding: 30px;
					text-align: center;
				}
			}
		}
	}
</style>
