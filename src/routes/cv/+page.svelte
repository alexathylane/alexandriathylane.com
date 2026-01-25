<script lang="ts">
	import type { PageData } from './$types';
	import { renderAuthorsHtml } from '$lib/cv';

	let { data }: { data: PageData } = $props();
	const { cv, publications, presentations } = data;
</script>

<svelte:head>
	<title>CV | Alexandria Thylane</title>
	<meta name="description" content="Academic CV for Alexandria Thylane - philosopher of mind and cognitive scientist." />
</svelte:head>

<article class="cv container">
	<h1>Curriculum Vitae</h1>

	<div class="cv-download">
		<a href="/alexandria-thylane-cv.pdf" download class="cv-button">Download PDF</a>
		<p class="cv-updated">Last updated {cv.meta.last_updated}</p>
	</div>

	<section>
		<h2 id="education">Education</h2>
		{#each cv.education as edu}
			<div class="cv-entry">
				<div class="cv-header">
					<span class="cv-title">{edu.institution}</span>
					<span class="cv-date">{edu.date}</span>
				</div>
				<p>{edu.degree}, {edu.field}{#if edu.honors} — {edu.honors}{/if}</p>
				{#if edu.gpa}
					<p class="cv-detail">GPA: {edu.gpa}</p>
				{/if}
				{#if edu.thesis}
					<p class="cv-detail">Independent Thesis: {edu.thesis.title}</p>
				{/if}
				{#if edu.advisors}
					<p class="cv-detail">Advisors: {edu.advisors.map(a => `${a.name} (${a.department})`).join(' & ')}</p>
				{/if}
				{#if edu.graduate_coursework}
					<p class="cv-detail">Graduate Coursework (CUNY Graduate Center):</p>
					<ul class="cv-bullets">
						{#each edu.graduate_coursework as course}
							<li>{course.course} — {course.instructor} ({course.term})</li>
						{/each}
					</ul>
				{/if}
				{#if edu.minor}
					<p class="cv-detail">Minor in {edu.minor}</p>
				{/if}
			</div>
		{/each}
	</section>

	<section>
		<h2 id="fellowships-honors">Fellowships & Honors</h2>
		<ul class="cv-list">
			{#each cv.fellowships as fellowship}
				<li>
					<span class="cv-item">{fellowship.title}</span>
					<span class="cv-meta">{fellowship.organization}, {fellowship.date}</span>
				</li>
			{/each}
		</ul>
	</section>

	<section>
		<h2 id="research-experience">Research Experience</h2>
		{#each cv.research_experience as exp}
			<div class="cv-entry">
				<div class="cv-header">
					<span class="cv-title">{exp.title}</span>
					<span class="cv-date">{exp.date}</span>
				</div>
				{#if exp.organization}
					<p class="cv-org">{exp.organization}</p>
				{/if}
				{#if exp.bullets}
					<ul class="cv-bullets">
						{#each exp.bullets as bullet}
							<li>{bullet}</li>
						{/each}
					</ul>
				{/if}
			</div>
		{/each}
	</section>

	<section>
		<h2 id="teaching-experience">Teaching Experience</h2>
		{#each cv.teaching_experience as exp}
			<div class="cv-entry">
				<div class="cv-header">
					<span class="cv-title">{exp.title}</span>
					<span class="cv-date">{exp.date}</span>
				</div>
				{#if exp.organization}
					<p class="cv-org">{exp.organization}</p>
				{/if}
				{#if exp.bullets}
					<ul class="cv-bullets">
						{#each exp.bullets as bullet}
							<li>{bullet}</li>
						{/each}
					</ul>
				{/if}
			</div>
		{/each}
	</section>

	<section>
		<h2 id="industry-experience">Industry Experience</h2>
		{#each cv.industry_experience as exp}
			<div class="cv-entry">
				<div class="cv-header">
					<span class="cv-title">{exp.title}</span>
					<span class="cv-date">{exp.date}</span>
				</div>
				{#if exp.organization}
					<p class="cv-org">{exp.organization}</p>
				{/if}
				{#if exp.bullets}
					<ul class="cv-bullets">
						{#each exp.bullets as bullet}
							<li>{bullet}</li>
						{/each}
					</ul>
				{/if}
			</div>
		{/each}
	</section>

	<section class="publications">
		<h2 id="publications">Publications</h2>

		<h3 id="refereed-proceedings">Refereed Conference Proceedings</h3>
		<ul class="pub-list">
			{#each publications.refereed_proceedings as pub}
				<li>
					<p class="pub-title">{pub.title}</p>
					{#if pub.authors}
						<p class="pub-authors">{@html renderAuthorsHtml(pub.authors)}</p>
					{/if}
					{#if pub.venue}
						<p class="pub-venue">{pub.venue}. {pub.location}.</p>
					{/if}
					{#if pub.acceptance_rate}
						<p class="pub-note">Acceptance Rate: {pub.acceptance_rate}</p>
					{/if}
				</li>
			{/each}
		</ul>

		<h3 id="interactivity-demos">Interactivity Demos</h3>
		<ul class="pub-list">
			{#each publications.interactivity_demos as pub}
				<li>
					<p class="pub-title">{pub.title}</p>
					{#if pub.authors}
						<p class="pub-authors">{@html renderAuthorsHtml(pub.authors)}</p>
					{/if}
					{#if pub.venue}
						<p class="pub-venue">{pub.venue}. {pub.location}. {pub.date}.</p>
					{/if}
				</li>
			{/each}
		</ul>

		<h3 id="in-preparation">Manuscripts in Preparation</h3>
		<ul class="pub-list">
			{#each publications.in_preparation as pub}
				<li>
					<p class="pub-title">{pub.title}</p>
				</li>
			{/each}
		</ul>
	</section>

	<section class="presentations">
		<h2 id="presentations">Presentations</h2>
		<ul class="pub-list">
			{#each presentations as pres}
				<li>
					<p class="pub-title">{pres.title}</p>
					{#if pres.venues && pres.venues.length === 1}
						<p class="pub-venue">{pres.venues[0].name}</p>
						<p class="pub-note">{pres.venues[0].date}</p>
					{:else if pres.venues && pres.venues.length > 1}
						<ul class="venue-list">
							{#each pres.venues as venue}
								<li>{#if venue.type}{venue.type}, {/if}{venue.name} <span class="pub-date">{venue.date}</span></li>
							{/each}
						</ul>
					{/if}
				</li>
			{/each}
		</ul>
	</section>

	<section>
		<h2 id="service-engagement">Service & Engagement</h2>
		<ul class="cv-list">
			{#each cv.service as item}
				<li>
					<span class="cv-item">{item.title}</span>
					<span class="cv-meta">{#if item.organization}{item.organization}, {/if}{item.date}</span>
				</li>
			{/each}
		</ul>
	</section>
</article>

<style>
	.cv {
		max-width: var(--max-width);
	}

	.cv-download {
		margin-bottom: var(--space-xl);
	}

	.cv-button {
		display: inline-block;
		padding: var(--space-sm) var(--space-lg);
		background: var(--accent-purple);
		color: var(--bg-primary);
		border-radius: 4px;
		font-weight: 500;
		transition: opacity var(--transition-fast);
	}

	.cv-button:hover {
		opacity: 0.9;
	}

	.cv-updated {
		margin-top: var(--space-sm);
		font-size: 0.85rem;
		color: var(--text-muted);
	}

	.cv-entry {
		margin-bottom: var(--space-lg);
	}

	.cv-header {
		display: flex;
		justify-content: space-between;
		flex-wrap: wrap;
		gap: var(--space-sm);
		margin-bottom: var(--space-xs);
	}

	.cv-title {
		font-weight: 600;
	}

	.cv-date {
		color: var(--text-secondary);
		font-size: 0.9rem;
	}

	.cv-org {
		color: var(--accent-purple);
		margin-bottom: var(--space-xs);
	}

	.cv-detail {
		color: var(--text-secondary);
		font-size: 0.95rem;
		margin-bottom: var(--space-xs);
	}

	.cv-bullets {
		margin-top: var(--space-sm);
		padding-left: var(--space-lg);
	}

	.cv-bullets li {
		color: var(--text-secondary);
		font-size: 0.95rem;
	}

	.cv-list {
		list-style: none;
		padding: 0;
	}

	.cv-list li {
		display: flex;
		justify-content: space-between;
		flex-wrap: wrap;
		gap: var(--space-sm);
		padding: var(--space-sm) 0;
		border-bottom: 1px solid var(--bg-tertiary);
	}

	.cv-list li:last-child {
		border-bottom: none;
	}

	.cv-item {
		font-weight: 500;
	}

	.cv-meta {
		color: var(--text-secondary);
		font-size: 0.9rem;
	}

	.pub-list {
		list-style: none;
		padding: 0;
	}

	.pub-list > li {
		margin-bottom: var(--space-lg);
		padding-bottom: var(--space-lg);
		border-bottom: 1px solid var(--bg-tertiary);
	}

	.pub-list > li:last-child {
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
