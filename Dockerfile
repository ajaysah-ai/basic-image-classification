FROM python:3.10-slim
WORKDIR /app
RUN apt-get update && apt-get install -y libgomp1
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 7860
CMD ["uvicorn", "app.api:app", "--host", "0.0.0.0", "--port", "7860"]
