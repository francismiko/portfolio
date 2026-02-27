// ─────────────────────────────────────────────
//  Terracotta — 暖调大地色
//  灵感: Aesop 品牌 / 赤陶器物
//  暖棕底色条 + 烧赭点缀 + 人文质感
// ─────────────────────────────────────────────

#let terra = rgb("#B85C38")
#let charcoal = rgb("#2D2926")
#let muted = rgb("#6B6460")
#let warm-bg = rgb("#F5F0EB")
#let rule-color = rgb("#D4CBC2")

#set page(paper: "a4", margin: (top: 42pt, bottom: 38pt, left: 52pt, right: 52pt))
#set text(font: ("Charter", "STFangsong"), size: 9.5pt, fill: charcoal, lang: "zh")
#set par(justify: true, leading: 0.78em, spacing: 0.88em)
#set list(marker: text(fill: terra, size: 5pt, baseline: 2.6pt)[●], indent: 0pt, body-indent: 7pt, spacing: 9pt)
#show link: it => text(fill: charcoal)[#it]

#let section(title) = {
	v(10pt)
	block(
		width: 100%,
		inset: (x: 0pt, y: 0pt),
	)[
		#grid(
			columns: (auto, 1fr),
			column-gutter: 10pt,
			align: (left, horizon),
			block(
				fill: warm-bg,
				inset: (x: 8pt, y: 4pt),
			)[
				#text(font: ("Didot", "STFangsong"), size: 8.5pt, tracking: 0.12em, fill: charcoal)[#upper(title)]
			],
			line(length: 100%, stroke: 0.4pt + rule-color),
		)
	]
	v(4pt)
}

#let entry(title: "", subtitle: "", period: "", location: "", url: none, body) = {
	block(breakable: false)[
		#grid(
			columns: (1fr, auto),
			align: (left, right),
			{
				text(font: ("Didot", "STFangsong"), size: 13pt, weight: "bold")[#title]
				if subtitle != "" { h(8pt); text(fill: muted, size: 9pt)[#subtitle] }
				if location != "" { h(6pt); text(fill: muted, size: 8.5pt)[#location] }
			},
			text(size: 8.5pt, fill: muted)[#period],
		)
		#if url != none {
			v(1pt)
			text(size: 8pt, fill: muted)[#link(url)]
		}
		#v(6pt)
		#set par(leading: 1em, spacing: 1.6em)
		#set list(spacing: 7pt)
		#body
	]
	v(14pt)
}

#let project-entry(title: "", subtitle: "", url: none, body) = {
	{
		text(font: ("Didot", "STFangsong"), size: 9.5pt, weight: "bold")[#title]
		if subtitle != "" { h(6pt); text(fill: muted, size: 8.5pt)[#subtitle] }
		if url != none { h(8pt); text(size: 7.5pt, fill: terra)[#link(url)] }
	}
	v(3pt)
	body
	v(8pt)
}

#let skill-line(name, items) = {
	grid(
		columns: (56pt, 1fr),
		align: (left, horizon),
		text(size: 8.5pt, weight: "bold", fill: terra)[#name],
		text(size: 8.5pt, fill: charcoal)[#items.join("  ·  ")],
	)
}

// ━━━ HEADER ━━━

#block(
	width: 100%,
	fill: warm-bg,
	inset: (x: 16pt, y: 10pt),
)[
	#grid(
		columns: (1fr, auto),
		column-gutter: 20pt,
		align: (left + horizon, right),
		{
			text(font: "Didot", size: 26pt, weight: "regular", tracking: 0.1em, fill: charcoal)[Francis]
			h(4pt)
			text(font: "STFangsong", size: 22pt, fill: charcoal)[范挚铖]
			v(4pt)
			linebreak()
			text(size: 8pt, tracking: 0.15em, fill: muted)[AI 产品设计者 #h(14pt) 杭州]
			v(4pt)
			linebreak()
			text(size: 7.5pt, fill: muted)[
				zhichengfan18\@gmail.com
				#h(8pt) · #h(8pt)
				+86 15150377902
				#h(8pt) · #h(8pt)
				#link("https://github.com/francismiko")[github.com/francismiko]
			]
		},
		box(clip: true, width: 72pt, height: 72pt, image("avatar.jpg", width: 72pt)),
	)
]

#v(4pt)
#line(length: 100%, stroke: 0.6pt + terra)

// ━━━ CONTENT ━━━

#section("个人简介")
#list(
	[*3 年* AI 产品研发经验，主导过多个 AI 原生产品从 *0 到 1* 的架构设计与落地交付],
	[*TypeScript 全栈*，擅长在不确定性中快速验证方案并推进落地，以结构化决策与自动化管道保障交付质量],
	[独立创业经历，一个月完成 MVP 并上线，两周内 *DAU 200+*、*SaaS 转化率 5%*，兼具产品直觉与工程执行力],
	[搭建 *AI Coding 自动化研发管道*，以 Agent 驱动研发全流程，独立开发效率对标 *3-5 人团队*],
	[践行 *Embossed Minimalism* 设计哲学，追求克制、留白与极致的用户体验],
)

#section("专业技能")
#text(size: 9pt)[TypeScript 全栈，React / Next.js / Node.js / Python 为主力技术栈：]
#v(3pt)
#skill-line("AI 工程化", ("Multi-Agents 架构", "RAG", "Prompt Engineering", "Function Calling", "Embedding & 向量检索", "LLM 应用性能调优"))
#v(2pt)
#skill-line("系统设计", ("高可用服务架构", "Serverless & Edge Computing", "WebSocket & SSE 实时通信", "微服务拆分与治理"))
#v(2pt)
#skill-line("数据架构", ("PostgreSQL", "MongoDB", "向量数据库", "Redis 缓存策略", "数据迁移与多环境管理"))
#v(2pt)
#skill-line("工程治理", ("Docker", "Kubernetes", "CI/CD", "Monorepo", "全链路可观测性"))

#section("AI 工作流")
#text(size: 9pt)[Claude Code / OpenClaw 重度实践者，日均 Token 消耗 *2 亿+*（\~\$200），AI 贯穿研发全流程：]
#v(3pt)
#list(
	[搭建文档驱动的 AI 研发体系——以 Obsidian 知识库沉淀架构决策与技术选型，降低试错成本，确保每次落地方向可控],
	[构建 GitHub + Linear 自动化研发管道，实现 Issue 分派、Agent 编码、自动提交 PR、Agent Code Review 的端到端自动化],
	[搭建 AI 输出质量的 A/B Test 评估体系，驱动 Prompt 与模型策略的数据化迭代],
	[将 AI 自动化延伸至增长环节，搭建出海场景下的自动化内容生产与营销分发链路],
)

#section("项目")

#project-entry(title: "Metasight 元见", subtitle: "独立创业", url: "https://metasight.cloud")[
	AI 数字命理顾问，一个月完成 MVP 上线。纯自然流量，注册 *2000+*、UV *3000+*、转化率 *6%*、MRR *¥5000+*。
]
#project-entry(title: "FastGPT", subtitle: "开源贡献 · 22k+ Stars", url: "https://github.com/labring/FastGPT")[
	企业级 AI Agent 构建平台，主导 Agent 节点架构设计，搭建 *Deep Research SOP* 工作流。
]
#project-entry(title: "Deamoy AI", subtitle: "PH 日榜第二", url: "https://deamoy.ai")[
	AI 协同设计平台，协同系统支持*千人同时在线*设计。
]
#project-entry(title: "AskString AI", url: "https://www.askstring.com")[
	对话式 AI 数据分析平台，以自然语言驱动数据查询与可视化，对接多家企业客户。
]

#section("工作经历")

#entry(title: "杭州环界云有限公司", subtitle: "全栈工程师", period: "2025.08 — 2025.11", location: "杭州", url: "https://fastgpt.io")[
	参与开源项目 *FastGPT*（*22k+ Stars*）核心功能研发。基于 RAG 与可视化工作流编排的企业级 AI Agent 构建平台。

	#text(fill: terra, weight: "bold")[核心职责：]
	- 主导工作流 Agent 节点的架构设计与开发，构建可扩展的智能体执行框架
	- 自研*无损上下文压缩技术*，以文件驱动的形式实现 AI 按需加载记忆
	- 设计*多智能体异步通信机制*，支撑复杂任务的并行拆解与协同执行
	- 搭建 *Deep Research SOP* 工作流，在知识库检索场景中达到业内 *SOTA* 水平

	#text(fill: terra, weight: "bold")[项目成果：] FastGPT 2.0 大版本发布，ToC 月活环比提升 *68%*，ToB MRR 突破 *100 万*
]

#line(length: 100%, stroke: 0.4pt + rule-color)

#entry(title: "杭州迪萌科技有限公司", subtitle: "AI 工程师", period: "2024.03 — 2025.06", location: "杭州", url: "https://deamoy.ai")[
	主导 Deamoy AI 低代码站点设计平台 AI 核心功能研发。

	#text(fill: terra, weight: "bold")[AI 核心能力建设：]
	- 基于 *Multi-Agents 架构*设计 AI 协同设计系统，实现多智能体协作的站点生成与迭代
	- 实现 *AI JSON Render UI 渲染引擎*，benchmark 超越 v0/Lovable
	- 首创 *UIML 语法体系*，支持条件渲染、循环、插槽等动态特性

	#text(fill: terra, weight: "bold")[平台架构：]
	- 自研基于 iframe 的画布渲染引擎，实现设计稿到代码的双向同步
	- 搭建 Nest.js 微服务后端 + Monorepo 前端工程体系

	#text(fill: terra, weight: "bold")[项目成果：] *Product Hunt 日榜第二*，平台支撑数千用户在线设计，获多项技术专利
]

