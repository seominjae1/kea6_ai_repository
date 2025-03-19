# Python 3.9 이미지를 기반으로 시작
FROM python:3.9

# 작업 디렉토리 설정
WORKDIR /app

# 애플리케이션의 종속성 파일을 복사
COPY requirements.txt /app/

# 필요한 패키지 설치
RUN pip install -r requirements.txt

# Flask 애플리케이션 코드 복사
COPY . /app/

# 5000 포트를 열기
EXPOSE 5000

# 앱 실행 명령어
CMD ["python", "app.py"]
