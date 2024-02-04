<script>
	import '../_global.css';
	import * as Icon from 'svelticon';
</script>

<header>
	<div class="logo">
		<h2>zeepsopje</h2>
		<Icon.Github size={24} />
	</div>
	<nav>
		<a href="/">Home</a>
		<a href="/">Projects</a>
		<a href="/">About</a>
	</nav>
</header>

<main>
	<slot />
</main>

<style>
	header {
		height: 4rem;
		display: flex;
		align-items: center;
		justify-content: space-between;
	}

	.logo {
		display: flex;
		gap: 1.5em;
	}

	header, main {
		padding: 0 2rem;
	}

	nav {
		display: flex;
		gap: 2em;
	}
</style>
