export const languages = {
	zh: "中文",
	en: "English",
} as const;

export const defaultLang = "zh" as const;

export type Lang = keyof typeof languages;

export function getLangFromUrl(url: URL): Lang {
	const [, lang] = url.pathname.split("/");
	if (lang in languages) return lang as Lang;
	return defaultLang;
}

export function useTranslations(lang: Lang) {
	return function t(key: string): string {
		const translations = lang === "zh" ? zh : en;
		return getNestedValue(translations, key) || key;
	};
}

function getNestedValue(obj: Record<string, unknown>, path: string): string {
	const keys = path.split(".");
	let result: unknown = obj;
	for (const key of keys) {
		if (result && typeof result === "object" && key in result) {
			result = (result as Record<string, unknown>)[key];
		} else {
			return path;
		}
	}
	return typeof result === "string" ? result : path;
}

// 翻译内容
const zh = {
	nav: {
		about: "关于",
		skills: "技能",
		projects: "项目",
		experience: "经历",
		education: "教育",
		contact: "联系",
	},
	hero: {
		greeting: "你好，我是",
		title: "全栈工程师",
		bio: "专注于构建优雅的用户体验，兼具设计感与产品思维",
		cta: "了解更多",
	},
	about: {
		title: "关于我",
	},
	skills: {
		title: "技术栈",
	},
	projects: {
		title: "项目",
	},
	experience: {
		title: "工作经历",
	},
	education: {
		title: "教育背景",
	},
	contact: {
		title: "联系我",
	},
	footer: {
		copyright: "版权所有",
	},
	theme: {
		light: "浅色模式",
		dark: "深色模式",
	},
	lang: {
		switch: "切换语言",
	},
};

const en = {
	nav: {
		about: "About",
		skills: "Skills",
		projects: "Projects",
		experience: "Experience",
		education: "Education",
		contact: "Contact",
	},
	hero: {
		greeting: "Hi, I'm",
		title: "Full-Stack Engineer",
		bio: "Focused on building elegant user experiences with design sense and product thinking",
		cta: "Learn More",
	},
	about: {
		title: "About Me",
	},
	skills: {
		title: "Tech Stack",
	},
	projects: {
		title: "Projects",
	},
	experience: {
		title: "Experience",
	},
	education: {
		title: "Education",
	},
	contact: {
		title: "Contact",
	},
	footer: {
		copyright: "All rights reserved",
	},
	theme: {
		light: "Light Mode",
		dark: "Dark Mode",
	},
	lang: {
		switch: "Switch Language",
	},
};
