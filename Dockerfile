FROM node:10.16.3

#Create working directory
WORKDIR /usr/devops-assesment

#Install git 
RUN sudo apt-get install git

#Clone the project
RUN git clone https://github.com/cm-tcser/ng-dev.git .

#Install dependencies
RUN npm install

#Install http -server
RUN npm install -g http-server

#Build the project
RUN ng build --prod

#Change Directory to dist folder
RUN cd dist

#Start the server
RUN http-server -p 4200


