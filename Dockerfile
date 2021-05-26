FROM python:3.7

RUN mkdir /code

ADD requirements.txt /code/requirements.txt

RUN \
	pip install -r /code/requirements.txt && \
	python -m nltk.downloader punkt && \
	python -m nltk.downloader stopwords && \
	python -m nltk.downloader wordnet
# This is an example for install NTLK and run the downloaders.

ADD . /code/
ENV PYTHONPATH "${PYTHONPATH}:/code"

ADD startup.sh /code/

CMD bash /code/startup.sh