<script lang="ts">
	const currentYear = new Date().getFullYear();
</script>

<footer class="footer">
	<div class="container">
		<div class="footer-content">
			<div class="footer-contact">
				<a href="mailto:contact@alexandriathylane.com">contact@alexandriathylane.com</a>
				<span class="separator">|</span>
				<a href="https://linkedin.com/in/alexathylane" target="_blank" rel="noopener">LinkedIn</a>
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

	.separator {
		color: var(--text-muted);
	}

	.footer-copyright {
		font-size: 0.85rem;
		margin: 0;
	}
</style>
