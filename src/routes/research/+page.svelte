<script lang="ts">
	import type { PageData } from './$types';

	let { data }: { data: PageData } = $props();
	const { areas } = data;

	// Split areas into two columns
	const midpoint = Math.ceil(areas.length / 2);
	const areasCol1 = areas.slice(0, midpoint);
	const areasCol2 = areas.slice(midpoint);
</script>

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
				{#each areasCol1 as area}
					<li>{area}</li>
				{/each}
			</ul>
			<ul>
				{#each areasCol2 as area}
					<li>{area}</li>
				{/each}
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
				<span class="label">Status:</span> HRI '26 paper accepted; Interactivity demo accepted
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

	<section class="output-links">
		<h2 id="output">Research Output</h2>
		<p>
			For a complete list of publications and presentations, see my <a href="/cv#publications">CV</a>.
		</p>
		<div class="link-cards">
			<a href="/cv#publications" class="link-card">
				<span class="link-title">Publications</span>
				<span class="link-desc">Conference papers, demos, and manuscripts</span>
			</a>
			<a href="/cv#presentations" class="link-card">
				<span class="link-title">Presentations</span>
				<span class="link-desc">Conference talks and posters</span>
			</a>
		</div>
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

	.output-links p {
		margin-bottom: var(--space-md);
	}

	.link-cards {
		display: grid;
		grid-template-columns: repeat(2, 1fr);
		gap: var(--space-md);
	}

	.link-card {
		display: flex;
		flex-direction: column;
		padding: var(--space-md);
		background: var(--bg-secondary);
		border-radius: 8px;
		border: 1px solid var(--bg-tertiary);
		transition: border-color var(--transition-fast);
	}

	.link-card:hover {
		border-color: var(--accent-purple);
	}

	.link-title {
		font-weight: 600;
		margin-bottom: var(--space-xs);
	}

	.link-desc {
		font-size: 0.9rem;
		color: var(--text-secondary);
	}

	@media (max-width: 500px) {
		.link-cards {
			grid-template-columns: 1fr;
		}
	}
</style>
