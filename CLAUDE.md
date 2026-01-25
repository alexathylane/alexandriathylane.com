# Claude Code Context

Personal academic website for Alexandria Thylane. SvelteKit static site deployed on Vercel.

> Full documentation in [README.md](README.md)

## Common Tasks

### Update CV content (fellowship, job, publication, etc.)

Edit `src/data/cv.yaml` — this is the single source of truth for both website and PDF.

**Sections in cv.yaml:**
- `education` — degrees, thesis, advisors, coursework
- `fellowships` — awards and honors
- `research_experience`, `teaching_experience`, `industry_experience`
- `service` — service and engagement
- `publications.refereed_proceedings` — published conference papers
- `publications.interactivity_demos` — demos with published abstracts
- `publications.in_preparation` — manuscripts in progress
- `presentations` — talks and posters (separate from publications per academic convention)

**Author highlighting:** Use `self: true` to bold Alexandria's name:
```yaml
authors:
  - name: "Thylane, A."
    self: true
  - name: "Korpan, R."
```

**After editing:** Push to main. GitHub Action rebuilds PDF automatically.

### Change PDF styling

Edit `templates/cv.typ` (Typst, not LaTeX).

```bash
# Test locally
typst compile --root . templates/cv.typ static/alexandria-thylane-cv.pdf
```

The `--root .` flag is required because the template references `../src/data/cv.yaml`.

### Add a new page

1. Create `src/routes/pagename/+page.svelte`
2. Add link to `src/lib/components/Nav.svelte`
3. Include `<svelte:head>` with title and meta description

### Update research interests

Edit the `areas` array in `src/data/cv.yaml`. This populates both CV and Research pages.

### Change site styling

- **Global styles/colors:** `src/app.css` (CSS custom properties)
- **Component styles:** `<style>` block in each `.svelte` file
- **Theme:** Uses `data-theme` attribute on `<html>`, toggle in `ThemeToggle.svelte`

## Architecture Notes

- **Static site:** All data resolved at build time. No server-side code.
- **CV data flow:** `cv.yaml` → imported by `src/lib/cv.ts` → consumed by page load functions
- **PDF generation:** GitHub Action runs Typst on push to cv.yaml or cv.typ

## Files by Purpose

| Purpose | File(s) |
|---------|---------|
| CV data | `src/data/cv.yaml` |
| CV types | `src/lib/types/cv.ts` |
| PDF template | `templates/cv.typ` |
| CV page | `src/routes/cv/+page.svelte` |
| Research page | `src/routes/research/+page.svelte` |
| Home page | `src/routes/+page.svelte` |
| Navigation | `src/lib/components/Nav.svelte` |
| Global styles | `src/app.css` |
| PDF rebuild workflow | `.github/workflows/build-cv.yml` |
