FROM civisanalytics/datascience-python

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ Asia/Taipei

RUN apt-get update \
 && apt-get -y install tzdata

COPY ./inv_check_daily_prediction/requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

CMD ["python","/inv_check_daily_prediction/main.py"]