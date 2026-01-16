<script lang="ts">
	import { page } from '$app/stores';
	import ThemeToggle from './ThemeToggle.svelte';

	const links = [
		{ href: '/', label: 'Home' },
		{ href: '/research', label: 'Research' },
		{ href: '/publications', label: 'Publications' },
		{ href: '/cv', label: 'CV' },
		{ href: '/projects', label: 'Projects' },
		{ href: 'https://notes.alexandriathylane.com', label: 'Notes', external: true }
	];

	function isActive(href: string, pathname: string): boolean {
		if (href === '/') return pathname === '/';
		return pathname.startsWith(href);
	}
</script>

<header class="nav-header">
	<nav class="nav container-wide">
		<a href="/" class="nav-name">Alexandria Thylane</a>

		<ul class="nav-links">
			{#each links as link}
				<li>
					{#if link.external}
						<a href={link.href} target="_blank" rel="noopener">
							{link.label}
						</a>
					{:else}
						<a
							href={link.href}
							class:active={isActive(link.href, $page.url.pathname)}
						>
							{link.label}
						</a>
					{/if}
				</li>
			{/each}
		</ul>

		<ThemeToggle />
	</nav>
</header>

<style>
	.nav-header {
		border-bottom: 1px solid var(--bg-tertiary);
	}

	.nav {
		display: flex;
		align-items: center;
		justify-content: space-between;
		gap: var(--space-lg);
		padding: var(--space-md);
		max-width: var(--max-width-wide);
		margin: 0 auto;
	}

	.nav-name {
		font-family: var(--font-serif);
		font-size: 1.25rem;
		font-weight: 500;
		color: var(--text-primary);
		text-decoration: none;
		white-space: nowrap;
	}

	.nav-name:hover {
		color: var(--accent-purple);
	}

	.nav-links {
		display: flex;
		gap: var(--space-md);
		list-style: none;
		padding: 0;
		margin: 0;
	}

	.nav-links a {
		color: var(--text-secondary);
		font-size: 0.9rem;
		padding: var(--space-xs) var(--space-sm);
		border-radius: 4px;
		transition: color var(--transition-fast), background var(--transition-fast);
	}

	.nav-links a:hover {
		color: var(--text-primary);
	}

	.nav-links a.active {
		color: var(--accent-purple);
	}

	@media (max-width: 768px) {
		.nav {
			flex-wrap: wrap;
		}

		.nav-links {
			order: 3;
			width: 100%;
			justify-content: center;
			flex-wrap: wrap;
			gap: var(--space-sm);
		}
	}
</style>
