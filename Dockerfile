FROM python:3.9-alpine
ENV FLASK_APP "services/app.py"
ENV FLASK_RUN_HOST "0.0.0.0"
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements/requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY ./ ./
CMD ["flask", "run"]
