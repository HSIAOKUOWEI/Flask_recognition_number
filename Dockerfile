# 基於官方 Python 執行環境建立我們的鏡像
FROM python:3.8-slim-buster

# 設定工作目錄
WORKDIR /app

# 將當前目錄下的所有內容複製到鏡像的 /app 目錄下
ADD . /app

# 通過 pip 安裝需要的套件
RUN pip install --no-cache-dir -r requirements.txt

# 告訴 Docker 我們的應用程式會在這個端口上運行
EXPOSE 5000

# 啟動 Flask 應用程式
CMD ["python", "app.py"]
