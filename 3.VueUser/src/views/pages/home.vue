<template>
	<div>
		<div class="home_box">
			<!-- 部门信息首页展示 -->
			<div class="homeList_view">
				<div class="homeList_title">部门信息展示</div>
				<div class="home_list_one">
					<div class="home_item1 animation_box" v-if="bumenxinxiHomeList.length>0" @click="detailClick('bumenxinxi',bumenxinxiHomeList[0].id)">
						<div class="home_img_box">
							<img class="home_img" v-if="isHttp(bumenxinxiHomeList[0].bumentupian)" :src="bumenxinxiHomeList[0].bumentupian.split(',')[0]" alt="">
							<img class="home_img" v-else :src="bumenxinxiHomeList[0].bumentupian?$config.url + bumenxinxiHomeList[0].bumentupian.split(',')[0]:''" alt="">
						</div>
						<div class="home_content">
							<div class="home_title">
								{{bumenxinxiHomeList[0].bumenmingcheng}}
							</div>
							<div class="home_title">
								{{bumenxinxiHomeList[0].bumenbianhao}}
							</div>
							<div class="home_title">
								{{bumenxinxiHomeList[0].suoshugongsi}}
							</div>
						</div>
					</div>
					<div class="home_item2">
						<div class="item2_top animation_box" v-if="bumenxinxiHomeList.length>1" @click="detailClick('bumenxinxi',bumenxinxiHomeList[1].id)">
							<div class="home_img_box">
								<img class="home_img" v-if="isHttp(bumenxinxiHomeList[1].bumentupian)" :src="bumenxinxiHomeList[1].bumentupian.split(',')[0]" alt="">
								<img class="home_img" v-else :src="bumenxinxiHomeList[1].bumentupian?$config.url + bumenxinxiHomeList[1].bumentupian.split(',')[0]:''" alt="">
							</div>
							<div class="home_content">
								<div class="home_title">
									{{bumenxinxiHomeList[1].bumenmingcheng}}
								</div>
								<div class="home_title">
									{{bumenxinxiHomeList[1].bumenbianhao}}
								</div>
								<div class="home_title">
									{{bumenxinxiHomeList[1].suoshugongsi}}
								</div>
							</div>
						</div>
						<div class="item2_bottom animation_box" v-if="bumenxinxiHomeList.length>2" @click="detailClick('bumenxinxi',bumenxinxiHomeList[2].id)">
							<div class="home_img_box">
								<img class="home_img" v-if="isHttp(bumenxinxiHomeList[2].bumentupian)" :src="bumenxinxiHomeList[2].bumentupian.split(',')[0]" alt="">
								<img class="home_img" v-else :src="bumenxinxiHomeList[2].bumentupian?$config.url + bumenxinxiHomeList[2].bumentupian.split(',')[0]:''" alt="">
							</div>
							<div class="home_content">
								<div class="home_title">
									{{bumenxinxiHomeList[2].bumenmingcheng}}
								</div>
								<div class="home_title">
									{{bumenxinxiHomeList[2].bumenbianhao}}
								</div>
								<div class="home_title">
									{{bumenxinxiHomeList[2].suoshugongsi}}
								</div>
							</div>
						</div>
					</div>
					<div class="home_item3 animation_box" v-if="bumenxinxiHomeList.length>3" @click="detailClick('bumenxinxi',bumenxinxiHomeList[3].id)">
						<div class="home_img_box">
							<img class="home_img" v-if="isHttp(bumenxinxiHomeList[3].bumentupian)" :src="bumenxinxiHomeList[3].bumentupian.split(',')[0]" alt="">
							<img class="home_img" v-else :src="bumenxinxiHomeList[3].bumentupian?$config.url + bumenxinxiHomeList[3].bumentupian.split(',')[0]:''" alt="">
						</div>
						<div class="home_content">
							<div class="home_title">
								{{bumenxinxiHomeList[3].bumenmingcheng}}
							</div>
							<div class="home_title">
								{{bumenxinxiHomeList[3].bumenbianhao}}
							</div>
							<div class="home_title">
								{{bumenxinxiHomeList[3].suoshugongsi}}
							</div>
						</div>
					</div>
					<div class="home_item4">
						<div class="item4_top animation_box" v-if="bumenxinxiHomeList.length>4" @click="detailClick('bumenxinxi',bumenxinxiHomeList[4].id)">
							<div class="home_img_box">
								<img class="home_img" v-if="isHttp(bumenxinxiHomeList[4].bumentupian)" :src="bumenxinxiHomeList[4].bumentupian.split(',')[0]" alt="">
								<img class="home_img" v-else :src="bumenxinxiHomeList[4].bumentupian?$config.url + bumenxinxiHomeList[4].bumentupian.split(',')[0]:''" alt="">
							</div>
							<div class="home_content">
								<div class="home_title">
									{{bumenxinxiHomeList[4].bumenmingcheng}}
								</div>
								<div class="home_title">
									{{bumenxinxiHomeList[4].bumenbianhao}}
								</div>
								<div class="home_title">
									{{bumenxinxiHomeList[4].suoshugongsi}}
								</div>
							</div>
						</div>
						<div class="item4_bottom animation_box" v-if="bumenxinxiHomeList.length>5" @click="detailClick('bumenxinxi',bumenxinxiHomeList[5].id)">
							<div class="home_img_box">
								<img class="home_img" v-if="isHttp(bumenxinxiHomeList[5].bumentupian)" :src="bumenxinxiHomeList[5].bumentupian.split(',')[0]" alt="">
								<img class="home_img" v-else :src="bumenxinxiHomeList[5].bumentupian?$config.url + bumenxinxiHomeList[5].bumentupian.split(',')[0]:''" alt="">
							</div>
							<div class="home_content">
								<div class="home_title">
									{{bumenxinxiHomeList[5].bumenmingcheng}}
								</div>
								<div class="home_title">
									{{bumenxinxiHomeList[5].bumenbianhao}}
								</div>
								<div class="home_title">
									{{bumenxinxiHomeList[5].suoshugongsi}}
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="homeList_more_view" @click="moreClick('bumenxinxi')">
					<span class="homeList_more_text">More →</span>
				</div>
			</div>
			<!-- 新闻资讯 -->
			<div class="newsList_view">
				<div class="newsList_title">新闻资讯</div>
				<div class="news_list_three">
					<div class="news_left animation_box" v-if="newsList.length>0" @click="newsDetailClick(newsList[0].id)">
						<div class='news_img_box'>
							<img class="news_img" v-if="isHttp(newsList[0].picture)" :src="newsList[0].picture.split(',')[0]" alt="">
							<img class="news_img" v-else :src="newsList[0].picture?$config.url + newsList[0].picture.split(',')[0]:''" alt="">
						</div>
						<div class="news_content">
							<div class="news_title">{{newsList[0].title}}</div>
							<div class="news_text">{{newsList[0].introduction}}</div>
							<div class="news_time">{{newsList[0].addtime.split(' ')[0]}}</div>
						</div>
					</div>
					<div class="news_right">
						<template v-for="(item,index) in newsList" :key="index">
							<div class="news_right_item animation_box" v-if="index>0" @click="newsDetailClick(item.id)">
								<div class='news_img_box'>
									<img class="news_img" v-if="isHttp(item.picture)" :src="item.picture.split(',')[0]" alt="">
									<img class="news_img" v-else :src="item.picture?$config.url + item.picture.split(',')[0]:''" alt="">
								</div>
								<div class="news_content">
									<div class="news_title">{{item.title}}</div>
									<div class="news_text">{{item.introduction}}</div>
									<div class="news_time">{{item.addtime.split(' ')[0]}}</div>
								</div>
							</div>
						</template>
					</div>
				</div>
				<div class="news_more_view" @click="moreClick('news')">
					<span class="news_more_text">更多>></span>
				</div>
			</div>
		</div>
		<formModel ref="newsFormModelRef"></formModel>
	</div>
