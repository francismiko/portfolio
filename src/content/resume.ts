export interface Resume {
	personal: {
		name: { zh: string; en: string };
		title: { zh: string; en: string };
		bio: { zh: string; en: string };
		avatar?: string;
		location: string;
		email: string;
		phone?: string;
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
	education: {
		school: string;
		degree: { zh: string; en: string };
		period: string;
		achievements?: string[];
	}[];
}

export const resume: Resume = {
	personal: {
		name: { zh: "Francis 范挚铖", en: "Francis 范挚铖" },
		title: { zh: "AI 产品设计者", en: "AI Product Designer" },
		bio: {
			zh: "愿景驱动的 AI 产品设计者。相信技术是表达，设计是思辨。在细节中追求极致，在产品中注入温度。",
			en: "Vision-driven AI product designer. Technology as expression, design as contemplation. Pursuing perfection in details, infusing warmth into products.",
		},
		avatar: "/images/avatar.png",
		location: "Hangzhou, China",
		email: "zhichengfan18@gmail.com",
		phone: "+86 15150377902",
		links: [
			{
				label: "GitHub",
				url: "https://github.com/francismiko",
				icon: "github",
			},
		],
	},
	skills: [
		{
			category: { zh: "产品能力", en: "Product" },
			items: [
				{ zh: "0-1 产品构建", en: "0-1 Product Building" },
				{ zh: "MVP 商业闭环", en: "MVP Business Loop" },
				{ zh: "React", en: "React" },
				{ zh: "Next.js", en: "Next.js" },
				{ zh: "TypeScript", en: "TypeScript" },
			],
		},
		{
			category: { zh: "AI 原生", en: "AI Native" },
			items: [
				{ zh: "AI Vibe Coding", en: "AI Vibe Coding" },
				{ zh: "Multi-Agents", en: "Multi-Agents" },
				{ zh: "RAG", en: "RAG" },
				{ zh: "Prompt Engineering", en: "Prompt Engineering" },
			],
		},
		{
			category: { zh: "设计美学", en: "Design" },
			items: [
				{ zh: "Embossed Minimalism", en: "Embossed Minimalism" },
				{ zh: "克制与留白", en: "Restraint & Whitespace" },
				{ zh: "新拟物态", en: "Neumorphism" },
				{ zh: "液态玻璃", en: "Glassmorphism" },
			],
		},
	],
	projects: [
		{
			name: "Metasight 元见",
			description: {
				zh: "AI 驱动的数字命理顾问。以克制的美学重新诠释东方智慧，成为深夜里那盏陪你倾听与思考的灯。",
				en: "AI-powered digital destiny advisor. Reinterpreting Eastern wisdom with restrained aesthetics—a midnight lamp for listening and reflection.",
			},
			tech: ["Next.js", "TypeScript", "Vercel", "Tailwind", "PostgreSQL"],
			url: "https://metasight.cloud",
		},
		{
			name: "FastGPT",
			description: {
				zh: "企业级开源 AI Agent 构建平台（22k+ Stars）。基于 RAG 与可视化工作流编排，让团队快速搭建知识库驱动的智能应用。",
				en: "Enterprise open-source AI Agent builder (22k+ Stars). RAG-powered with visual workflow orchestration for rapid knowledge-driven AI app development.",
			},
			tech: ["Next.js", "TypeScript", "MongoDB", "PostgreSQL", "Node.js"],
			url: "https://fastgpt.io",
			github: "https://github.com/labring/FastGPT",
		},
		{
			name: "Deamoy AI",
			description: {
				zh: "为设计师打造的 AI 协同设计平台。愿景是成为设计领域的 Cursor——让创意者专注于表达，而非工具的束缚。",
				en: "AI collaborative design platform for designers. Envisioned as the Cursor for design—letting creators focus on expression, not tool constraints.",
			},
			tech: ["React", "Nest.js", "TypeScript", "Docker", "K8s"],
			url: "https://x.com/MKonbing/status/1972561184269455411",
		},
	],
	experience: [
		{
			company: "Metasight 元见",
			title: { zh: "创始人", en: "Founder" },
			period: "2025.11 - 至今",
			description: {
				zh: "独立打造 AI 驱动的数字命理顾问产品，以克制的美学重新诠释东方智慧",
				en: "Building an AI-powered digital destiny advisor, reinterpreting Eastern wisdom with restrained aesthetics",
			},
			highlights: [
				{
					zh: "践行 Embossed Minimalism 设计哲学，以留白与秩序对抗视觉负担",
					en: "Practiced Embossed Minimalism philosophy, using whitespace and order against visual overload",
				},
				{
					zh: "自研八字喜用神算法，融合传统命理与现代 AI 技术",
					en: "Developed proprietary BaZi favorable element algorithm, blending traditional destiny study with modern AI",
				},
				{
					zh: "以 AI Vibe Coding 完成全栈开发，一个月实现 MVP 商业闭环，上线两周 DAU 200+、注册用户破千、国内 SaaS 转化率 5%",
					en: "Full-stack development via AI Vibe Coding, MVP business loop in 1 month, 200+ DAU, 1000+ registered users, 5% SaaS conversion within 2 weeks",
				},
			],
		},
		{
			company: "杭州环界云有限公司",
			title: { zh: "全栈工程师", en: "Full Stack Engineer" },
			period: "2025.08 - 2025.11",
			description: {
				zh: "参与明星开源项目 FastGPT（22k+ Stars）核心功能研发",
				en: "Contributed to core development of FastGPT (22k+ Stars), a leading open-source AI project",
			},
			highlights: [
				{
					zh: "主导 Agent 节点架构设计，构建可扩展的智能体执行框架",
					en: "Led Agent node architecture design, built extensible intelligent agent execution framework",
				},
				{
					zh: "搭建 Deep Research SOP 工作流，实现复杂任务的自动化拆解与执行",
					en: "Built Deep Research SOP workflow, enabling automated decomposition and execution of complex tasks",
				},
				{
					zh: "设计 Context Compression 方案，优化长上下文场景下的模型推理效率",
					en: "Designed Context Compression solution, optimizing model inference efficiency in long-context scenarios",
				},
			],
		},
		{
			company: "杭州迪萌科技有限公司",
			title: { zh: "全栈工程师", en: "Full Stack Engineer" },
			period: "2024.03 - 2025.06",
			description: {
				zh: "主导 Deamoy AI 低代码站点设计平台的 AI 核心功能研发，重新定义人机协同的设计范式",
				en: "Led AI core development for Deamoy, redefining human-AI collaborative design paradigm",
			},
			highlights: [
				{
					zh: "基于 Multi-Agents 架构重新定义 AI 协同设计范式，产品登顶 Product Hunt 日榜前三",
					en: "Redefined AI collaborative design paradigm with Multi-Agents architecture, achieved Product Hunt daily top 3",
				},
				{
					zh: "深入研究 Figma Sandbox 与 Framer CRDT 机制，自研 iframe 画布引擎",
					en: "Deep research into Figma Sandbox and Framer CRDT mechanisms, built custom iframe canvas engine",
				},
				{
					zh: "实现 AI JSON Render UI 渲染引擎，benchmark 超越 v0/Lovable",
					en: "Built AI JSON Render UI engine, benchmark surpassed v0/Lovable",
				},
				{
					zh: "首创 Vue/Angular-like UIML 语法，支持动态 JS Runtime 执行",
					en: "Pioneered Vue/Angular-like UIML syntax with dynamic JS Runtime execution support",
				},
			],
		},
	],
	education: [
		{
			school: "苏州大学应用技术学院",
			degree: {
				zh: "计算机科学与技术 本科",
				en: "B.S. in Computer Science and Technology",
			},
			period: "2020.09 - 2024.06",
		},
	],
};
