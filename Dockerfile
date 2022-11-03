FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
  apt-get install -y gcc python-dev libkrb5-dev -y && \
  apt-get install software-properties-common -y && \
  apt-get install python3-pip -y && \
  pip3 install --trusted-host files.pythonhosted.org --trusted-host pypi.org --trusted-host pypi.python.org --upgrade pip   && \
  pip3 install --trusted-host files.pythonhosted.org --trusted-host pypi.org --trusted-host pypi.python.org --upgrade virtualenv  
  #pip3 install --trusted-host files.pythonhosted.org --trusted-host pypi.org --trusted-host pypi.python.org pywinrm[kerberos]  && \
  #apt install krb5-user -y && \
  #pip3 install --trusted-host files.pythonhosted.org --trusted-host pypi.org --trusted-host pypi.python.org pywinrm && \
  #pip3 install --trusted-host files.pythonhosted.org --trusted-host pypi.org --trusted-host pypi.python.org ansible ansible-core==2.10
  #apt-get install ansible -y