<svelte:head>
	<title>Alexandria Thylane | Philosopher of Mind</title>
	<meta name="description" content="Philosopher of mind working on identity, embodiment, and AI. Research Fellow at CUNY Pipeline Program." />
</svelte:head>

<div class="home container">
	<header class="hero">
		<img src="/headshot.jpg" alt="Alexandria Thylane" class="headshot" />
		<div class="hero-text">
			<h1>Alexandria Thylane</h1>
			<p class="tagline">Philosopher of mind working on identity, embodiment, and AI.</p>
		</div>
	</header>

	<section class="intro">
		<p>
			I study how embodied agents—human and artificial—develop and sustain identity and agency
			over time. Working at the intersection of philosophy of mind and cognitive science, I'm
			drawn to analytic approaches that can explain how a sense of self stabilizes or shifts.
		</p>
		<p>
			I spent eight years as a software engineer at Apple and Reddit before returning to philosophy.
			That technical background shapes how I work—I'm interested in computational modeling as a
			way to test and refine philosophical claims, and in what building AI systems reveals about
			our assumptions when representing identity.
		</p>
	</section>

	<section class="current">
		<h2>Current</h2>
		<ul>
			<li><strong>Research Fellow</strong>, CUNY Pipeline Program</li>
			<li><strong>Lead Architect</strong>, Queer Robot Companion Project, TIER Robotics Lab</li>
			<li><strong>PhD applicant</strong>, Fall 2026</li>
		</ul>
	</section>

	<section class="background">
		<h2>Background</h2>
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

	<section class="contact">
		<h2>Contact</h2>
		<p><a href="mailto:contact@alexandriathylane.com">contact@alexandriathylane.com</a></p>
		<p><a href="/cv">View CV &rarr;</a></p>
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

	.contact p {
		margin-bottom: var(--space-sm);
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

		.bg-grid {
			grid-template-columns: 1fr;
		}
	}
</style>
