FROM node:10.16.3

# #Create working directory
WORKDIR /usr/devops-assesment

# #Install git 
RUN apt-get install git

# #Clone Project
RUN git config --global http.sslverify false
RUN git clone https://github.com/cm-tcser/ng-dev.git .

# #List file
RUN ls -ltr

# # install bower & git
RUN npm config set strict-ssl false

# add `/app/node_modules/.bin` to $PATH
ENV PATH /usr/devops-assesment/node_modules/.bin:$PATH

# #Install http -server
# RUN npm config set strict-ssl false

# install and cache app dependencies
#COPY package.json /app/package.json
RUN npm install
RUN npm install -g @angular/cli

#Start the server
CMD ng serve --host 0.0.0.0


