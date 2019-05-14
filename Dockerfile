FROM python:3.5
USER root

COPY contentful_app/ /app/
WORKDIR /app/
RUN pip3 install -r requirements.txt
EXPOSE 3000
ENTRYPOINT ["python3"]
CMD ["app.py"]
