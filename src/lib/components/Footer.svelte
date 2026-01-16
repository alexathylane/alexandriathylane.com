<script lang="ts">
	const currentYear = new Date().getFullYear();
</script>

<footer class="footer">
	<div class="container">
		<div class="footer-content">
			<div class="footer-contact">
				<a href="mailto:contact@alexandriathylane.com">contact@alexandriathylane.com</a>
				<span class="separator">|</span>
				<a href="https://www.linkedin.com/in/alexandriathylane/" target="_blank" rel="noopener" class="icon-link" aria-label="LinkedIn">
					<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
						<path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/>
					</svg>
				</a>
				<span class="separator">|</span>
				<a href="https://orcid.org/0009-0000-1657-041X" target="_blank" rel="noopener">ORCID</a>
			</div>
			<p class="footer-copyright text-muted">
				{currentYear} Alexandria Thylane
			</p>
		</div>
	</div>
</footer>

<style>
	.footer {
		border-top: 1px solid var(--bg-tertiary);
		padding: var(--space-lg) var(--space-md);
		margin-top: auto;
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

	.footer-contact a {
		color: var(--text-secondary);
	}

	.footer-contact a:hover {
		color: var(--accent-purple);
	}

	.icon-link {
		display: flex;
		align-items: center;
	}

	.icon-link svg {
		transition: color var(--transition-fast);
	}

	.separator {
		color: var(--text-muted);
	}

	.footer-copyright {
		font-size: 0.85rem;
		margin: 0;
	}
</style>
