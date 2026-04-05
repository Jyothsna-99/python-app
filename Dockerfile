FROM python:3.13.3-slim
COPY requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt
COPY ./src/ /src
EXPOSE 5001
CMD ["python3", "/src/app.py"]