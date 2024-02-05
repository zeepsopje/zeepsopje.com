<script>
	import RasterImage from '$lib/RasterImage.svelte';
	import Section from '$lib/Section.svelte';
	import ProjectList from '$lib/ProjectList.svelte';
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
</style>
