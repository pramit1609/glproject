FROM python:3.9-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install gunicorn
EXPOSE 5000
ENTRYPOINT ["gunicorn", "flsk:app", "-b", "0.0.0.0:5000"]
