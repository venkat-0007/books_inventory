FROM python:3.8-slim-buster

ADD . .
RUN pip install -r requirements.txt
# RUN python db_connect.py

COPY . .
EXPOSE 5000
CMD [ "python", "app.py", "--host=0.0.0.0"]
