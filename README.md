# alexandriathylane.com

Personal academic website for Alexandria Thylane — philosopher of mind working on identity, embodiment, and AI.

**Live:** https://alexandriathylane.com

## Tech Stack

- **Framework:** SvelteKit 2 with static adapter
- **Language:** TypeScript
- **Styling:** CSS custom properties, dark/light themes
- **Hosting:** Vercel (auto-deploy from GitHub)

---

## Quick Start

```bash
# Install dependencies
npm install

# Start dev server (http://localhost:5173)
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview

# Type checking
npm run check
```

---

## Project Structure

```
alexandriathylane.com/
├── src/
│   ├── app.css                 # Global styles & CSS variables
│   ├── app.d.ts                # TypeScript declarations
│   ├── app.html                # HTML template
│   ├── lib/
│   │   └── components/
│   │       ├── Nav.svelte      # Navigation header
│   │       ├── Footer.svelte   # Site footer with contact links
│   │       └── ThemeToggle.svelte  # Dark/light mode switch
│   └── routes/
│       ├── +layout.svelte      # Root layout (Nav + Footer wrapper)
│       ├── +layout.ts          # Enables prerendering
│       ├── +page.svelte        # Home page
│       ├── cv/+page.svelte     # CV page
│       ├── research/+page.svelte
│       ├── publications/+page.svelte
│       └── projects/+page.svelte
├── static/
│   ├── headshot.jpg            # Profile photo
│   ├── alexandria-thylane-cv.pdf
│   ├── favicon.svg
│   └── robots.txt              # SEO config (blocks AI crawlers)
├── build/                      # Production output (gitignored)
├── svelte.config.js            # SvelteKit configuration
├── vite.config.ts              # Vite configuration
├── tsconfig.json               # TypeScript configuration
└── package.json
```

---

## Architecture

```
┌─────────────────────────────────────────────────────────────────┐
│                        Development                               │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│   src/routes/*.svelte  ──►  SvelteKit  ──►  Vite Dev Server     │
│                              (SSG)           localhost:5173      │
│                                                                  │
├─────────────────────────────────────────────────────────────────┤
│                        Production                                │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│   npm run build                                                  │
│        │                                                         │
│        ▼                                                         │
│   ┌─────────────┐    ┌─────────────┐    ┌──────────────────┐   │
│   │   Svelte    │───►│   Static    │───►│     Vercel       │   │
│   │  Components │    │    HTML     │    │   CDN + Edge     │   │
│   └─────────────┘    │  /build/    │    └──────────────────┘   │
│                      └─────────────┘             │               │
│                                                  ▼               │
│                                    alexandriathylane.com         │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

---

## Pages

| Route | Purpose |
|-------|---------|
| `/` | Home — intro, current roles, background, engagement |
| `/research` | Research lines: identity, AI, cognitive architecture |
| `/publications` | Academic papers, presentations |
| `/cv` | Curriculum vitae with PDF download |
| `/projects` | Technical and research projects |
| External: `notes.alexandriathylane.com` | Digital garden |

---

## Styling System

### Color Palette

```css
/* Dark Mode (Default) */
--bg-primary: #0a0a0a;
--bg-secondary: #141414;
--bg-tertiary: #1e1e1e;
--text-primary: #f0f0f0;
--text-secondary: #a0a0a0;
--accent-purple: #9b6dff;
--accent-blue: #6ba3ff;

/* Light Mode */
--bg-primary: #fafafa;
--text-primary: #1a1a1a;
--accent-purple: #7b4ddf;
```

### Typography

- **Headers:** Cormorant Garamond (serif)
- **Body:** Inter (sans-serif)
- **Code:** System monospace

### Theme Toggle

- Stored in `localStorage`
- Respects `prefers-color-scheme` on first visit
- Sets `data-theme` attribute on `<html>`

---

## Configuration Files

| File | Purpose |
|------|---------|
| `svelte.config.js` | SvelteKit config: static adapter, strict mode |
| `vite.config.ts` | Vite build config |
| `tsconfig.json` | TypeScript: strict mode, bundler resolution |
| `static/robots.txt` | Allows search engines, blocks AI training crawlers |

---

## Deployment

**Automatic:** Push to `main` branch triggers Vercel deployment.

**Manual:**
```bash
npm run build
vercel --prod
```

**Domain:** `alexandriathylane.com` configured in Vercel dashboard.

---

## Development Notes

### Adding a New Page

1. Create `src/routes/pagename/+page.svelte`
2. Add to nav links array in `src/lib/components/Nav.svelte`
3. Include `<svelte:head>` with title and meta description

### Modifying Styles

Global CSS variables are in `src/app.css`. Component-specific styles use `<style>` blocks in `.svelte` files.

### Email Obfuscation

Email addresses are constructed via JavaScript to prevent scraping:
```javascript
function openEmail() {
  const user = 'contact';
  const domain = 'alexandriathylane.com';
  window.location.href = `mailto:${user}@${domain}`;
}
```

---

## Related Projects

- **Digital Garden:** https://github.com/alexathylane/alexandriathylane-notes
- **Live Notes:** https://notes.alexandriathylane.com
