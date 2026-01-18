<svelte:head>
	<title>Research | Alexandria Thylane</title>
	<meta name="description" content="Research on embodied identity, dynamical systems approaches to gender, and AI systems that represent human identity." />
</svelte:head>

<article class="research container">
	<h1>Research</h1>

	<section class="intro">
		<p>
			I study how embodied agents—human and artificial—develop and sustain identity and agency across time and changing environments. I work at the intersection of philosophy of mind and cognitive science, favoring analytic and mechanistic approaches. My technical background draws me to computational modeling and to how technical systems and their users shape each other. The aim is to build integrated accounts of identity that do justice to both first-person experience and third-person explanation.
		</p>
	</section>

	<section class="areas">
		<h2 id="areas">Areas of Interest</h2>
		<div class="areas-grid">
			<ul>
				<li>Philosophy of Mind & Cognitive Science</li>
				<li>Philosophy of AI</li>
			</ul>
			<ul>
				<li>Social Ontology</li>
				<li>Feminist Philosophy</li>
			</ul>
		</div>
	</section>

	<section>
		<h2 id="research-lines">Research Lines</h2>

		<div class="research-line">
			<h3>Identity as Process</h3>
			<p>
				My thesis work, <em>Gender Identity as Regulatory Self-Model</em>, argues that gender identity
				is best understood as a dynamically stabilized regulatory process rather than a static
				property or social designation. Drawing on dynamical systems theory, I treat transgender
				embodiment as a high-information case that reveals how identity patterns can destabilize,
				reorganize, and cohere under affective and social perturbation.
			</p>
			<p class="status">
				<span class="label">Status:</span> Manuscript in preparation
			</p>
		</div>

		<div class="research-line">
			<h3>AI and Identity Individuation</h3>
			<p>
				Lead architect of the Queer Robot Companion project at Hunter College's TIER Robotics Lab.
				The project explores what it means for AI systems to represent fluid identities—and
				raises harder questions about when systems genuinely instantiate identity-like organization
				versus merely simulate its cues.
			</p>
			<p class="status">
				<span class="label">Status:</span> HRI '26 paper accepted; system demo under review
			</p>
		</div>

		<div class="research-line">
			<h3>Cognitive Architecture and Social Structure</h3>
			<p>
				How does cognitive architecture interact with social position? My essay <em>Unequal Costs
				of Disbelief</em> synthesizes the Spinozan model of belief with belief fragmentation to
				propose a mechanism underlying stereotype threat and minority stress—a structural asymmetry
				where marginalized people bear disproportionate cognitive costs to reject identity-threatening
				information.
			</p>
			<p class="status">
				<span class="label">Status:</span> Manuscript in preparation
			</p>
		</div>
	</section>

	<section class="publications">
		<h2 id="publications">Publications</h2>

		<h3 id="refereed-proceedings">Refereed Conference Proceedings</h3>
		<ul class="pub-list">
			<li>
				<p class="pub-title">Not the Intended User: Queer Perspectives on Identity, Risk, and Trust in Robot Companions</p>
				<p class="pub-authors">Nam, K., Yee, J., Jinnat, R.A., Rigual, K., <strong>Thylane, A.</strong>, & Korpan, R.</p>
				<p class="pub-venue">Proceedings of the 2026 ACM/IEEE International Conference on Human-Robot Interaction (HRI '26). Edinburgh, UK.</p>
				<p class="pub-note">Acceptance Rate: 23.2%</p>
			</li>
		</ul>

		<h3 id="under-review">Manuscripts Under Review</h3>
		<ul class="pub-list">
			<li>
				<p class="pub-title">Pax: A Queer-Affirming Robot Companion for the Home</p>
				<p class="pub-authors"><strong>Thylane, A.</strong>, Foulen, D., Rigual, K., Jinnat, R.A., Nam, K., Yee, J., & Korpan, R.</p>
				<p class="pub-venue">Submitted to HRI '26 (System Demonstration Track)</p>
			</li>
		</ul>

		<h3 id="in-preparation">Manuscripts in Preparation</h3>
		<ul class="pub-list">
			<li>
				<p class="pub-title">Gender Identity as Regulatory Self-Model</p>
			</li>
			<li>
				<p class="pub-title">Unequal Costs of Disbelief: A Spinozan Account of Propositional Rejection under Marginalization</p>
			</li>
		</ul>

		<h3 id="presentations">Presentations</h3>
		<ul class="pub-list">
			<li>
				<p class="pub-title">Modeling Gender Identity as a Metastable Process: A 4E Cognition Framework</p>
				<p class="pub-venue">CUNY Pipeline Symposium, The Graduate Center, CUNY</p>
				<p class="pub-note">May 2026</p>
			</li>
			<li>
				<p class="pub-title">Pax: A Queer-Affirming Robot Companion System</p>
				<p class="pub-venue">Hunter College Humanity and Technology Series</p>
				<p class="pub-note">December 2025</p>
			</li>
			<li>
				<p class="pub-title">Can AI Have Gender? A 4E Cognition Approach to Gender Identity</p>
				<ul class="venue-list">
					<li>Poster, CUNY Undergraduate Research Conference <span class="pub-date">May 2025</span></li>
					<li>Oral, Hunter College Undergraduate Research Conference <span class="pub-date">April 2025</span></li>
				</ul>
			</li>
		</ul>
	</section>
</article>

<style>
	.research {
		max-width: var(--max-width);
	}

	.intro p {
		font-size: 1.1rem;
		line-height: 1.7;
	}

	.areas-grid {
		display: grid;
		grid-template-columns: 1fr 1fr;
		gap: var(--space-md);
	}

	.areas ul {
		list-style: disc;
		padding-left: 1.5rem;
		margin: 0;
	}

	.areas li {
		margin-bottom: var(--space-sm);
		font-size: 1.05rem;
	}

	@media (max-width: 500px) {
		.areas-grid {
			grid-template-columns: 1fr;
		}
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

	.pub-list {
		list-style: none;
		padding: 0;
	}

	.pub-list li {
		margin-bottom: var(--space-lg);
		padding-bottom: var(--space-lg);
		border-bottom: 1px solid var(--bg-tertiary);
	}

	.pub-list li:last-child {
		border-bottom: none;
	}

	.pub-title {
		font-family: var(--font-serif);
		font-size: 1.1rem;
		font-weight: 500;
		margin-bottom: var(--space-xs);
	}

	.pub-authors {
		color: var(--text-secondary);
		font-size: 0.95rem;
		margin-bottom: var(--space-xs);
	}

	.pub-venue {
		font-style: italic;
		color: var(--text-secondary);
		font-size: 0.95rem;
		margin-bottom: var(--space-xs);
	}

	.pub-note {
		color: var(--text-secondary);
		font-size: 0.9rem;
		margin-bottom: 0;
	}

	.venue-list {
		list-style: none;
		padding: 0;
		margin: var(--space-xs) 0 0 0;
	}

	.venue-list li {
		font-style: italic;
		color: var(--text-secondary);
		font-size: 0.95rem;
		margin-bottom: var(--space-xs);
		padding-bottom: 0;
		border-bottom: none;
	}

	.pub-date {
		font-style: normal;
		margin-left: var(--space-sm);
	}
</style>
