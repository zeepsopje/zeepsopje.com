<script>
	import RasterImage from '$lib/RasterImage.svelte';
	import Section from '$lib/Section.svelte';
	import ProjectList from '$lib/ProjectList.svelte';
	import * as Icon from 'svelticon';
</script>

<div class="image">
	<RasterImage src="/me3.jpg" />
</div>

<div class="sections">
	<Section name="about" center>
		<h2>Stefan Huynh</h2>
		<h3>Fullstack developer, programming hobbyist</h3>
		<p>
			Dolor sequi vero officia deserunt laborum A aliquam cumque ut maiores voluptate. Iste eveniet nesciunt fugit nihil nobis, mollitia exercitationem Sit repudiandae doloribus nisi maiores consectetur? Consequuntur adipisci officia iure?
		</p>
		<a class="icon" href="https://github.com/zeepsopje" target="_blank">
			<Icon.Github color="#fff" />
		</a>
	</Section>
	<Section name="projects">
		<h2>Projects</h2>
		<p>
			Dolor sequi vero officia deserunt laborum A aliquam cumque ut maiores voluptate. Iste eveniet nesciunt fugit nihil nobis, mollitia exercitationem Sit repudiandae doloribus nisi maiores consectetur? Consequuntur adipisci officia iure?
		</p>
		<ProjectList />
	</Section>
</div>

<style>
	.image {
		display: flex;
		justify-content: center;
		margin-bottom: 50px;
	}

	.sections {
		display: flex;
		flex-direction: column;
		gap: 100px;
	}

	.icon {
		width: 50px;
		height: 50px;
		border-radius: 50%;
		background-color: #000;
		display: inline-block;
		position: relative;
		transition: all .1s ease-in-out;
	}

	.icon:hover {
		filter: invert();
	}

	.icon :global(svg) {
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
	}
</style>
