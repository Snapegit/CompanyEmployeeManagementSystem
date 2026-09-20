<template>
	<router-view />
</template>
<script>
	const debounce = (fn, delay) => {
		let timer = null;
		return function() {
			let context = this;
			let args = arguments;
			clearTimeout(timer);
			timer = setTimeout(function() {
				fn.apply(context, args);
			}, delay);
		}
	}

	const _ResizeObserver = window.ResizeObserver;
	window.ResizeObserver = class ResizeObserver extends _ResizeObserver {
		constructor(callback) {
			callback = debounce(callback, 16);
			super(callback);
		}
	}
</script>
<style lang="scss">
	body {
		margin: 0;
	}
	* {
		box-sizing: border-box;
	}
	.app-contain {
		width: 100%;
		// padding: 0 8%;
		// box-sizing: border-box;
	}
	.section_title {
		padding: 0px 0 0;
		margin: 0 auto;
		color: #333;
		font-weight: 600;
		letter-spacing: 2px;
		font-size: 24px;
		border-color: #27bacc10;
		line-height: 64px;
		border-radius: 0;
		background: none;
		border-width: 0px;
		border-style: solid;
		text-align: center;
	}

	#app {
		font-family: Avenir, Helvetica, Arial, sans-serif;
		-webkit-font-smoothing: antialiased;
		-moz-osx-font-smoothing: grayscale;
		// text-align: center;
		color: #2c3e50;
	}

	nav {
		padding: 30px;

		a {
			font-weight: bold;
			color: #2c3e50;

			&.router-link-exact-active {
				color: #42b983;
			}
		}
	}
</style>