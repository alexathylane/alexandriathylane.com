<svelte:head>
	<title>Alexandria Thylane | Philosopher of Mind & Cognitive Scientist</title>
	<meta name="description" content="Philosopher of mind and cognitive scientist working on identity, embodiment, and AI. Research Fellow at CUNY Pipeline Program." />
</svelte:head>

<div class="home container">
	<header class="hero">
		<h1>Alexandria Thylane</h1>
		<p class="tagline">Philosopher of mind and cognitive scientist working on identity, embodiment, and AI.</p>
	</header>

	<section class="intro">
		<p>
			I study how embodied agents—human and artificial—develop and maintain identity over time.
			My work sits at the intersection of philosophy of mind, cognitive science, and AI, drawing
			on dynamical systems theory to model the processes through which a sense of self stabilizes,
			shifts, or destabilizes.
		</p>
		<p>
			Before returning to philosophy, I spent eight years as a software engineer at Reddit and Apple.
			I bring that technical depth to questions about how AI systems represent human identity and
			how embodied cognition shapes agency.
		</p>
	</section>

	<section class="current">
		<h2>Current</h2>
		<ul>
			<li><strong>Research Fellow</strong>, CUNY Pipeline Program (2025–2026)</li>
			<li><strong>Lead Architect</strong>, Queer Robot Companion Project, TIER Robotics Lab</li>
			<li><strong>BA in Mind, Gender, and Artificial Intelligence</strong>, CUNY Baccalaureate (expected Summer 2026)</li>
			<li>PhD applicant for Fall 2026</li>
		</ul>
	</section>

	<section class="research-focus">
		<h2>Research Focus</h2>
		<p class="question">
			<strong>Central question:</strong> How do embodied agents develop and sustain identity
			and agency across time and changing environments?
		</p>
		<p><strong>Current projects:</strong></p>
		<ul>
			<li>Dynamical systems models of gender identity</li>
			<li>Queer-affirming robot companions (HRI '26)</li>
			<li>Epistemic costs of marginalization</li>
		</ul>
		<p><a href="/research">Read more about my research &rarr;</a></p>
	</section>

	<section class="recent">
		<h2>Recent</h2>
		<ul class="recent-list">
			<li>
				<span class="label">HRI '26</span>
				<span>"Not the Intended User: Queer Perspectives on Identity, Risk, and Trust in Robot Companions"</span>
				<span class="note">(23.2% acceptance rate)</span>
			</li>
			<li>
				<span class="label">CUNY Pipeline Symposium</span>
				<span>"Modeling Gender Identity as a Metastable Process"</span>
				<span class="note">(May 2026)</span>
			</li>
			<li>
				<span class="label">Fellowship</span>
				<span>Thomas W. Smith Academic Excellence Fellowship</span>
				<span class="note">(2025–2026)</span>
			</li>
		</ul>
		<p><a href="/publications">Publications &rarr;</a></p>
	</section>
</div>

<style>
	.home {
		max-width: var(--max-width);
	}

	.hero {
		margin-bottom: var(--space-xl);
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

	.question {
		font-style: italic;
	}

	.recent-list {
		list-style: none;
		padding: 0;
	}

	.recent-list li {
		display: flex;
		flex-wrap: wrap;
		gap: var(--space-sm);
		align-items: baseline;
		margin-bottom: var(--space-md);
		padding-bottom: var(--space-md);
		border-bottom: 1px solid var(--bg-tertiary);
	}

	.recent-list li:last-child {
		border-bottom: none;
	}

	.recent-list .label {
		font-weight: 600;
		color: var(--accent-purple);
		font-size: 0.9rem;
		text-transform: uppercase;
		letter-spacing: 0.5px;
	}

	.recent-list .note {
		color: var(--text-muted);
		font-size: 0.9rem;
	}

	@media (max-width: 600px) {
		.hero h1 {
			font-size: 2.25rem;
		}

		.tagline {
			font-size: 1.1rem;
		}
	}
</style>
