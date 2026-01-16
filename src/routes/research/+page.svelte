<svelte:head>
	<title>Research | Alexandria Thylane</title>
	<meta name="description" content="Research on embodied identity, dynamical systems approaches to gender, and AI systems that represent human identity." />
</svelte:head>

<article class="research container">
	<h1>Research</h1>

	<section class="overview">
		<p class="lead">
			My research centers on a single question: <strong>How do embodied agents—human or
			artificial—develop and maintain identity over time?</strong>
		</p>
		<p>
			Existing theories describe how agents are socially classified or self-identify, but offer
			incomplete explanations of the processes through which a sense of self stabilizes or shifts.
			I work at the intersection of philosophy of mind, cognitive science, and AI to develop
			mechanistic accounts of identity formation.
		</p>
	</section>

	<section>
		<h2>Core Framework</h2>
		<p>
			Gender identity (and personal identity more broadly) should be modeled not as a static inner
			essence nor as pure social performance, but as a <strong>dynamically stabilized, embodied
			regulatory pattern</strong>—an attractor-like configuration that emerges developmentally
			through agent-environment coupling.
		</p>
		<p>
			Transgender embodiment serves as a high-information case that reveals how identity patterns can:
		</p>
		<ul>
			<li><strong>Destabilize</strong> (as in dysphoria)</li>
			<li><strong>Reorganize</strong> (transition)</li>
			<li><strong>Cohere</strong> (affirmation)</li>
		</ul>
		<p>...under affective and social perturbation.</p>
	</section>

	<section>
		<h2>Research Lines</h2>

		<div class="research-line">
			<h3>Theoretical: DST Models of Identity</h3>
			<p>
				Developing dynamical systems frameworks for understanding how identity stabilizes
				through embodied, affective, and social processes. My thesis work formalizes
				gender identity as an attractor landscape shaped by developmental history and ongoing
				agent-environment coupling.
			</p>
			<p class="status">
				<span class="label">Status:</span> PhD writing sample completed; research agenda in development
			</p>
		</div>

		<div class="research-line">
			<h3>Applied: Queer Robot Companions</h3>
			<p>
				Lead architect of the Queer Robot Companion project at Hunter College's TIER Robotics Lab.
				Exploring what it means to design AI systems that can represent fluid, non-normative
				identities. The prototype models gender fluidity as a dynamical state variable that
				evolves through interaction.
			</p>
			<p class="status">
				<span class="label">Status:</span> HRI '26 paper accepted; system demo under review
			</p>
		</div>

		<div class="research-line">
			<h3>Social: Epistemic Costs of Marginalization</h3>
			<p>
				Developing an account of how marginalized people bear a disproportionate cognitive tax
				to reject identity-threatening falsehoods. Synthesizes the Spinozan model of belief with
				fragmentation of belief to propose a cognitive mechanism underlying stereotype threat
				and minority stress.
			</p>
			<p class="status">
				<span class="label">Status:</span> Manuscript in preparation
			</p>
		</div>
	</section>

	<section>
		<h2>Methodological Stance</h2>
		<ul>
			<li>Theoretical frameworks used as <strong>tools</strong>, not identity markers</li>
			<li>Methodologically opportunistic—frameworks serve the broader philosophical agenda</li>
			<li>Trans experience as methodological resource and constraint on bad theory, not sole object of concern</li>
			<li>Interest in testing philosophical theorizing through computational modeling</li>
		</ul>
	</section>

	<section>
		<h2>Areas of Specialization</h2>
		<ul class="areas">
			<li>Philosophy of Mind and Cognitive Science</li>
			<li>Philosophy of Artificial Intelligence</li>
			<li>Feminist Philosophy and Philosophy of Gender</li>
		</ul>
	</section>
</article>

<style>
	.research {
		max-width: var(--max-width);
	}

	.lead {
		font-size: 1.2rem;
	}

	.research-line {
		padding: var(--space-lg);
		background: var(--bg-secondary);
		border-radius: 8px;
		margin-bottom: var(--space-md);
	}

	.research-line h3 {
		margin-top: 0;
		color: var(--accent-purple);
	}

	.status {
		font-size: 0.9rem;
		color: var(--text-secondary);
		margin-bottom: 0;
	}

	.status .label {
		font-weight: 600;
	}

	.areas {
		columns: 1;
	}

	@media (min-width: 500px) {
		.areas {
			columns: 2;
		}
	}
</style>
