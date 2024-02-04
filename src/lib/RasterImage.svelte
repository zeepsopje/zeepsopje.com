<script>
	import { onMount } from 'svelte';
	import convert from 'color-convert';

	export let src = "";
	export let loaded = false;

	let canvas;
	let cellSize = 25;
	let grid = [];

	onMount(() => {
		const ctx = canvas.getContext('2d');
		getImageData(src)
			.then(({ data, width, height }) => {
				loaded = true;
				canvas.width = width;
				canvas.height = height;
				grid = createLightnessPixMap(data, width, height);

				for (const row in grid) {
					for (const col in grid[row]) {
						drawCircle(ctx, col, row, -grid[row][col] - -100)
					}
				}
			});
	});

	function drawCircle(ctx, cellX, cellY, size) {
		let alpha = parseFloat((size / 100) * 1).toFixed(2);
		ctx.fillStyle = 'rgb(0, 0, 0,' + alpha + ')';
		ctx.beginPath();
		ctx.arc(
			cellX * cellSize + cellSize / 2,
			cellY * cellSize + cellSize / 2,
			cellSize / 100 * (size/2),
			0,
			Math.PI * 2,
		);
		ctx.fill();
	}

	function createLightnessPixMap(values, w, h) {
		const parsed = [];

		// Preprocess the values
		for (let i = 0; i < values.length; i+=4) {
			const brightness = convert.rgb.hsl(
				values[i],
				values[i+1],
				values[i+2],
			)[2];

			parsed.push(brightness);
		}

		const cellCount = (w / cellSize) * (h / cellSize);
		const cellArea  = cellSize * cellSize;
		const colCount 	= w / cellSize;
		const rowCount 	= h / cellSize;
		const rowLength = w * cellSize

		const map = [];

		for (let row = 0; row < rowCount; row++) {
			map[row] = [];
			for (let col = 0; col < colCount; col++) {
				const cursor = (row * rowLength) + (col * cellSize);
				let result = 0;

				for (const value of parsed.slice(cursor, cursor+cellSize)) {
					result += value;
				}

				result /= cellSize;

				map[row][col] = result;
			}
		}

		return map;
	}

	function getImageData(img) {
		return new Promise(resolve => {
			const _canvas = document.createElement('canvas');
			const _ctx = _canvas.getContext('2d');
			const _img = new Image();
			_img.src = img;

			_img.addEventListener('load', () => {
				_canvas.width = _img.width - (_img.width % cellSize);
				_canvas.height = _img.height - (_img.height % cellSize)
				_ctx.drawImage(_img, 0, 0);
				const imgData = _ctx.getImageData(0, 0, _canvas.width, _canvas.height);
				resolve(imgData);
			});
		})
	}
</script>

<canvas bind:this={canvas} />
