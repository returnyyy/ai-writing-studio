# AI网文工作室 NexusWrite

像素风写作战斗系统 — 像玩游戏一样写小说。

## 在线预览

https://bvmilpmazmm5w.ok.kimi.link

## 本地部署（3步）

### 方式1：双击启动（推荐，无需安装）

1. 下载右侧 Releases 中的 `dist.zip`
2. 解压，进入 `dist` 文件夹
3. 双击 `start.bat`（Windows）或 `start.ps1`（Mac/Linux）

### 方式2：GitHub Pages（永久在线）

在本地命令行运行以下 3 条命令：

```bash
# 第1步：clone 仓库
git clone https://github.com/returnyyy/ai-writing-studio.git
cd ai-writing-studio

# 第2步：下载并解压 dist 文件
# 从右侧 Releases 下载 dist.zip 并解压到当前文件夹
# 确保 index.html 和 assets/ 文件夹在当前目录下

# 第3步：push 到 gh-pages 分支
git checkout --orphan gh-pages
git rm -rf .
git add index.html assets/ *.png start.bat start.ps1
git commit -m "deploy to gh-pages"
git push origin gh-pages --force
```

然后到仓库 Settings > Pages > Source 选择 `gh-pages` 分支，即可在线访问。

### 方式3：Python/Node 服务器

```bash
cd dist
python -m http.server 8080
# 浏览器打开 http://localhost:8080
```

## 功能

- 像素风园区主界面（开罗游戏风格）
- 写作战斗系统（打字=攻击怪物）
- 章节切换（从整备室细纲自动解析）
- AI 一键仿写 + 七维审核
- 扩写/润色/AI 审核面板
- 整备室（书籍配置管理）
- 图书馆（网文公式存储）
- Habitica 任务系统
- AI 配置接口（支持 Kimi/GPT/Claude/DeepSeek/Gemini）
- 手动/自动模型切换

## 技术栈

React + TypeScript + Tailwind CSS + Vite + HashRouter

## AI 控制核心

- 四层 Prompt 权重金字塔（10/20/30/40%）
- 三级字数硬控制（目标 2000 字 ±5%）
- 七维度审核引擎（人设/金手指/爽点/剧情/钩子/文笔/节奏）
- 风格 DNA 提取
- 三层口袋记忆系统
- 七大提示词模板
