FROM python:3.10
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
COPY . /code/
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8000"]