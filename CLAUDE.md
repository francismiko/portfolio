<meta>
context: portfolio site
scope: Astro + React + Tailwind v4
style: Luxury Editorial
lang: zh default, en supported
</meta>

<stack>
framework: Astro 5, React 19
styling: Tailwind CSS v4, custom CSS
fonts: Playfair Display (serif) + Inter (sans)
pkg: bun
i18n: zh/en dual-lang via src/i18n/ui.ts
data: src/content/resume.ts
</stack>

<design-system>
# Luxury Editorial Style

## colors
bg: #F9F8F6 (Warm Alabaster) | ✗ #FFFFFF
bg-muted: #EBE5DE (Pale Taupe)
fg: #1A1A1A (Rich Charcoal) | ✗ #000000
fg-muted: #6C6863 (Warm Grey)
accent: #D4AF37 (Metallic Gold) | use sparingly
dark-section: bg #1A1A1A, text #F9F8F6

## typography
headlines: Playfair Display, text-5xl→text-9xl, leading-[0.9]
body: Inter, text-base→text-lg, leading-relaxed
labels: uppercase, tracking-[0.25em], text-[10px]→text-xs
mixed-italic: "Let's *Connect*" → gold italic on emphasized words

## layout
radius: 0px everywhere | ✗ rounded corners
borders: 1px, border-t preferred over full box
grid: 12-col asymmetric, max-w-[1600px]
spacing: py-20→py-32, generous whitespace
asymmetry: col-start-2, col-start-6, avoid 50/50 splits

## effects
shadows: subtle only, rgba(0,0,0,0.06-0.12)
images: grayscale default → color on hover
transitions: 500ms buttons, 1500ms images | ✗ fast animations
hover: gold accent (#D4AF37) on borders/text
paper-texture: SVG noise overlay 2% opacity

## decorative
vertical-text: writing-mode: vertical-rl, labels on images
grid-lines: fixed vertical lines at 25%/75%, desktop only
section-numbers: 01, 02, 03, 04 before titles
horizontal-lines: h-px w-8→w-12 decorative elements
</design-system>

<rules>
- ✗ rounded corners | 0px radius only
- ✗ pure black/white | use charcoal/alabaster
- ✗ fast animations | min 500ms, images 1500ms
- ✗ gold as primary | accent only for hover/emphasis
- ✗ centered layouts | prefer asymmetric grids
- ✗ tight spacing | generous whitespace always
- border-t for separation | ✗ full box borders
- grayscale images | color reveals on hover
</rules>

<structure>
src/
├── content/resume.ts    # 简历数据 (interface + data)
├── i18n/ui.ts           # 双语翻译
├── layouts/Layout.astro # 全局布局 + fonts
├── pages/index.astro    # 中文首页
├── pages/en/index.astro # 英文首页
├── styles/global.css    # 设计系统 CSS
└── public/images/       # 头像等静态资源
</structure>

<commands>
dev: bun run dev
build: bun run build
</commands>

<browser-automation>
tool: agent-browser (npm install -g agent-browser)
help: agent-browser --help

workflow:
1. open <url> → navigate
2. snapshot -i → get refs (@e1, @e2...)
3. click @e1 / fill @e2 "text" → interact
4. re-snapshot after page changes

common:
- screenshot [path] --full → capture page
- get text/url/title → extract info
- wait <sel|ms> → wait for element/time
- eval <js> → run JavaScript
</browser-automation>
