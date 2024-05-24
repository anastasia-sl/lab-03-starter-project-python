FROM python:buster
WORKDIR /app
COPY . .
RUN python -m venv venv
RUN venv/bin/pip install -r requirements/backend-freeze.in
CMD ["venv/bin/uvicorn", "spaceship.main:app", "--host=0.0.0.0", "--port=8080"]