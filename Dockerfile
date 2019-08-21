FROM node:10.16.3

#Create working directory
WORKDIR /usr/devops-assesment

#Install git 
RUN apt-get install git

#Clone Project
RUN git clone https://github.com/cm-tcser/ng-dev.git .

#List file
RUN ls -ltr
#Install dependencies
RUN npm install

#Install  angular cli
RUN npm install -g @angular/cli

#Install http -server
RUN npm install -g http-server

#EXPOSE 
EXPOSE 4200

#Build the project
#RUN ng build --prod
CMD ["npm","start"]

#Change Directory to dist folder
#RUN cd dist

#list files
#RUN ls -ltr 

#Expose port
#EXPOSE 4200

#Start the server
#RUN http-server -p 4200


