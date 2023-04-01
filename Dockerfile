FROM python:alpine3.17

COPY app.py /web/
COPY requirements.txt /web

WORKDIR /web

RUN pip install -r requirements.txt

ARG VCS_REF # you could give this a default value as well
ENV VCS_REF=$VCS_REF


# Command to run when the image starts
CMD ["python", "/web/app.py"]