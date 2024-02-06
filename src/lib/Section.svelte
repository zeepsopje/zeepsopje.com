<script>
	export let name;
	export let center;
</script>

<section id={name} class:center>
	<slot />
</section>

<style>
	.center {
		text-align: center;
		padding: 0 50px;
	}

	.center :global(p) {
		/* text-align: left !important; */
	}

	@media (max-width: 500px) {
		.center {
			padding: 0;
		}
	}
</style>
