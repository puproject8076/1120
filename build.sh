#!/bin/bash
set -e

echo "開始安裝 Python 套件..."
pip install -r requirements.txt

echo "安裝 Playwright 系統相依套件..."
playwright install-deps chromium --with-deps

echo "下載 Chromium 瀏覽器..."
playwright install chromium

echo "建置完成！"