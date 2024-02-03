<script>
	import RasterImage from '$lib/RasterImage.svelte';
</script>

<div class="info">
	<p>
		Hello, my name is Stefan. `zeepsopje` is a dutch word for suds. Not sure why/when I picked it, but I sticked with it ever since I did.
	</p>
	<p>
		I'm a fullstack developer
	</p>
</div>

<div class="bg">
	<RasterImage src="/me.jpg" />
</div>

<style>
	.info {
		width: clamp(200px, 50%, 100%);
	}

	.bg {
		top: 0;
		left: 0;
		bottom: 0;
		right: 0;
		position: absolute;
		display: flex;
		justify-content: center;
		align-items: center;
		overflow: hidden;
		z-index: -1;
	}

	:global(.bg canvas) {
		transform: rotate3d(3, -3, -2, -45deg);
	}
</style>
