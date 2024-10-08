FROM --platform=linux/amd64 python:3.9

WORKDIR /code
# App setup
COPY ./app /code

# Requirements installation
RUN pip install -r requirements.txt
RUN chmod +x /code/entrypoint.sh

#COPY ./entrypoint.sh /
#ENTRYPOINT ["entrypoint.sh"]
#CMD ["python manage.py runserver"]