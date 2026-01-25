<script lang="ts">
	function openEmail() {
		const user = 'contact';
		const domain = 'alexandriathylane.com';
		window.location.href = `mailto:${user}@${domain}`;
	}
</script>

<footer class="footer">
	<div class="container">
		<div class="footer-content">
			<div class="footer-contact">
				<button type="button" class="icon-link" onclick={openEmail} aria-label="Email">
					<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
						<path d="M1.5 8.67v8.58a3 3 0 0 0 3 3h15a3 3 0 0 0 3-3V8.67l-8.928 5.493a3 3 0 0 1-3.144 0L1.5 8.67Z"/>
						<path d="M22.5 6.908V6.75a3 3 0 0 0-3-3h-15a3 3 0 0 0-3 3v.158l9.714 5.978a1.5 1.5 0 0 0 1.572 0L22.5 6.908Z"/>
					</svg>
				</button>
				<span class="separator">|</span>
				<a href="https://www.linkedin.com/in/alexandriathylane/" target="_blank" rel="noopener" class="icon-link" aria-label="LinkedIn">
					<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
						<path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/>
					</svg>
				</a>
				<span class="separator">|</span>
				<a href="https://github.com/alexathylane" target="_blank" rel="noopener" class="icon-link" aria-label="GitHub">
					<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
						<path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/>
					</svg>
				</a>
				<span class="separator">|</span>
				<a href="https://orcid.org/0009-0000-1657-041X" target="_blank" rel="noopener" class="icon-link" aria-label="ORCID">
					<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
						<path d="M12 0c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm-2.033 16.01c.564-1.789 1.632-3.932 1.821-4.474.273-.787-.211-1.136-1.74.209l-.34-.64c1.744-1.897 5.335-2.326 4.113.613-.763 1.835-1.59 3.899-1.855 4.638-.395 1.102.061 1.315 1.21.177l.373.63c-1.723 1.89-5.298 1.057-3.582-1.153zm4.179-9.531c-.668 0-1.235-.566-1.235-1.234s.567-1.234 1.235-1.234c.669 0 1.235.566 1.235 1.234s-.566 1.234-1.235 1.234z"/>
					</svg>
				</a>
			</div>
		</div>
	</div>
</footer>

<style>
	.footer {
		position: fixed;
		bottom: 0;
		left: 0;
		right: 0;
		border-top: 1px solid var(--bg-tertiary);
		background: var(--bg-primary);
		padding: 0.75rem var(--space-md);
		z-index: 100;
	}

	.footer-content {
		display: flex;
		flex-direction: column;
		align-items: center;
		gap: var(--space-sm);
		text-align: center;
	}

	.footer-contact {
		display: flex;
		align-items: center;
		gap: var(--space-sm);
		font-size: 0.9rem;
	}

	.footer-contact a,
	.footer-contact button {
		color: var(--text-secondary);
	}

	.footer-contact a:hover,
	.footer-contact button:hover {
		color: var(--accent-purple);
	}

	.icon-link {
		display: flex;
		align-items: center;
		background: none;
		border: none;
		padding: 0;
		cursor: pointer;
	}

	.icon-link svg {
		transition: color var(--transition-fast);
	}

	.separator {
		color: var(--text-muted);
	}

	@media (max-width: 600px) {
		.footer {
			padding: 0.5rem var(--space-sm);
		}

		.footer-contact {
			gap: var(--space-xs);
		}

		.icon-link svg {
			width: 16px;
			height: 16px;
		}
	}
</style>
