<script lang="ts">
	function openEmail() {
		const user = 'contact';
		const domain = 'alexandriathylane.com';
		window.location.href = `mailto:${user}@${domain}`;
	}
</script>

<svelte:head>
	<title>Alexandria Thylane | Philosopher of Mind</title>
	<meta name="description" content="Philosopher of mind working on identity, embodiment, and AI. Research Fellow at CUNY Pipeline Program." />
</svelte:head>

<div class="home container">
	<header class="hero">
		<img src="/headshot.jpg" alt="Alexandria Thylane" class="headshot" />
		<div class="hero-text">
			<h1>Alexandria Thylane</h1>
			<p class="tagline">Philosopher of mind studying identity and agency in embodied agents—human and artificial.</p>
			<div class="hero-contact">
				<button type="button" class="email-link" onclick={openEmail} aria-label="Email">
					<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
						<path d="M1.5 8.67v8.58a3 3 0 0 0 3 3h15a3 3 0 0 0 3-3V8.67l-8.928 5.493a3 3 0 0 1-3.144 0L1.5 8.67Z"/>
						<path d="M22.5 6.908V6.75a3 3 0 0 0-3-3h-15a3 3 0 0 0-3 3v.158l9.714 5.978a1.5 1.5 0 0 0 1.572 0L22.5 6.908Z"/>
					</svg>
				</button>
				<a href="https://www.linkedin.com/in/alexandriathylane/" target="_blank" rel="noopener" aria-label="LinkedIn">
					<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
						<path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z"/>
					</svg>
				</a>
			</div>
		</div>
	</header>

	<section class="intro">
		<p>
			Working at the intersection of philosophy of mind and cognitive science, I study how
			embodied agents—human and artificial—develop and sustain agency over time.
		</p>
		<p>
			I spent eight years as a software engineer at Apple and Reddit, and worked in the startup
			ecosystem, including the NSF Innovation Corps to commercialize energy efficient computing. That
			technical and entrepreneurial background shapes how I work—I'm drawn to computational
			modeling and how technical systems and their users shape each other.
		</p>
	</section>

	<section class="current">
		<h2 id="current">Current</h2>
		<ul>
			<li><strong>Research Fellow</strong>, CUNY Pipeline Program</li>
			<li><strong>Lead Architect</strong>, Queer Robot Companion Project, TIER Robotics Lab</li>
			<li><strong>PhD applicant</strong>, Fall 2026</li>
		</ul>
	</section>

	<section class="background">
		<h2 id="background">Background</h2>
		<div class="bg-grid">
			<div>
				<h3>Education</h3>
				<p>BA, Mind, Gender & AI — CUNY Baccalaureate (2026)</p>
				<p>BA, Computer Science — Texas State (2015)</p>
			</div>
			<div>
				<h3>Industry</h3>
				<p>Senior Software Engineer, Apple</p>
				<p>Senior iOS Engineer, Reddit</p>
			</div>
			<div>
				<h3>Areas</h3>
				<p>Philosophy of Mind</p>
				<p>Philosophy of AI</p>
				<p>Feminist Philosophy</p>
			</div>
		</div>
	</section>

	<section class="engagement">
		<h2 id="engagement">Engagement</h2>
		<p>
			My work has implications for how organizations build and deploy AI systems—especially
			around identity representation and what models assume about users. I speak to technical
			and community audiences and am available for talks, workshops, and advisory conversations.
		</p>
	</section>
</div>

<style>
	.home {
		max-width: var(--max-width);
	}

	.hero {
		display: flex;
		align-items: center;
		gap: var(--space-xl);
		margin-bottom: var(--space-xl);
	}

	.headshot {
		width: 180px;
		height: 180px;
		border-radius: 50%;
		object-fit: cover;
		object-position: center top;
		flex-shrink: 0;
	}

	.hero h1 {
		font-size: 3rem;
		margin-bottom: var(--space-sm);
	}

	.tagline {
		font-size: 1.25rem;
		color: var(--text-secondary);
		font-family: var(--font-serif);
		font-style: italic;
	}

	.hero-contact {
		display: flex;
		align-items: center;
		gap: var(--space-md);
		margin-top: var(--space-sm);
	}

	.hero-contact a {
		color: var(--text-secondary);
		font-size: 0.9rem;
		display: flex;
		align-items: center;
	}

	.hero-contact a:hover,
	.hero-contact button:hover {
		color: var(--accent-purple);
	}

	.email-link {
		background: none;
		border: none;
		padding: 0;
		color: var(--text-secondary);
		cursor: pointer;
		display: flex;
		align-items: center;
	}

	.intro {
		margin-bottom: var(--space-xl);
	}

	.intro p {
		font-size: 1.1rem;
	}

	section {
		margin-bottom: var(--space-xl);
	}

	.current ul {
		list-style: none;
		padding: 0;
	}

	.current li {
		margin-bottom: var(--space-sm);
	}

	.bg-grid {
		display: grid;
		grid-template-columns: repeat(3, 1fr);
		gap: var(--space-lg);
	}

	.bg-grid h3 {
		font-size: 0.85rem;
		text-transform: uppercase;
		letter-spacing: 0.5px;
		color: var(--accent-purple);
		margin-bottom: var(--space-sm);
	}

	.bg-grid p {
		font-size: 0.9rem;
		color: var(--text-secondary);
		margin-bottom: var(--space-xs);
	}

	.engagement {
		padding: var(--space-lg);
		background: var(--bg-secondary);
		border-radius: 8px;
		border-left: 3px solid var(--accent-purple);
	}

	.engagement h2 {
		margin-top: 0;
	}

	.engagement p {
		margin-bottom: 0;
		color: var(--text-secondary);
	}

	@media (max-width: 600px) {
		.hero {
			flex-direction: column;
			text-align: center;
		}

		.headshot {
			width: 150px;
			height: 150px;
		}

		.hero h1 {
			font-size: 2.25rem;
		}

		.tagline {
			font-size: 1.1rem;
		}

		.hero-contact {
			justify-content: center;
		}

		.bg-grid {
			grid-template-columns: 1fr;
		}
	}
</style>
