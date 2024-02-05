<script>
	import Project from '$lib/Project.svelte';
	import projects from '$lib/projects.js';
</script>

<div class="projects">
	{#each projects as { name, desc }, i}
		<Project {name} {desc} />
		{#if i < projects.length}
			<div class="divider" />
		{/if}
	{/each}
</div>

<style>
	.projects {
		display: flex;
		flex-direction: column;
		gap: 50px;
	}

	.divider {
		width: 100%;
		height: 1px;
		margin: 0 auto;
		background-color: #AAA;
	}
</style>
