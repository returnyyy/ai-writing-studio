#!/bin/bash
# AI网文工作室 - 一键部署到 GitHub Pages
set -e

echo "=== AI网文工作室 部署脚本 ==="

if [ ! -d "dist" ]; then
    echo "错误: dist 文件夹不存在"
    echo "请从 Releases 下载 dist.zip 并解压"
    exit 1
fi

cd dist

if [ ! -d ".git" ]; then
    git init
    git checkout -b main 2>/dev/null || true
fi

git add -A
git commit -m "deploy: $(date '+%Y-%m-%d %H:%M:%S')" || true

git remote get-url origin &>/dev/null || git remote add origin "https://github.com/returnyyy/ai-writing-studio.git"

echo "正在推送到 GitHub..."
git push -f origin main

echo ""
echo "=== 部署完成! ==="
echo "请在仓库 Settings > Pages > Source 中选择 main 分支"
echo "访问地址: https://returnyyy.github.io/ai-writing-studio"
