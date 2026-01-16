<script lang="ts">
	import { browser } from '$app/environment';

	let theme = $state<'dark' | 'light'>('dark');

	// Initialize theme from localStorage or system preference
	$effect(() => {
		if (browser) {
			const stored = localStorage.getItem('theme');
			if (stored === 'light' || stored === 'dark') {
				theme = stored;
			} else if (window.matchMedia('(prefers-color-scheme: light)').matches) {
				theme = 'light';
			}
			document.documentElement.setAttribute('data-theme', theme);
		}
	});

	function toggle() {
		theme = theme === 'dark' ? 'light' : 'dark';
		if (browser) {
			localStorage.setItem('theme', theme);
			document.documentElement.setAttribute('data-theme', theme);
		}
	}
</script>

<button
	onclick={toggle}
	class="theme-toggle"
	aria-label={`Switch to ${theme === 'dark' ? 'light' : 'dark'} mode`}
	title={`Switch to ${theme === 'dark' ? 'light' : 'dark'} mode`}
>
	{#if theme === 'dark'}
		<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
			<circle cx="12" cy="12" r="5"></circle>
			<line x1="12" y1="1" x2="12" y2="3"></line>
			<line x1="12" y1="21" x2="12" y2="23"></line>
			<line x1="4.22" y1="4.22" x2="5.64" y2="5.64"></line>
			<line x1="18.36" y1="18.36" x2="19.78" y2="19.78"></line>
			<line x1="1" y1="12" x2="3" y2="12"></line>
			<line x1="21" y1="12" x2="23" y2="12"></line>
			<line x1="4.22" y1="19.78" x2="5.64" y2="18.36"></line>
			<line x1="18.36" y1="5.64" x2="19.78" y2="4.22"></line>
		</svg>
	{:else}
		<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
			<path d="M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z"></path>
		</svg>
	{/if}
</button>

<style>
	.theme-toggle {
		display: flex;
		align-items: center;
		justify-content: center;
		width: 36px;
		height: 36px;
		background: var(--bg-secondary);
		border: 1px solid var(--bg-tertiary);
		border-radius: 6px;
		color: var(--text-secondary);
		cursor: pointer;
		transition: color var(--transition-fast), border-color var(--transition-fast);
	}

	.theme-toggle:hover {
		color: var(--text-primary);
		border-color: var(--text-muted);
	}
</style>
