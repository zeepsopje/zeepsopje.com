<script>
	import Project from '$lib/Project.svelte';
	import projects from '$lib/projects.js';
</script>

<div class="projects">
	{#each projects as project, i}
		<Project {...project} />
		{#if i < projects.length-1}
			<div class="divider" />
		{/if}
	{/each}
</div>

<style>
	.projects {
		display: flex;
		flex-direction: column;
	}

	.divider {
		width: 100%;
		height: 1px;
		margin: 0 auto;
		background-color: #CCC;
	}
</style>
