<svelte:head>
	<title>Publications | Alexandria Thylane</title>
	<meta name="description" content="Academic publications, presentations, and manuscripts in philosophy of mind, cognitive science, and human-robot interaction." />
</svelte:head>

<article class="publications container">
	<h1>Publications</h1>

	<section>
		<h2>Refereed Conference Proceedings</h2>
		<ul class="pub-list">
			<li>
				<p class="pub-title">Not the Intended User: Queer Perspectives on Identity, Risk, and Trust in Robot Companions</p>
				<p class="pub-authors">Nam, K., Yee, J., Jinnat, R.A., Rigual, K., <strong>Thylane, A.</strong>, & Korpan, R.</p>
				<p class="pub-venue">Proceedings of the 2026 ACM/IEEE International Conference on Human-Robot Interaction (HRI '26). Edinburgh, UK.</p>
				<p class="pub-note">Acceptance Rate: 23.2%</p>
			</li>
		</ul>
	</section>

	<section>
		<h2>Manuscripts Under Review</h2>
		<ul class="pub-list">
			<li>
				<p class="pub-title">Pax: A Queer-Affirming Robot Companion for the Home</p>
				<p class="pub-authors"><strong>Thylane, A.</strong>, Foulen, D., Rigual, K., Jinnat, R.A., Nam, K., Yee, J., & Korpan, R.</p>
				<p class="pub-venue">Submitted to HRI '26 (System Demonstration Track)</p>
			</li>
		</ul>
	</section>

	<section>
		<h2>Manuscripts in Preparation</h2>
		<ul class="pub-list">
			<li>
				<p class="pub-title">Embodied Cognition and Transgender Identity: A Dynamical Systems Perspective</p>
			</li>
			<li>
				<p class="pub-title">Unequal Costs of Disbelief: A Spinozan Account of Propositional Rejection under Marginalization</p>
			</li>
		</ul>
	</section>

	<section>
		<h2>Presentations</h2>
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
				<p class="pub-venue">Poster presentation, CUNY Undergraduate Research Conference</p>
				<p class="pub-note">May 2025</p>
			</li>
			<li>
				<p class="pub-title">Can AI Have Gender? A 4E Cognition Approach to Gender Identity</p>
				<p class="pub-venue">Oral presentation, Hunter College Undergraduate Research Conference</p>
				<p class="pub-note">April 2025</p>
			</li>
		</ul>
	</section>
</article>

<style>
	.publications {
		max-width: var(--max-width);
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
		color: var(--accent-purple);
		font-size: 0.9rem;
		margin-bottom: 0;
	}
</style>
