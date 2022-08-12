FROM tensorflow/tensorflow:2.5.1

COPY requirements.txt /
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --no-cache-dir -r /requirements.txt

COPY . /app
WORKDIR /app

EXPOSE 5000
CMD [ "python" , "app.py"]
