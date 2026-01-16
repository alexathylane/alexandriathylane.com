<script lang="ts">
	import '../app.css';
	import Nav from '$lib/components/Nav.svelte';
	import Footer from '$lib/components/Footer.svelte';

	let { children } = $props();
</script>

<svelte:head>
	<link rel="icon" href="/favicon.svg" />
	<meta name="theme-color" content="#0a0a0a" />
</svelte:head>

<div class="site-wrapper">
	<Nav />

	<main class="main-content">
		{@render children()}
	</main>

	<Footer />
</div>

<style>
	.site-wrapper {
		min-height: 100vh;
		display: flex;
		flex-direction: column;
	}

	.main-content {
		flex: 1;
		padding: var(--space-xl) var(--space-md);
	}

	@media (max-width: 600px) {
		.main-content {
			padding: var(--space-lg) var(--space-md);
		}
	}
</style>
