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
			I study how embodied agents—human and artificial—develop and maintain identity over time.
			My work draws on dynamical systems theory to model how a sense of self stabilizes, shifts,
			or destabilizes under social and affective pressure.
		</p>
		<p>
			Before philosophy, I spent eight years as a software engineer at Apple and Reddit.
			I bring that technical depth to questions about how AI systems represent human identity—and
			what they get wrong.
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

	<section class="research">
		<h2>Research</h2>
		<p class="question">
			How do embodied agents develop and sustain identity across time and changing environments?
		</p>
		<div class="projects">
			<div class="project">
				<h3>Theoretical</h3>
				<p>Dynamical systems models of gender identity as a case study for identity formation broadly.</p>
			</div>
			<div class="project">
				<h3>Applied</h3>
				<p>Queer Robot Companion project—designing AI that can represent fluid, non-normative identities. <span class="note">HRI '26 paper accepted.</span></p>
			</div>
			<div class="project">
				<h3>Social</h3>
				<p>How marginalized people bear disproportionate cognitive costs to reject identity-threatening information.</p>
			</div>
		</div>
		<p><a href="/research">More on my research &rarr;</a></p>
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

	.question {
		font-size: 1.1rem;
		font-style: italic;
		color: var(--text-secondary);
		margin-bottom: var(--space-lg);
	}

	.projects {
		display: grid;
		gap: var(--space-md);
		margin-bottom: var(--space-lg);
	}

	.project {
		padding: var(--space-md);
		background: var(--bg-secondary);
		border-radius: 8px;
	}

	.project h3 {
		margin: 0 0 var(--space-xs) 0;
		font-size: 0.9rem;
		text-transform: uppercase;
		letter-spacing: 0.5px;
		color: var(--accent-purple);
	}

	.project p {
		margin: 0;
		color: var(--text-secondary);
		font-size: 0.95rem;
	}

	.project .note {
		color: var(--accent-purple);
		font-weight: 500;
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
