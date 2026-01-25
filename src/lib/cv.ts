// CV data loader and helper functions
import cvData from '$data/cv.yaml';
import type { CVData, Author } from '$lib/types/cv';

// Export typed CV data
export const cv = cvData as CVData;

// Helper to format author list for display
// Returns array with isSelf flag for highlighting in templates
export function formatAuthors(authors: Author[]): { name: string; isSelf: boolean }[] {
	return authors.map((a) => ({
		name: a.name,
		isSelf: a.self === true
	}));
}

// Helper to render authors as HTML string with self highlighted
export function renderAuthorsHtml(authors: Author[]): string {
	return authors.map((a) => (a.self ? `<strong>${a.name}</strong>` : a.name)).join(', ');
}
