export interface Resume {
	personal: {
		name: { zh: string; en: string };
		title: { zh: string; en: string };
		bio: { zh: string; en: string };
		location: string;
		email: string;
		links: { label: string; url: string; icon: string }[];
	};
	skills: {
		category: { zh: string; en: string };
		items: string[];
	}[];
	projects: {
		name: string;
		description: { zh: string; en: string };
		tech: string[];
		url?: string;
		github?: string;
		image?: string;
	}[];
	experience: {
		company: string;
		title: { zh: string; en: string };
		period: string;
		description: { zh: string; en: string };
		highlights: { zh: string; en: string }[];
	}[];
}

// 占位数据，后续替换为真实内容
export const resume: Resume = {
	personal: {
		name: { zh: "你的名字", en: "Your Name" },
		title: { zh: "全栈工程师", en: "Full-Stack Engineer" },
		bio: {
			zh: "专注于构建优雅的用户体验，兼具设计感与产品思维",
			en: "Focused on building elegant user experiences with design sense and product thinking",
		},
		location: "Shanghai, China",
		email: "your@email.com",
		links: [
			{
				label: "GitHub",
				url: "https://github.com/yourusername",
				icon: "github",
			},
			{
				label: "LinkedIn",
				url: "https://linkedin.com/in/yourusername",
				icon: "linkedin",
			},
		],
	},
	skills: [
		{
			category: { zh: "前端", en: "Frontend" },
			items: ["React", "TypeScript", "Next.js", "Tailwind CSS"],
		},
		{
			category: { zh: "后端", en: "Backend" },
			items: ["Node.js", "PostgreSQL", "Redis", "Docker"],
		},
		{
			category: { zh: "工具", en: "Tools" },
			items: ["Git", "Figma", "VS Code", "Vercel"],
		},
	],
	projects: [
		{
			name: "Project Name",
			description: {
				zh: "项目描述",
				en: "Project description",
			},
			tech: ["React", "TypeScript", "Tailwind"],
			url: "https://example.com",
			github: "https://github.com/yourusername/project",
		},
	],
	experience: [
		{
			company: "Company Name",
			title: { zh: "全栈工程师", en: "Full-Stack Engineer" },
			period: "2023 - Present",
			description: {
				zh: "工作描述",
				en: "Job description",
			},
			highlights: [
				{ zh: "成就 1", en: "Achievement 1" },
				{ zh: "成就 2", en: "Achievement 2" },
			],
		},
	],
};
