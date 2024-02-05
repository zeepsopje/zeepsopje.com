<script>
	import '../_global.css';
	import Container from '$lib/Container.svelte';
</script>

<Container>
	<header>
		<div class="logo">
			<h2>zeepsopje</h2>
		</div>
		<nav>
			<a href="/">Home</a>
			<a href="#about">About</a>
			<a href="#projects">Projects</a>
		</nav>
	</header>
	<main>
		<slot />
	</main>
</Container>

<style>
	header {
		height: 4rem;
		display: flex;
		align-items: center;
		justify-content: space-between;
		margin-bottom: 50px;
	}

	.logo {
		display: flex;
		gap: 1.5em;
	}

	.logo h2 {
		font-size: 1rem;
		margin: 0;
	}

	nav {
		display: flex;
		gap: 2em;
	}
</style>
