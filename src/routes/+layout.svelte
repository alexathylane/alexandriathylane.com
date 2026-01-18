<script lang="ts">
	import '../app.css';
	import Nav from '$lib/components/Nav.svelte';
	import Footer from '$lib/components/Footer.svelte';
	import TableOfContents from '$lib/components/TableOfContents.svelte';

	let { children } = $props();
</script>

<svelte:head>
	<link rel="icon" href="/favicon.svg" />
	<meta name="theme-color" content="#0a0a0a" />
</svelte:head>

<div class="site-wrapper">
	<Nav />

	<div class="content-wrapper">
		<main class="main-content">
			{@render children()}
		</main>

		<aside class="toc-sidebar">
			<TableOfContents />
		</aside>
	</div>

	<Footer />
</div>

<style>
	.site-wrapper {
		min-height: 100vh;
		display: flex;
		flex-direction: column;
	}

	.content-wrapper {
		flex: 1;
		display: flex;
		max-width: 1100px;
		margin: 0 auto;
		width: 100%;
		padding: var(--space-xl) var(--space-md);
		padding-bottom: 80px;
	}

	.main-content {
		flex: 1;
		min-width: 0;
	}

	.toc-sidebar {
		width: 200px;
		flex-shrink: 0;
		display: block;
	}

	@media (max-width: 900px) {
		.toc-sidebar {
			display: none;
		}
	}

	@media (max-width: 600px) {
		.content-wrapper {
			padding: var(--space-lg) var(--space-md);
		}
	}
</style>
