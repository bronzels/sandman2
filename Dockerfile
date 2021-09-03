FROM harbor.my.org:1080/base/py/sandman

COPY start.sh /start.sh
RUN chmod a+x /start.sh

COPY requirements.txt /requirements.txt
COPY setup.py /setup.py
ADD sandman2 /sandman2
COPY README.rst /README.rst
WORKDIR /
RUN pip install -r requirements.txt
RUN python setup.py install
