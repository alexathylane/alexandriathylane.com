<svelte:head>
	<title>Projects | Alexandria Thylane</title>
	<meta name="description" content="Technical and research projects spanning AI, robotics, and software engineering." />
</svelte:head>

<article class="projects container">
	<h1>Projects</h1>

	<p class="intro">
		A selection of technical and research projects that bridge philosophy, cognitive science,
		and engineering.
	</p>

	<section class="project">
		<h2 id="queer-robot-companion">Queer Robot Companion (Pax)</h2>
		<p class="project-meta">2025–Present | TIER Robotics Lab, Hunter College</p>
		<p>
			Lead architect of a queer-affirming robot companion system. The prototype models gender
			fluidity as a dynamical state variable that evolves through interaction, demonstrating
			how AI systems can represent non-normative identities.
		</p>
		<p>
			This project explores fundamental questions about what it means for artificial agents
			to understand and respect human identity—particularly identities that resist static
			categorization.
		</p>
		<ul class="project-outcomes">
			<li>Full paper accepted to HRI '26 (23.2% acceptance rate)</li>
			<li>Interactivity demo accepted to HRI '26</li>
		</ul>
	</section>

	<section class="project">
		<h2 id="ios-development">iOS Development at Apple & Reddit</h2>
		<p class="project-meta">2017–2023 | Industry</p>
		<p>
			Eight years of professional software engineering at elite tech companies, primarily
			focused on iOS development and system architecture.
		</p>
		<h3>Apple (2021–2023)</h3>
		<ul>
			<li>UI/UX improvements for macOS/iOS Music app</li>
			<li>Core accessibility features for Apple TV</li>
		</ul>
		<h3>Reddit (2017–2021)</h3>
		<ul>
			<li>Led re-architecture of front page feed system</li>
			<li>Designed first analytics framework for iOS app</li>
			<li>Established unit testing practices across iOS codebase</li>
		</ul>
		<p class="note">
			This technical background informs my philosophical work—I think in terms of systems,
			architectures, and failure modes.
		</p>
	</section>

	<section class="project">
		<h2 id="research-tools">Research Tools & Prototypes</h2>
		<p class="project-meta">Ongoing</p>
		<p>
			Various computational tools for exploring philosophical questions:
		</p>
		<ul>
			<li>DST simulation environments for modeling identity dynamics</li>
			<li>Prototype systems for testing embodied cognition hypotheses</li>
			<li>Research workflow tools for academic writing</li>
		</ul>
	</section>
</article>

<style>
	.projects {
		max-width: var(--max-width);
	}

	.intro {
		font-size: 1.1rem;
		color: var(--text-secondary);
		margin-bottom: var(--space-xl);
	}

	.project {
		padding: var(--space-lg);
		background: var(--bg-secondary);
		border-radius: 8px;
		margin-bottom: var(--space-lg);
	}

	.project h2 {
		margin-top: 0;
		color: var(--text-primary);
	}

	.project h3 {
		font-size: 1rem;
		color: var(--accent-purple);
		margin-top: var(--space-md);
	}

	.project-meta {
		color: var(--text-muted);
		font-size: 0.9rem;
		margin-bottom: var(--space-md);
	}

	.project-outcomes {
		background: var(--bg-tertiary);
		padding: var(--space-md);
		border-radius: 4px;
		margin-top: var(--space-md);
	}

	.project-outcomes li {
		color: var(--accent-purple);
	}

	.note {
		font-style: italic;
		color: var(--text-secondary);
		margin-top: var(--space-md);
		margin-bottom: 0;
	}
</style>
