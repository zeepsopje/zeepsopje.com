<script>
	export let name;
	export let desc;
	export let img;
	export let url;
</script>

<div class="project">
	{#if img}
		<img src={img} alt={name} />
	{/if}
	{#if url}
		<a href={url}>
			<h3>{name}</h3>
		</a>
	{:else}
		<h3>{name}</h3>
	{/if}
	<p>{desc}</p>
</div>

<style>
	.project {
		padding: 70px 0;
	}

	img {
		width: 100%;
		margin: 0 0 45px;
	}

	h3 {
		margin-bottom: 25px;
	}

	p {
		margin: 0;
	}
</style>
