FROM ubuntu:20.04

LABEL "com.github.actions.name"="SSHPASS Github Action"
LABEL "com.github.actions.description"="SSHPASS Github Action"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="black"

RUN apt-get update && apt-get install -y ssh && apt-get install -y sshpass

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
