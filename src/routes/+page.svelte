<script>
	import RasterImage from '$lib/RasterImage.svelte';
	import Section from '$lib/Section.svelte';
	import ProjectList from '$lib/ProjectList.svelte';
</script>

<div class="image">
	<RasterImage src="/me3.jpg" />
</div>

<div class="sections">
	<Section center>
		<h2>Stefan Huynh</h2>
		<h3>Just a curious programmer.</h3>
		<a class="icon" href="https://github.com/zeepsopje" target="_blank">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-github"><path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"/></svg>
		</a>
	</Section>
	<Section name="about">
		<h2>About me</h2>
		<p>
			Hello! My name is Stefan. I'm from the Netherlands. There are lots of things that spark my interest, but the biggest of those would be software. As of now, I deploy this passion as a hobby rather than a profession.
		</p>
		<p>
			Being able to write software makes me feel like I have an endless ocean of possibilities in my hands. Have an idea? Just execute it. It's like being an architect who goes insane with his designs. There's no barrier that tells me I can't do it, and if there were, I would probably climb over said barrier.
		</p>
		<p>
			I'm keen on learning, which is why I prefer to learn things the hard way. I want to know how things work under the hood If I'm going to use it extensively. I'm also a firm believer of having passion and care for your craft, so quality and scalability is key for me. I regularly update my knowledge by reading, be it online or with physical books. I'm currently reading <a href="https://man7.org/tlpi/">The Linux Programming Interface</a> by Michael Kerrisk, which I highly recommend.
		</p>
	</Section>
	<Section>
		<h2>Down to the specifics</h2>
		<p>
			I'm best described as a full stack developer. Below is a specific overview of my skillset.
		</p>
		<h3>Frontend</h3>
		<p>
			I'm experienced in building robust and stable frontend UIs with user experience in mind. Using SvelteKit and NextJS as my go to web application frameworks along with Svelte or React, I've become very confident in building component based Web Apps. I don't have trouble translating design to web, right on the pixel.
		</p>
		<h3>Backend</h3>
		<p>
			I can write <em>scalable</em> backends, mostly in NodeJs but also in Rust. I know how to work with databases (mostly relational databases) and can write queries for them. Depending on the project, I'd use raw SQL, a query builder or and ORM. I use migrations to keep track of changes in the database. Finally I know how to design, build and expose REST APIs as well as consume them. I'm also no stranger to implementing an authorization server, although I haven't done it that often.
		</p>
		<h3>Languages</h3>
		<p>
			I'm most familiar with JavaScript, but Rust is my most favourite language to use. Other than those, I'm also familiar with Python, PHP and C.
		</p>
	</Section>
	<Section name="projects">
		<h2>Projects</h2>
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
		margin: 40px 0 0;
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
