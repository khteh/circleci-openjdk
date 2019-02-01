FROM circleci/openjdk:11.0.1-jdk-node
MAINTAINER Kok How, Teh <funcoolgeek@gmail.com>
RUN sudo apt update -y
RUN sudo apt install -y apt-transport-https
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
RUN sudo curl -s -o /usr/local/bin/aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.11.5/2018-12-06/bin/linux/amd64/aws-iam-authenticator
RUN sudo chmod +x /usr/local/bin/aws-iam-authenticator
RUN echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
RUN sudo apt update -y
RUN sudo apt install -y kubectl python-pip
RUN sudo pip install awscli
#ENTRYPOINT ["run.sh"]
CMD ["bash"]
