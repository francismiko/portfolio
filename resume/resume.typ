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
	block(breakable: true)[
		#grid(
			columns: (1fr, auto),
			align: (left, right),
			{
				text(font: ("Didot", "STFangsong"), size: 13pt, weight: "bold")[#title]
				if subtitle != "" { h(8pt); text(fill: charcoal, size: 9pt)[#subtitle] }
				if location != "" { h(6pt); text(fill: charcoal, size: 8.5pt)[#location] }
			},
			text(size: 8.5pt, fill: charcoal)[#period],
		)
		#if url != none {
			v(1pt)
			text(size: 8pt, fill: charcoal)[#link(url)]
		}
		#v(6pt)
		#set par(leading: 1em, spacing: 1.6em)
		#set list(spacing: 12pt)
		#body
	]
	v(14pt)
}

#let project-label(title: "", url: none) = {
	v(6pt)
	{
		text(size: 8.5pt, weight: "bold", fill: terra)[项目 1 · ]
		text(font: ("Didot", "STFangsong"), size: 9pt, weight: "bold")[#title]
		if url != none { h(8pt); text(size: 7.5pt, fill: terra)[#link(url)] }
	}
	v(4pt)
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
	[独立创业经历，一个月完成 MVP 并上线，两周内 *DAU 200+*、*付费转化 6%*，兼具产品直觉与工程执行力],
	[搭建 *AI Coding 自动化研发管道*，以 Agent 驱动研发全流程，独立开发效率对标 *3-5 人团队*],
	[践行 *Embossed Minimalism* 设计哲学，追求克制、留白与极致的产品细节],
)

#section("专业技能")
#text(size: 9pt)[TypeScript 全栈，React / Next.js / Node.js / Python 为主力技术栈：]
#v(3pt)
#skill-line("AI 工程化", ("Multi-Agents 架构", "RAG", "Prompt Engineering", "Function Calling"))
#v(2pt)
#skill-line("系统设计", ("高可用服务架构", "Serverless & Edge Computing", "WebSocket & SSE 实时通信", "微服务拆分与治理"))
#v(2pt)
#skill-line("数据架构", ("PostgreSQL", "MongoDB", "向量数据库", "Embedding & 向量检索", "Redis 缓存策略", "数据迁移与多环境管理"))
#v(2pt)
#skill-line("工程治理", ("Docker", "Kubernetes", "CI/CD", "Monorepo", "全链路可观测性"))

#section("AI 工作流")
#text(size: 9pt)[Claude Code / Codex / OpenClaw 重度实践者，日均 Token 消耗 *2 亿+*（\~\$200），AI 贯穿研发全流程：]
#v(3pt)
#list(
	[搭建文档驱动的 AI 研发体系——以 Obsidian 知识库沉淀架构决策与技术选型，降低试错成本，确保每次落地方向可控],
	[构建 GitHub + Linear 自动化研发管道，实现 Issue 分派、Agent 编码、自动提交 PR、Agent Code Review 的端到端自动化],
	[搭建 AI 输出质量的 A/B Test 评估体系，驱动 Prompt 与模型策略的数据化迭代],
	[将 AI 自动化延伸至增长环节，搭建出海场景下的自动化内容生产与营销分发链路],
)

#section("创业经历")

#entry(title: "Metasight 元见", subtitle: "创始人 & 独立开发者", period: "2025.11 — 至今", url: "https://metasight.cloud")[
	传统命理应用滞后，Z 世代市场缺口明显。独立完成 AI 命理顾问从 0 到 1 的研发与商业化，注册 *2000+*、付费 *150+*、MRR *¥5000+*，纯自然流量。

	- 设计上坚持 Embossed Minimalism，大量留白，信息层级靠秩序建立，不靠装饰
	- 自研历法计算引擎，排盘、大运流年、十神等确定性命理数据直接算出；再以加权平均算法将传统命理口诀量化为结构化数据注入 AI 上下文——模型只在解读层发力，幻觉大幅压缩
	- AI Vibe Coding 独立完成全栈研发，覆盖算法、前后端、支付对接与全球边缘部署；一个月上线，两周内 DAU 破 *200*，验证了 AI 研发工作流的单人交付能力
	- 针对繁体中文市场做多语言 SEO，Google「AI 命理」排名第 *6*，Bing 日均曝光 *200+*；观猹新品榜连续一周第一，获多名金牌 Hunter 好评
]

#section("工作经历")

#entry(title: "杭州环界云有限公司", subtitle: "全栈工程师", period: "2025.08 — 2025.11", location: "杭州", url: "https://fastgpt.io")[
	#text(weight: "bold", fill: terra)[项目：FastGPT] — RAG 与可视化工作流驱动的开源 AI Agent 构建平台（22k+ Stars），面向企业知识库应用场景
	#v(5pt)
	#text(fill: terra, weight: "bold")[项目背景：]FastGPT 从母公司 Sealos 独立拆分成立，团队专注企业级 AI 应用开发平台方向。产品以开源社区验证了 PMF，彼时正向 ToB 商业化快速扩张，同步推进核心工作流引擎的架构升级。
	#v(4pt)
	#text(fill: terra, weight: "bold")[项目任务：]双线并行推进：独立负责头部企业客户的 AI 应用定制化交付；主导平台 Chat 工作流向 Agent 工作流的核心架构升级。
	#v(4pt)
	#text(fill: terra, weight: "bold")[工作内容]
	#v(3pt)
	_ToB 企业定制交付_
	- 独立承接海康威视、齐鲁制药、华润啤酒等头部企业定制化需求，负责从需求评审到生产上线的完整交付链路
	- 针对不同企业数据特性深度调优检索算法与文档分片策略；对接 Excel / PDF / CSV 多格式数据源，按需完成 OCR 定制化解析
	- 在集群化私有部署场景下，为企业独立搭建内部专用向量数据库，保障数据不出域；对敏感业务数据实施脱敏处理，满足企业合规要求
	#v(3pt)
	_Chat→Agent 工作流升级_
	- 主导 Chat 工作流向 Agent 工作流的架构升级：将分散的工具节点与对话节点逻辑统一，同步将知识库从独立节点整合进 Agent 上下文，降低工作流搭建复杂度
	- 自研*无损上下文压缩技术*，以文件驱动的形式实现 AI 按需加载记忆
	- 设计*多智能体异步通信机制*，支撑复杂任务的并行拆解与协同执行
	- 搭建 *Deep Research SOP* 工作流，在知识库检索场景中达到业内 SOTA 水平
	#v(4pt)
	#text(fill: terra, weight: "bold")[项目成果]
	- 工作流节点数量减少 *22%*，日常场景搭建复杂度显著下降
	- FastGPT 2.0 大版本发布，ToC 月活环比提升 *68%*，ToB MRR 突破 *100 万*
]

#line(length: 100%, stroke: 0.4pt + rule-color)

#entry(title: "杭州迪萌科技有限公司", subtitle: "AI 项目研发主管", period: "2024.03 — 2025.06", location: "杭州", url: "https://deamoy.ai")[
	#text(weight: "bold", fill: terra)[项目：Deamoy AI] — 多 Agent 协作驱动的 AI 生成式设计平台，兼具生成速度与 Figma 级可视化精修能力
	#v(5pt)
	#text(fill: terra, weight: "bold")[项目背景：]v0 兴起，Lovable 随即以爆发式增长验证了 AI 设计工具的 PMF。公司此前以 Go 云原生技术栈构建传统 CMS 低代码平台 UIPaaS，MVP 过于臃肿难以落地，迭代陷入停滞。行业转型节点已至，方向尚未明确。我主动向创始人提出 AI 转型路径，推动了公司向 AI Native 方向的战略决策。
	#v(4pt)
	#text(fill: terra, weight: "bold")[项目任务：]带领 *4 名 AI 研发团队成员*，与 Infra 团队紧密协作，持续迭代平台 AI 能力与产品功能；推动全员 AI 认知建设，搭建 AI 自动化工作流以实现降本增效。核心目标：在有限时间窗口内为公司构建技术壁垒，争取融资机会。
	#v(4pt)
	#text(fill: terra, weight: "bold")[工作内容]
	#v(3pt)
	_多 Agent 生成引擎_
	- 设计并实现完整的多 Agent 协作流水线：*Plan 层*（UI 设计系统 Agent + 产品框架叙事 Agent 并行运行，产出设计约束与内容框架）→ *生成层*（基于 Plan 指导逐 Section 生成 UI 页面）→ *收敛层*（专属 Agent 校验全局产出一致性，解决跨 Section 冲突）；各位置均择优选用该任务的 SOTA 模型（UI 设计用 Claude，写作用 GPT-4o，边缘任务用 Qwen）
	- 开创性地将*多线程并行*引入 AI 流式输出，一个完整页面的多个 Section 并发生成，突破高并发流式数据的 IO 瓶颈；结合组件库抽象 *UI 原语*，降低 Token 消耗并约束输出风格，实现同期竞品 *10 倍以上*渲染效率
	- 主导 4 人团队，开创 *AI JSON Render 引擎*：基于键值对粒度直接驱动 UI 渲染，无需等待完整组件声明闭合即可呈现界面，消除传统 Vibe Coding 工具的白屏等待，成为产品渲染速度领先同期竞品的核心技术壁垒
	#v(3pt)
	_实时协作与工程化_
	- 带领团队解决 *AI 实时协作一致性*难题，基于 Ydoc 协议处理用户行为与 Agent 并发编辑的冲突，首创 Ydoc 流式输出协议，将渲染延迟降至*毫秒级*，支撑单页面*百人 + AI 并行协作*
	- 设计 *UIML* 语义中间层，借鉴 Vue / Angular 模板语法，完成 JSON ↔ Ydoc 协议的双向转译，大幅压缩冗余 token 开销；内嵌轻量级 *ESM Runtime*，支持 CDN Link 与 XML 资源引入，打通外部工程化复用链路
	- 深入研究 Figma Plugin Sandbox 与 Framer CRDT 机制，自研基于 *iframe* 的画布渲染引擎，实现 AI 编辑与可视化编辑的双向无损同步
	- 设计基于文件系统的混合检索 RAG，实现跨会话级页面自动索引与 AI 上下文按需加载，显著减少模型幻觉，提升多页面协作下的生成稳定性
	#v(3pt)
	_AIGC 与设计克隆_
	- 带领团队落地 *AIGC 物料中台*：基于 Flux 模型实现文生图 / 图生图编辑，接入 Runway / Seedance 视频生成能力，作为平台物料资产沉淀，同步打通 Agent 多模态生成链路
	- 主导*网页克隆 Agent*：以 Python 微服务爬虫引擎结合页面快照，实现设计系统智能提取与像素对齐克隆，Agent 可在分钟内从头复刻一套成熟网站的设计风格
	#v(3pt)
	_团队赋能_
	- 配合运维小组，借助 K8s 实现 AI 网关自动弹性扩容、负载均衡与容灾 fallback，通过心跳保活机制实时监控 AI 服务可用性
	- 对全员持续开展 AI Coding 内训（Copilot → Cursor → Claude Code），第一时间验证 MCP 商业化价值，推动团队 AI 工具链的快速迭代更新
	#v(4pt)
	#text(fill: terra, weight: "bold")[项目成果]
	- *Product Hunt 日榜第二*，产品获国际市场认可
	- 一个月内完成完整 MVP 交付，成功推动全公司 *10 人团队*向 AI Native 全面转型
	- 自研 JIT 渲染技术成为产品核心技术壁垒，支撑公司争取到*千万级融资机会*
	- 多项技术专利落地
]

#line(length: 100%, stroke: 0.4pt + rule-color)

#entry(title: "杭州晨风清兴科技有限公司", subtitle: "AI 全栈工程师", period: "2023.04 — 2024.02", location: "杭州", url: "https://www.askstring.com")[
	#text(weight: "bold", fill: terra)[项目：AskString AI] — LLM 多步推理驱动的企业数据洞察平台，以自然语言替代 SQL，面向非技术决策层
	#v(5pt)
	#text(fill: terra, weight: "bold")[项目背景：]ChatGPT 爆火后，Text-to-SQL 技术涌现，但早期产品存在结构性矛盾：不懂 SQL 的用户无法精准表述需求，而懂 SQL 的工程师根本不需要自然语言查询。AskString 的目标是打破这道壁垒——让营销、运营等非技术管理层，能做专业数据分析师才能完成的多跳聚合查询与因果根因分析。
	#v(4pt)
	#text(fill: terra, weight: "bold")[项目任务：]4 人团队的唯一工程师，与 CMU 机器学习背景的 CEO 直接协作，双人分工明确：CEO 负责算法设计与理论构想，我负责全部工程落地。从 AI 推理引擎到基础设施再到质量体系，独立承担产品从 0 到上线的完整技术栈建设。
	#v(4pt)
	#text(fill: terra, weight: "bold")[工作内容]
	#v(3pt)
	_AI 推理引擎_
	- 落地 *LLM Function Sandbox* 架构：用户问题 → LLM 多步任务分解 → Serverless Python 沙箱（Railway）执行 → 结果回流驱动下一步推理；基于 *ReAct 模式*（执行 → 观察 → 反思），实现 DFS 式数据发散探索，最终收敛至因果根因
	- Python 数据处理层经 *FastAPI* 输出结构化 JSON，驱动前端图表渲染，将复杂聚合查询结果转化为管理层可直接阅读的图表与仪表盘
	#v(3pt)
	_提示词工程体系_
	- 采用*元提示词*策略，以方法论驱动替代执行模板——向 LLM 注入数据分析师的思维范式，训练其主动拆解查询颗粒度，而非机械遵循固定步骤
	- 搭建*自动化提示词迭代评估管道*：多场景 A/B benchmark 择优 → AI 自动生成优化版本 → 以最优 case 为基线持续迭代，循环超 *100 轮*；针对早期模型自举能力的局限，在自动化迭代后介入人工调优，完成边缘场景的最后一公里兜底
	#v(3pt)
	_基础设施_
	- 零运维背景下，借助 AI 联网检索快速建立知识体系，独立搭建 *GitHub Actions + Docker Compose* 全自动化 CI/CD，以统一 CLI 脚本替代多平台手动操作
	- 落地 OAuth SSO，复用企业客户 AWS / Google 身份体系，打通企业数据仓库接入与运营数据同步
	- 对接 *Stripe* 年费订阅席位制，构建 dev → preview → prod 三环境严格隔离体系
	#v(3pt)
	_质量保障_
	- 用 *Playwright* 编写覆盖完整用户旅程的 E2E 自动化测试管道（Landing Page → 注册登录 → 核心功能 → 退出），多套用户故事场景并行，边缘情况全覆盖
	- 将埋点指标与测试数据接入自建 *LLM 评估管道*，自动分析性能与 UX 问题并上报飞书；落地生产环境 Bug 自动检测与热修复；通过 LLM 自动追溯 Bug 至具体提交，直接在 GitHub Issue 中 \@提交者
	#v(4pt)
	#text(fill: terra, weight: "bold")[项目成果]
	- 产品 *2023 年 6 月*上线，*ARR \$100k+* 美元；获国内知名投资机构*百万美元天使轮*
	- *10+ 家*海外企业客户，主要为管理层用户，\$200 / 席位 / 年订阅
	- 节省专职运维开支，生产环境保障 *24/7 可用性 99%+*
]

#section("教育背景")
#grid(
	columns: (1fr, auto),
	align: (left, right),
	{ text(font: ("Didot", "STFangsong"), size: 10pt, weight: "bold")[苏州大学应用技术学院] + h(8pt) + text(size: 9pt)[计算机科学与技术 · 全日制本科 · CET-4] },
	text(size: 8.5pt, fill: muted)[2020.09 — 2024.06],
)

#section("AI 技术哲学")
#text(font: "LXGW WenKai", size: 9pt, style: "italic")[
	#set par(leading: 1.4em)
	当 Agent 能自动完成从编码到审查的完整链路，人类的价值不是退场，而是被逼回最本质的位置——判断、审美与决策。AI 越强大，人的主体性越不可让渡。我的实践是：将确定性的执行交给 AI，将不确定性的判断留给自己。最后一公里的合并权不是流程形式，而是对产品质量与方向的最终承诺。
]
