FROM python:2.7  

RUN apt-get install python
RUN apt-get update && apt-get install -y python-tk


WORKDIR /Index  
COPY . /Index 
RUN pip install -r requirements.txt 

ENTRYPOINT ["python", "Index.py"]

