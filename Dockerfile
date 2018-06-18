FROM node:8.11.3-alpine
LABEL maintainer osvaldo.tulini@gmail.com

ENV ANGULAR_CLI 6.0.8
ENV FIREBASE_TOOLS 3.18.6

# Install angular-cli
RUN npm install -g @angular/cli@${ANGULAR_CLI} && \
    ng config -g cli.packageManager yarn
 
# Install firebase tools
RUN npm install -g firebase-tools@${FIREBASE_TOOLS}


