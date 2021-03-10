FROM tensorflow/tensorflow:latest-gpu-jupyter

WORKDIR /

ADD . /

RUN pip3 install -r requirements.txt

ENV NAME Dogidentification

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]