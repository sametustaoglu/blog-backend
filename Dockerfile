FROM python:3.7.3
LABEL maintainer="sametustaoglu"
ENV PYTHONUNBUFFERED 1
RUN mkdir /Backend
WORKDIR /Backend
COPY . /Backend/
RUN pip install -r requirements.txt

EXPOSE 8000
ENV LC_ALL=en_US.UTF8
CMD ["python", "manage.py", "makemigrations"]
CMD ["python", "manage.py", "migrate"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