</template>

<script setup>
	import {
		ref,
		getCurrentInstance
	} from 'vue';
	import {
		useRouter
	} from 'vue-router';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const router = useRouter()
	//部门信息首页展示
	const bumenxinxiHomeList = ref([])
	const getbumenxinxiHomeList = () => {
		context?.$http({
			url: 'bumenxinxi/list',
			method: 'get',
			params: {
				page: 1,
				limit: 3
			}
		}).then(res => {
			bumenxinxiHomeList.value = res.data.data.list
		})
	}
	//新闻资讯弹窗
	import formModel from './news/formModel'
	const newsFormModelRef = ref(null)
	//新闻资讯
	const newsList = ref([])
	const getNewsList = () => {
		context?.$http({
			url: 'news/list',
			method: 'get',
			params:{
				page:1,
				limit: 4
			}
		}).then(res=>{
			newsList.value = res.data.data.list
		})
	}
	const newsDetailClick = (id=null) => {
		if (id){
			newsFormModelRef.value.init(id)
		}
	}
	//判断图片链接是否带http
	const isHttp = (str) => {
        return str && str.substr(0,4)=='http';
    }
	//跳转详情
	const detailClick = (table,id) => {
		router.push(`/index/${table}Detail?id=${id}`)
	}
	const moreClick = (table) => {
		router.push(`/index/${table}List`)
	}
	const init = () => {
		//部门信息首页展示
		getbumenxinxiHomeList()
		//新闻资讯
		getNewsList()
	}
	init()
