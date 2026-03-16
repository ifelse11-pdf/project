FROM python:3.10

WORKDIR / app

COPY requirement.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "-m", "pytest", "tests/"]