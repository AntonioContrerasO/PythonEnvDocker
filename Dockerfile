FROM python:3.8

WORKDIR /app
COPY requirements.txt /app/requirements.txt

RUN pip install --disable-pip-version-check --no-cache-dir --trusted-host pypi.org --trusted-host=files.pythonhosted.org --upgrade -r requirements.txt

COPY . /app

CMD ["uvicorn","main:app","--host","0.0.0.0","--port","5000"]