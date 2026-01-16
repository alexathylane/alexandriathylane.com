<svelte:head>
	<title>About | Alexandria Thylane</title>
	<meta name="description" content="Philosopher of mind and cognitive scientist with a background in software engineering. Learn about my journey from tech to philosophy." />
</svelte:head>

<article class="about container">
	<h1>About</h1>

	<section class="opening">
		<p class="lead">
			I'm Alexandria Thylane—a philosopher of mind and cognitive scientist with a background
			in software engineering.
		</p>
		<p>
			For eight years, I built software at companies like Apple and Reddit. I designed systems,
			architected solutions, and shipped products used by millions. It was intellectually
			demanding work, and I was good at it.
		</p>
		<p>But engineering kept surfacing questions it couldn't answer.</p>
	</section>

	<section>
		<h2>The Turn</h2>
		<p>
			Working on AI systems, I encountered problems that weren't technical—they were conceptual.
			How should an AI represent a user's identity? What does it mean for a system to "know"
			someone? When algorithms encode categories like gender, what assumptions are they operationalizing?
		</p>
		<p>
			These weren't edge cases to optimize away. They were philosophical questions hiding inside
			engineering decisions.
		</p>
		<p>
			At the same time, my own experience of transition gave me direct access to phenomena that
			mainstream cognitive science often abstracts away: the felt sense of identity destabilization,
			the somatic dimension of self-recognition, the way embodiment and social perception interact
			to shape who we understand ourselves to be.
		</p>
		<p>
			I realized I wasn't just interested in building systems—I wanted to understand the minds
			those systems model and serve.
		</p>
	</section>

	<section>
		<h2>Philosophy as Method</h2>
		<p>
			Returning to academic philosophy wasn't an escape from tech. It was a methodological decision.
		</p>
		<p>
			Philosophy offers tools for precisely the questions that animated my engineering work:
			What is identity? How do agents develop stable selves in changing environments? What cognitive
			and social processes underlie self-understanding? When we build AI systems that represent
			humans, what are we assuming about minds?
		</p>
		<p>
			My approach is rooted in 4E cognition (embodied, embedded, enactive, extended) and dynamical
			systems theory. I'm interested in mechanistic explanations that connect phenomenology to
			process—theories that respect both lived experience and empirical constraint.
		</p>
		<p>
			I bring my engineering training to this work. I think in terms of systems, architectures,
			and failure modes. I'm drawn to explanations that could, in principle, be modeled and tested.
			Philosophy that can't survive contact with implementation often reveals its gaps when you
			try to build something.
		</p>
	</section>

	<section>
		<h2>Current Work</h2>
		<p>
			I'm currently a Research Fellow in the CUNY Pipeline Program and the lead architect of the
			Queer Robot Companion project at Hunter College's TIER Robotics Lab.
		</p>
		<p>
			My research centers on a single question: <strong>How do embodied agents develop and maintain
			identity over time?</strong>
		</p>
		<p>I approach this through three intersecting lines of work:</p>

		<h3>Theoretical</h3>
		<p>
			I'm developing a dynamical systems account of identity formation, treating gender identity
			as a paradigmatic case. This framework models identity not as a static essence or pure social
			performance, but as a dynamically stabilized, embodied regulatory pattern—an attractor-like
			configuration that emerges through agent-environment coupling.
		</p>

		<h3>Applied</h3>
		<p>
			Through the Queer Robot Companion project, I'm exploring what it means to design AI systems
			that can represent fluid, non-normative identities. Our HRI '26 paper examines how queer
			users approach robot companions differently than intended by designers.
		</p>

		<h3>Social</h3>
		<p>
			I'm developing an account of how the cognitive costs of identity management are distributed
			unequally—how marginalized people bear a disproportionate tax on executive function to reject
			identity-threatening information.
		</p>
	</section>

	<section class="background">
		<h2>Background</h2>

		<div class="bg-grid">
			<div>
				<h3>Education</h3>
				<ul>
					<li>BA in Mind, Gender, and Artificial Intelligence, CUNY Baccalaureate (expected 2026)</li>
					<li>BA in Computer Science, Texas State University (2015), Summa Cum Laude</li>
				</ul>
			</div>

			<div>
				<h3>Industry</h3>
				<ul>
					<li>Senior Software Engineer, Apple (2021–2023)</li>
					<li>Senior iOS Software Engineer, Reddit (2017–2021)</li>
				</ul>
			</div>

			<div>
				<h3>Current</h3>
				<ul>
					<li>CUNY Pipeline Fellow (2025–2026)</li>
					<li>Thomas W. Smith Academic Excellence Fellow</li>
					<li>PhD applicant, Fall 2026</li>
				</ul>
			</div>
		</div>
	</section>

	<section>
		<h2>Research Areas</h2>
		<ul class="areas-list">
			<li>Philosophy of Mind and Cognitive Science</li>
			<li>Philosophy of Artificial Intelligence</li>
			<li>Feminist Philosophy and Philosophy of Gender</li>
			<li>Embodied and 4E Cognition</li>
			<li>Human-Robot Interaction</li>
		</ul>
	</section>

	<section class="name-note">
		<h2>The Name</h2>
		<p>
			I publish as <strong>Alexandria Thylane</strong>. Alexandria is my given name; Thylane is chosen.
		</p>
	</section>
</article>

<style>
	.about {
		max-width: var(--max-width);
	}

	.lead {
		font-size: 1.25rem;
		color: var(--text-primary);
	}

	.bg-grid {
		display: grid;
		gap: var(--space-lg);
	}

	@media (min-width: 600px) {
		.bg-grid {
			grid-template-columns: repeat(3, 1fr);
		}
	}

	.bg-grid h3 {
		font-size: 1rem;
		text-transform: uppercase;
		letter-spacing: 0.5px;
		color: var(--accent-purple);
		margin-bottom: var(--space-sm);
	}

	.bg-grid ul {
		padding-left: 0;
		list-style: none;
	}

	.bg-grid li {
		font-size: 0.95rem;
		color: var(--text-secondary);
		margin-bottom: var(--space-xs);
	}

	.areas-list {
		columns: 2;
		column-gap: var(--space-lg);
	}

	@media (max-width: 500px) {
		.areas-list {
			columns: 1;
		}
	}

	.name-note {
		padding: var(--space-lg);
		background: var(--bg-secondary);
		border-radius: 8px;
		border-left: 3px solid var(--accent-purple);
	}

	.name-note h2 {
		margin-top: 0;
	}

	.name-note p {
		margin-bottom: 0;
	}
</style>
