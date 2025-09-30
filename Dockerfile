# 베이스 이미지
FROM python:1.13-slim

# 작업 폴더
WORKDIR /app

# 종속성 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 전체 프로젝트 복사
COPY . .

# FLASK 환경변수 설정
ENV FLASK_APP=pybo:creare_app
ENV FLASK_ENV=production

# 포트 지정
EXPOSE 5000

# 앱 실행
CMD ["flask run", "-- host=0.0.0.0"]