#line(length: 100%, stroke: 0.4pt + rule-color)

#entry(title: "杭州晨风清兴科技有限公司", subtitle: "AIGC 研发工程师", period: "2023.04 — 2024.02", location: "杭州", url: "https://www.askstring.com")[
	负责 AskString AI 对话式数据分析平台的 AI 对话引擎与数据可视化模块研发。

	- 基于 Langchain 构建 *Text-to-SQL* 对话引擎，搭建 *RAG 知识库*检索系统
	- 设计数据可视化组件库（图表、仪表盘、数据透视表），主导 Prompt 优化

	#text(fill: terra, weight: "bold")[项目成果：] 覆盖多表联查、聚合分析等复杂场景，对接*多家企业客户*
]

#section("教育背景")
#grid(
	columns: (1fr, auto),
	align: (left, right),
	{ text(font: ("Didot", "STFangsong"), size: 10pt, weight: "bold")[苏州大学应用技术学院] + h(8pt) + text(size: 9pt)[计算机科学与技术 · 全日制本科 · CET-4] },
	text(size: 8.5pt, fill: muted)[2020.09 — 2024.06],
)

#v(1fr)

#section("AI 技术哲学")
#text(font: "LXGW WenKai", size: 9pt, style: "italic")[
	#set par(leading: 1.4em)
	当 Agent 能自动完成从编码到审查的完整链路，人类的价值不是退场，而是被逼回最本质的位置——判断、审美与决策。AI 越强大，人的主体性越不可让渡。我的实践是：将确定性的执行交给 AI，将不确定性的判断留给自己。最后一公里的合并权不是流程形式，而是对产品质量与方向的最终承诺。
]
