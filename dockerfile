# First Install Nodejs parent or base image.
FROM node:latest

# Install Nodemon
RUN npm i -g nodemon

# SET WORKING DIRECTORY
WORKDIR /src

# Now write COPY <SOURCE: MEANS WHERE IS YOUR CODE . MEANS ROOT DIRECTORY> <DESTINATION: MEANS WHERE YOU WANT TO INSERT YOUR CODE IN YOUR IMAGE . MEANS IN ROOT DIRECTORY>
COPY . .

# Install all dependencies and node_modules
RUN npm i

# ASSIGN PORT NUMBER TO THIS APP
EXPOSE 5500

# TO RUN THIS PROJECT IN COMMAND LINE
CMD ["npm", "run","start"]

# To Create Image of this Project write this command on terminal
# docker build -t basic-node-project.

# To Create a Volume of a Project
# docker run --name <container-name> -p <port number:port number> --rm -v <copy path>:<working dir name> <image name>
# docker run --name basic-container -p 5500:5500 --rm -v C:\Users\hashamuddin\Downloads\docker-node-image:/app basic-node-project