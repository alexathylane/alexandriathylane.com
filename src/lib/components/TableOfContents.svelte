<script lang="ts">
	import { onMount } from 'svelte';
	import { page } from '$app/stores';

	interface Section {
		id: string;
		title: string;
	}

	let sections: Section[] = $state([]);
	let activeSection: string | null = $state(null);

	function scanHeadings() {
		const headings = document.querySelectorAll('main h2[id]');
		sections = Array.from(headings).map((h) => ({
			id: h.id,
			title: h.textContent || ''
		}));
		updateActiveSection();
	}

	function updateActiveSection() {
		if (sections.length === 0) return;

		const scrollY = window.scrollY;
		const offset = 120; // Account for sticky header

		// Find the section closest to the top of the viewport
		let current: string | null = null;
		for (const section of sections) {
			const element = document.getElementById(section.id);
			if (element) {
				const top = element.getBoundingClientRect().top + scrollY - offset;
				if (scrollY >= top) {
					current = section.id;
				}
			}
		}

		// Default to first section if we're at the very top
		if (!current && sections.length > 0) {
			current = sections[0].id;
		}

		activeSection = current;
	}

	onMount(() => {
		scanHeadings();

		window.addEventListener('scroll', updateActiveSection, { passive: true });
		return () => window.removeEventListener('scroll', updateActiveSection);
	});

	// Re-scan when route changes
	$effect(() => {
		$page.url.pathname;
		// Small delay to let new page content render
		setTimeout(scanHeadings, 50);
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
