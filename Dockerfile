#FROM circleci/openjdk:11.0.2-jdk-node
FROM circleci/openjdk:latest
MAINTAINER Kok How, Teh <funcoolgeek@gmail.com>
RUN sudo apt update -y
RUN sudo apt install -y apt-transport-https
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
RUN sudo curl -s -o /usr/local/bin/aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.13.7/2019-06-11/bin/linux/amd64/aws-iam-authenticator
RUN sudo chmod +x /usr/local/bin/aws-iam-authenticator
RUN sudo curl -sL -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/1.15.0/bin/darwin/amd64/kubectl
RUN sudo chmod +x /usr/local/bin/kubectl
RUN sudo apt install -y python-pip
RUN sudo pip install awscli
#ENTRYPOINT ["run.sh"]
CMD ["bash"]
