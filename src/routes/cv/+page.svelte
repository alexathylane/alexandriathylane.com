<svelte:head>
	<title>CV | Alexandria Thylane</title>
	<meta name="description" content="Academic CV for Alexandria Thylane - philosopher of mind and cognitive scientist." />
</svelte:head>

<article class="cv container">
	<h1>Curriculum Vitae</h1>

	<div class="cv-download">
		<a href="/alexandria-thylane-cv.pdf" download class="cv-button">Download PDF</a>
		<p class="cv-updated">Last updated January 2026</p>
	</div>

	<section>
		<h2>Education</h2>
		<div class="cv-entry">
			<div class="cv-header">
				<span class="cv-title">City University of New York (CUNY Baccalaureate)</span>
				<span class="cv-date">Expected Summer 2026</span>
			</div>
			<p>Bachelor of Arts, Mind, Gender, and Artificial Intelligence</p>
			<p class="cv-detail">GPA: 3.92</p>
			<p class="cv-detail">Independent Thesis: 4E/DST Models of Gender Identity</p>
			<p class="cv-detail">Advisors: Dr. Daniel Harris (Philosophy) & Dr. Raj Korpan (Computer Science)</p>
			<p class="cv-detail">Graduate Coursework (CUNY Graduate Center):</p>
			<ul class="cv-bullets">
				<li>Representations, Attitudes, & Persuasion — Eric Mandelbaum (Fall 2025)</li>
				<li>Group Minds — Muhammad Ali Khalidi (Spring 2026)</li>
			</ul>
		</div>

		<div class="cv-entry">
			<div class="cv-header">
				<span class="cv-title">Texas State University</span>
				<span class="cv-date">2015</span>
			</div>
			<p>Bachelor of Arts, Computer Science — Summa Cum Laude</p>
			<p class="cv-detail">Minor in Philosophy</p>
		</div>
	</section>

	<section>
		<h2>Fellowships & Honors</h2>
		<ul class="cv-list">
			<li>
				<span class="cv-item">CUNY Pipeline Fellowship</span>
				<span class="cv-meta">CUNY Graduate Center, 2025–2026</span>
			</li>
			<li>
				<span class="cv-item">Thomas W. Smith Academic Excellence Fellowship</span>
				<span class="cv-meta">CUNY Baccalaureate, 2025–2026</span>
			</li>
			<li>
				<span class="cv-item">The Memorial Scholarship</span>
				<span class="cv-meta">CUNY Baccalaureate, Spring 2025</span>
			</li>
			<li>
				<span class="cv-item">Diane B. Gibson Memorial Fund Award</span>
				<span class="cv-meta">CUNY Baccalaureate, Fall 2025</span>
			</li>
		</ul>
	</section>

	<section>
		<h2>Research Experience</h2>
		<div class="cv-entry">
			<div class="cv-header">
				<span class="cv-title">Research Fellow, CUNY Pipeline Program</span>
				<span class="cv-date">July 2025–Present</span>
			</div>
			<p class="cv-org">CUNY Graduate Center</p>
			<ul class="cv-bullets">
				<li>Selected for competitive doctoral preparation fellowship</li>
				<li>Developing philosophy research proposal on embodied cognition and gender identity</li>
				<li>Presenting capstone research at CUNY Pipeline Symposium (May 2026)</li>
			</ul>
		</div>

		<div class="cv-entry">
			<div class="cv-header">
				<span class="cv-title">Researcher & Lead Architect, Queer Robot Companion Project</span>
				<span class="cv-date">June 2025–Present</span>
			</div>
			<p class="cv-org">TIER Robotics Lab, Hunter College</p>
			<ul class="cv-bullets">
				<li>Led technical architecture and ethical design of a queer-affirming robot companion</li>
				<li>Co-authored peer-reviewed full paper accepted to HRI 2026</li>
				<li>Authored system demonstration paper (currently under review)</li>
			</ul>
		</div>

		<div class="cv-entry">
			<div class="cv-header">
				<span class="cv-title">Undergraduate Researcher</span>
				<span class="cv-date">Fall 2014</span>
			</div>
			<p class="cv-org">Department of Computer Science, Texas State University</p>
			<ul class="cv-bullets">
				<li>Designed initial experimental protocol and detection algorithm to correlate heart rate variability with sleep onset under Dr. Xiao Chen</li>
				<li>Provided proof-of-concept supporting later work published in IEEE MASS 2015</li>
			</ul>
		</div>
	</section>

	<section>
		<h2>Teaching Experience</h2>
		<div class="cv-entry">
			<div class="cv-header">
				<span class="cv-title">Discussion Section Leader, Intro to Women & Gender Studies</span>
				<span class="cv-date">Fall 2024</span>
			</div>
			<p class="cv-org">Hunter College</p>
			<ul class="cv-bullets">
				<li>Led weekly small-group discussion section for first-year students</li>
				<li>Prepared assigned readings, facilitated discussion, and guided structured activities</li>
			</ul>
		</div>
	</section>

	<section>
		<h2>Industry Experience</h2>
		<div class="cv-entry">
			<div class="cv-header">
				<span class="cv-title">Senior Software Engineer</span>
				<span class="cv-date">2021–2023</span>
			</div>
			<p class="cv-org">Apple</p>
			<ul class="cv-bullets">
				<li>Implemented UI/UX improvements for macOS/iOS Music</li>
				<li>Core accessibility features on Apple TV</li>
			</ul>
		</div>

		<div class="cv-entry">
			<div class="cv-header">
				<span class="cv-title">Senior iOS Software Engineer</span>
				<span class="cv-date">2017–2021</span>
			</div>
			<p class="cv-org">Reddit</p>
			<ul class="cv-bullets">
				<li>Led front page feed re-architecture</li>
				<li>Designed and implemented first analytics and unit test frameworks</li>
			</ul>
		</div>
	</section>

	<section>
		<h2>Service & Engagement</h2>
		<ul class="cv-list">
			<li>
				<span class="cv-item">Invited Panelist, Women Speak Pride</span>
				<span class="cv-meta">Hetrick-Martin Institute, March 2025</span>
			</li>
			<li>
				<span class="cv-item">Guest Speaker, Safe Schools Program</span>
				<span class="cv-meta">PFLAG NYC, 2024–2025</span>
			</li>
			<li>
				<span class="cv-item">Founder & Head Organizer, Queer Tech Professionals & Innovators</span>
				<span class="cv-meta">June 2021–present</span>
			</li>
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
</style>