</script>

<style lang="scss">
	.home_box {
		padding: 0;
		margin: 0 auto;
		background: #fff;
		display: flex;
		width: 100%;
		justify-content: space-between;
		align-items: flex-start;
		flex-wrap: wrap;
	}
	
	// 推荐
	.recomList_view {
		padding: 20px 18%;
		margin: 30px 0 20px;
		background: none;
		width: 100%;
		position: relative;
		order: 3;
		.recomList_title {
			padding: 0 0 20px;
			margin: 40px 0 0;
			color: #333;
			font-weight: 500;
			width: auto;
			font-size: 22px;
			border-color: #2da065;
			border-width: 0 0 2px;
			position: absolute;
			border-style: solid;
			text-align: left;
		}
		// list
		.recommend_list_three {
			margin: 0;
			overflow: hidden;
			display: flex;
			width: 100%;
			min-height: 600px;
			justify-content: space-between;
			flex-wrap: wrap;
			// 左边盒子
			.item_left {
				margin: 0 0px 0 0;
				display: flex;
				width: calc(67% - 0px);
				justify-content: space-between;
				flex-wrap: wrap;
				// 左上
				.item_left_top {
					margin: 0 0 20px;
					background: none;
					display: flex;
					width: calc(50% - 25px);
					align-items: flex-end;
					position: relative;
					float: left;
					flex-wrap: wrap;
					height: 100%;
					.recommend_img_box {
						cursor: pointer;
						width: 100%;
						height: 60%;
						.recommend_img {
							object-fit: cover;
							width: 100%;
							height: 100%;
						}
					}
					.recommend_content {
						z-index: 1002;
						color: #333;
						background: none;
						display: none;
						width: 100%;
						line-height: 3;
						text-align: center;
						height: 50%;
						.recommend_title {
						}
					}
				}
				// 左下
				.item_left_bottom {
					cursor: pointer;
					display: flex;
					width: calc(50% - 25px);
					position: relative;
					float: right;
					flex-wrap: wrap;
					height: 100%;
					.recommend_img_box {
						width: 100%;
						height: 60%;
						.recommend_img {
							object-fit: cover;
							width: 100%;
							height: 100%;
						}
					}
					.recommend_content {
						padding: 20px 0 0;
						z-index: 1002;
						color: #333;
						background: none;
						width: 100%;
						line-height: 3;
						text-align: left;
						height: 40%;
						.recommend_title {
						}
					}
				}
			}
			// 中间
			.item_center {
				cursor: pointer;
				display: flex;
				width: calc(33% - 50px);
				position: relative;
				flex-wrap: wrap;
				height: 600px;
				.recommend_img_box {
					width: 100%;
					height: 60%;
					order: 2;
					.recommend_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.recommend_content {
					padding: 0 0 40px;
					color: #333;
					background: none;
					display: flex;
					width: 100%;
					justify-content: flex-end;
					align-items: flex-end;
					text-align: right;
					height: 40%;
					.recommend_title {
					}
				}
			}
			// 右边盒子
			.item_right {
				// 右上
				.item_right_top {
					margin: 0 0 20px;
					width: 100%;
					position: relative;
					.recommend_img_box {
						font-size: 0;
						.recommend_img {
							object-fit: cover;
							width: 100%;
							height: 300px;
						}
					}
					.recommend_content {
						z-index: 1002;
						color: #fff;
						left: 0;
						bottom: 0;
						background: rgba(0,0,0,.3);
						width: 100%;
						line-height: 3;
						position: absolute;
						text-align: center;
						.recommend_title {
						}
					}
				}
				// 右下
				.item_right_bottom {
					width: 100%;
					position: relative;
					.recommend_img_box {
						font-size: 0;
						.recommend_img {
							object-fit: cover;
							width: 100%;
							height: 300px;
						}
					}
					.recommend_content {
						z-index: 1002;
						color: #fff;
						left: 0;
						bottom: 0;
						background: rgba(0,0,0,.3);
						width: 100%;
						line-height: 3;
						position: absolute;
						text-align: center;
						.recommend_title {
						}
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.recommend_more_view {
			cursor: pointer;
			border: 0px solid #ddd;
			padding: 0;
			margin: 20px 0 0;
			z-index: 9;
			color: #fff;
			line-height: 34px;
			border-radius: 0px;
			top: 150px;
			background: #2da065;
			width: 120px;
			position: absolute;
			text-align: center;
			.recommend_more_text {
				color: #fff;
			}
		}
	}
	// 推荐
	// 新闻资讯
	.newsList_view {
		padding: 40px 18%;
		margin: 20px 0 0;
		background: url(http://clfile.zggen.cn/20231023/b7b6e4debb27459fa241c8690c43c621.jpg) no-repeat center top / 100% 100%;
		width: 100%;
		position: relative;
		order: 2;
		height: auto;

		.newsList_title {
			padding: 0 0 8px;
			margin: 0 auto 20px;
			color: #555;
			font-weight: 600;
			font-size: 18px;
			border-color: #999;
			top: 80px;
			left: 56%;
			background: none;
			width: auto;
			border-width: 0 0 0px;
			position: absolute;
			border-style: dashed;
			text-align: left;
		}
		// list
		.news_list_three {
			padding: 10px;
			margin: 20px 0 0;
			background: #fff;
			display: flex;
			width: 100%;
			justify-content: space-between;
			.news_left {
				cursor: pointer;
				background: #fff;
				width: 30%;
				.news_img_box {
					width: 100%;
					font-size: 0;
					.news_img {
						padding: 0;
						background: none;
						object-fit: cover;
						width: 100%;
						height: 300px;
					}
				}
				.news_content {
					display: none;
					position: relative;
					.news_title {
						overflow: hidden;
						color: #000;
						white-space: nowrap;
						font-weight: 500;
						width: calc(100% - 140px);
						font-size: 16px;
						line-height: 48px;
						text-overflow: ellipsis;
						height: 48px;
					}
					.news_text {
						border: 1px solid #eee;
						padding: 20px;
						overflow: hidden;
						text-indent: 2em;
						background: #f8f8f8;
						font-size: 14px;
						line-height: 24px;
						height: 112px;
					}
					.news_time {
						color: #999;
						top: 16px;
						width: 100%;
						font-size: 14px;
						position: absolute;
						right: 0;
						text-align: right;
					}
				}
			}
			.news_right {
				padding: 40px 0 0;
				margin: 0 0 0 20px;
				width: calc(70% - 20px);
				.news_right_item {
					cursor: pointer;
					padding: 0 0 10px;
					margin: 0 0 10px;
					overflow: hidden;
					background: none;
					display: flex;
					width: 100%;
					border-color: #ddd;
					border-width: 0 0 1px;
					justify-content: space-between;
					border-style: solid;
					height: auto;
					.news_img_box {
						display: none;
						width: 30%;
						height: 100%;
						.news_img {
							object-fit: cover;
							width: 100%;
							height: 100%;
						}
					}
					.news_content {
						padding: 0px;
						margin: 0;
						width: calc(70% - 0px);
						position: relative;
						.news_title {
							overflow: hidden;
							color: #000;
							font-weight: 500;
							width: calc(100% - 0px);
							font-size: 14px;
							line-height: 40px;
							height: 40px;
						}
						.news_text {
							overflow: hidden;
							color: #999;
							text-indent: 2em;
							display: none;
							font-size: 14px;
							line-height: 24px;
							height: 48px;
						}
						.news_time {
							color: #999;
							width: 100%;
							font-size: 12px;
							text-align: left;
						}
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.news_more_view {
			cursor: pointer;
			border: 0px solid #ddd;
			padding: 0px 0;
			margin: 0;
			color: #333;
			bottom: 50px;
			line-height: 34px;
			right: 18%;
			border-radius: 0px;
			background: none;
			width: 80px;
			position: absolute;
			text-align: center;
			.news_more_text {
				color: #666;
				font-size: 13px;
			}
		}
	}
	// 新闻资讯
	// 首页展示
	.homeList_view {
		padding: 20px 18%;
		margin: 0px 0 0;
		background: none;
		width: 100%;
		position: relative;
		text-align: center;
		order: 1;

		.homeList_title {
			padding: 0px;
			margin: 0;
			color: #333;
			background: none;
			font-weight: 600;
			width: 100%;
			font-size: 22px;
			border-color: #eee;
			border-width: 0px;
			border-style: solid;
			text-align: center;
		}
		// list
		.home_list_one {
			padding: 0;
			margin: 20px auto 0;
			display: flex;
			width: 100%;
			align-items: flex-start;
			flex-wrap: wrap;
			.home_item1 {
				cursor: pointer;
				border: 1px solid #00ca63;
				padding: 12px 12px 4px;
				margin: 0 20px 20px 0;
				width: calc(34% - 20px);
				position: relative;
				.home_img_box {
					margin: 0 0 4px;
					width: 100%;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 220px;
					}
				}
				.home_content {
					color: #000;
					background: rgba(0,0,0,.0);
					width: 100%;
					line-height: 24px;
					text-align: center;
					.home_title {
						font-size: 14px;
					}
				}
			}
			.home_item2 {
				margin: 0;
				width: 66%;
				.item2_top {
					cursor: pointer;
					border: 1px solid #00ca63;
					padding: 12px 12px 4px;
					margin: 0px;
					width: calc(50% - 10px);
					position: relative;
					float: left;
					.home_img_box {
						margin: 0 0 4px;
						width: 100%;
						.home_img {
							object-fit: cover;
							width: 100%;
							height: 220px;
						}
					}
					.home_content {
						color: #000;
						background: rgba(0,0,0,.0);
						width: 100%;
						line-height: 24px;
						text-align: center;
						.home_title {
							font-size: 14px;
						}
					}
				}
				.item2_bottom {
					cursor: pointer;
					border: 1px solid #00ca63;
					padding: 12px 12px 4px;
					width: calc(50% - 10px);
					position: relative;
					float: right;
					.home_img_box {
						margin: 0 0 4px;
						width: 100%;
						.home_img {
							object-fit: cover;
							width: 100%;
							height: 220px;
						}
					}
					.home_content {
						color: #000;
						background: rgba(0,0,0,.0);
						width: 100%;
						line-height: 24px;
						text-align: center;
						.home_title {
							font-size: 14px;
						}
					}
				}
			}
			.home_item3 {
				cursor: pointer;
				border: 1px solid #ddd;
				padding: 12px 12px 0;
				margin: 0 20px 0 0;
				display: none;
				width: calc(34% - 20px);
				position: relative;
				.home_img_box {
					width: 100%;
					font-size: 0;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 220px;
					}
				}
				.home_content {
					color: #000;
					background: rgba(0,0,0,.0);
					width: 100%;
					line-height: 30px;
					text-align: center;
					.home_title {
						font-size: 14px;
					}
				}
			}
			.home_item4 {
				margin: 0 0 0 0;
				display: none;
				width: 66%;
				.item4_top {
					cursor: pointer;
					border: 1px solid #ddd;
					padding: 12px 12px 0;
					margin: 0;
					width: calc(50% - 10px);
					position: relative;
					float: left;
					.home_img_box {
						width: 100%;
						.home_img {
							object-fit: cover;
							width: 100%;
							height: 220px;
						}
					}
					.home_content {
						color: #000;
						background: rgba(0,0,0,.0);
						width: 100%;
						line-height: 30px;
						text-align: center;
						.home_title {
							font-size: 14px;
						}
					}
				}
				.item4_bottom {
					cursor: pointer;
					border: 1px solid #ddd;
					padding: 12px 12px 0;
					width: calc(50% - 10px);
					position: relative;
					float: right;
					.home_img_box {
						width: 100%;
						.home_img {
							object-fit: cover;
							width: 100%;
							height: 220px;
						}
					}
					.home_content {
						color: #000;
						background: rgba(0,0,0,.0);
						width: 100%;
						line-height: 30px;
						text-align: center;
						.home_title {
							font-size: 14px;
						}
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.homeList_more_view {
			cursor: pointer;
			border: 1px solid #666;
			border-radius: 20px;
			padding: 0;
			margin: 0 auto;
			color: #999;
			background: none;
			display: inline-block;
			width: 80px;
			line-height: 24px;
			text-align: center;
			.homeList_more_text {
				color: #333;
			}
		}
	}
	// 首页展示
</style>