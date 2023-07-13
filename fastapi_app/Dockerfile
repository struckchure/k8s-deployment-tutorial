FROM python:3.9.6-alpine

WORKDIR /app/

EXPOSE 8000

COPY . .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD [ "python", "main.py" ]
