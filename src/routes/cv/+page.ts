import { cv } from '$lib/cv';
import type { PageLoad } from './$types';

export const prerender = true;

export const load: PageLoad = () => {
	return { cv };
};
