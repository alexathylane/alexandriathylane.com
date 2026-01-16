<svelte:head>
	<title>Research | Alexandria Thylane</title>
	<meta name="description" content="Research on embodied identity, dynamical systems approaches to gender, and AI systems that represent human identity." />
</svelte:head>

<article class="research container">
	<h1>Research</h1>

	<section class="overview">
		<p class="lead">
			My current interests center on questions about how embodied agents—human or
			artificial—develop and sustain identity and agency across time and changing environments.
		</p>
		<p>
			Existing theories describe how agents are socially classified or self-identify, but offer
			incomplete accounts of the processes through which a sense of self stabilizes or shifts.
			Working at the intersection of philosophy of mind and cognitive science, I'm drawn to
			analytic and mechanistic approaches, drawing on computational modeling when it sharpens
			explanatory questions.
		</p>
	</section>

	<section>
		<h2 id="research-lines">Research Lines</h2>

		<div class="research-line">
			<h3>Identity as Process</h3>
			<p>
				My thesis work argues that gender identity is best understood as a dynamically stabilized
				regulatory process rather than a static property or social designation. Drawing on
				dynamical systems theory, I treat transgender embodiment as a high-information case
				that reveals how identity patterns can destabilize, reorganize, and cohere under
				affective and social perturbation.
			</p>
			<p class="status">
				<span class="label">Status:</span> Manuscript in preparation
			</p>
		</div>

		<div class="research-line">
			<h3>AI and Identity Attribution</h3>
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

	<section>
		<h2 id="approach">Approach</h2>
		<p>
			I treat theoretical frameworks as tools rather than commitments—dynamical systems theory,
			embodied cognition, and computational modeling are useful insofar as they sharpen explanatory
			questions. Trans experience figures in my work as a methodological resource and constraint
			on bad theory, not as the sole object of concern. I'm interested in testing philosophical
			claims through implementation where possible.
		</p>
	</section>

	<section>
		<h2 id="areas">Areas</h2>
		<p>
			Primary interests in <strong>philosophy of mind and cognitive science</strong>, especially
			agency and selfhood over time. Secondary interests in <strong>philosophy of AI</strong>,
			particularly questions of individuation and AI-mediated social meaning. I also draw on
			<strong>feminist philosophy and social ontology</strong> as sources of normative constraint
			and as high-information cases for testing theory.
		</p>
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
</style>
