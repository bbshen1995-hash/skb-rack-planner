#!/bin/zsh
# 從主版本重建公開版（拿掉只屬於本人的標記）並推上 GitHub Pages
cd "$(dirname "$0")"
( cd ~/Downloads/skb-rack-planner && PUBLIC=1 OUT="$HOME/Downloads/機櫃裝機模擬器-build/index.html" ./build.sh ) || { echo "建置失敗，沒有推送"; exit 1; }
git add -A
git commit -m "更新機櫃裝機模擬器 $(date '+%Y-%m-%d %H:%M')" || echo "沒有變更"
git push
echo "完成，約一分鐘後生效：https://bbshen1995-hash.github.io/skb-rack-planner/"
