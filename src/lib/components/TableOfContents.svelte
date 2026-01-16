<script lang="ts">
	import { onMount } from 'svelte';
	import { page } from '$app/stores';

	interface Section {
		id: string;
		title: string;
	}

	let sections: Section[] = $state([]);
	let activeSection: string | null = $state(null);

	onMount(() => {
		// Find all h2 elements with IDs
		const headings = document.querySelectorAll('main h2[id]');
		sections = Array.from(headings).map((h) => ({
			id: h.id,
			title: h.textContent || ''
		}));

		if (sections.length === 0) return;

		// Set up Intersection Observer
		const observer = new IntersectionObserver(
			(entries) => {
				for (const entry of entries) {
					if (entry.isIntersecting) {
						activeSection = entry.target.id;
					}
				}
			},
			{
				rootMargin: '-80px 0px -70% 0px',
				threshold: 0
			}
		);

		headings.forEach((heading) => observer.observe(heading));

		return () => observer.disconnect();
	});

	// Re-scan when route changes
	$effect(() => {
		$page.url.pathname;
		sections = [];
		activeSection = null;

		// Small delay to let new page content render
		setTimeout(() => {
			const headings = document.querySelectorAll('main h2[id]');
			sections = Array.from(headings).map((h) => ({
				id: h.id,
				title: h.textContent || ''
			}));
		}, 50);
	});

	function scrollToSection(id: string) {
		const element = document.getElementById(id);
		if (element) {
			element.scrollIntoView({ behavior: 'smooth', block: 'start' });
		}
	}
</script>

{#if sections.length > 0}
	<nav class="toc" aria-label="Table of contents">
		<ul>
			{#each sections as section}
				<li>
					<button
						type="button"
						class:active={activeSection === section.id}
						onclick={() => scrollToSection(section.id)}
					>
						{section.title}
					</button>
				</li>
			{/each}
		</ul>
	</nav>
{/if}

<style>
	.toc {
		position: sticky;
		top: 120px;
		max-height: calc(100vh - 160px);
		overflow-y: auto;
		padding-left: var(--space-lg);
		border-left: 1px solid var(--bg-tertiary);
	}

	ul {
		list-style: none;
		padding: 0;
		margin: 0;
	}

	li {
		margin-bottom: var(--space-sm);
	}

	button {
		background: none;
		border: none;
		padding: var(--space-xs) 0;
		font-size: 0.85rem;
		color: var(--text-muted);
		cursor: pointer;
		text-align: left;
		transition: color var(--transition-fast);
		font-family: var(--font-sans);
	}

	button:hover {
		color: var(--text-secondary);
	}

	button.active {
		color: var(--accent-purple);
		font-weight: 500;
	}
</style>
