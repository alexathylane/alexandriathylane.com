// TypeScript interfaces for CV data
// These match the structure in src/data/cv.yaml

export interface CVMeta {
	name: string;
	email: string;
	website: string;
	linkedin?: string;
	orcid?: string;
	last_updated: string;
}

export interface Advisor {
	name: string;
	department: string;
}

export interface GraduateCoursework {
	course: string;
	instructor: string;
	term: string;
}

export interface Thesis {
	title: string;
}

export interface Education {
	institution: string;
	degree: string;
	field: string;
	date: string;
	gpa?: string;
	honors?: string;
	minor?: string;
	thesis?: Thesis;
	advisors?: Advisor[];
	graduate_coursework?: GraduateCoursework[];
}

export interface Fellowship {
	title: string;
	organization: string;
	date: string;
}

export interface Experience {
	title: string;
	organization?: string;
	date: string;
	bullets?: string[];
}

export interface ServiceItem {
	title: string;
	organization?: string;
	date: string;
}

export interface Author {
	name: string;
	self?: boolean;
}

export interface Venue {
	name: string;
	type?: string;
	date: string;
}

export interface Publication {
	title: string;
	authors?: Author[];
	venue?: string;
	location?: string;
	date?: string;
	acceptance_rate?: string;
	venues?: Venue[];
}

export interface Publications {
	refereed_proceedings: Publication[];
	interactivity_demos: Publication[];
	in_preparation: Publication[];
}

export interface CVData {
	meta: CVMeta;
	areas: string[];
	education: Education[];
	fellowships: Fellowship[];
	research_experience: Experience[];
	teaching_experience: Experience[];
	industry_experience: Experience[];
	service: ServiceItem[];
	publications: Publications;
	presentations: Publication[];
}
