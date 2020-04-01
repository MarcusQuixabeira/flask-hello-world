FROM python:3.7-stretch
COPY . /app
EXPOSE 5000
WORKDIR /app
ENV FLASK_APP=app.py
RUN pip install -r requirements.txt
CMD ["flask", "run", "--host", "0.0.0.0"]