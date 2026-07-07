# 部署指南（3步完成）

## 方式1：双击启动（最简单，无需安装任何东西）

1. 下载右侧 **Releases** 中的 `dist.zip`
2. 解压，进入 `dist` 文件夹  
3. **双击 `start.bat`**（Windows）或 **双击 `start.ps1`**（Mac/Linux）

自动打开浏览器，本地访问 `http://localhost:8080`

---

## 方式2：GitHub Pages（永久在线链接）

### 第1步：下载并解压 dist.zip

从右侧 **Releases** 下载 `dist.zip`，解压到任意文件夹。

### 第2步：复制以下命令，粘贴到命令行运行

```bash
# 进入解压后的 dist 文件夹
cd dist

# 初始化 git 并连接仓库
git init
git remote add origin https://github.com/returnyyy/ai-writing-studio.git

# 添加所有文件并推送
git add -A
git commit -m "deploy"
git push -f origin main
```

### 第3步：启用 GitHub Pages

1. 打开 https://github.com/returnyyy/ai-writing-studio
2. 点击 **Settings** → 左侧 **Pages**
3. **Source** 选择 `Deploy from a branch`
4. **Branch** 选择 `main` → `/ (root)`
5. 点击 **Save**

等待 1-2 分钟，访问：
**https://returnyyy.github.io/ai-writing-studio**

---

## 方式3：Python 服务器（本地临时预览）

```bash
cd dist
python -m http.server 8080
# 浏览器打开 http://localhost:8080
```

---

## 方式4：Node.js 服务器

```bash
cd dist
npx http-server -p 8080
# 浏览器打开 http://localhost:8080
```
