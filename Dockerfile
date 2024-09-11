FROM python:3.9

# App setup
ADD ./app /code
WORKDIR /code

# Requirements installation
RUN pip install -r requirements.txt
RUN chmod +x /code/entrypoint.sh

#COPY ./entrypoint.sh /
#ENTRYPOINT ["entrypoint.sh"]
#CMD ["python manage.py runserver"]