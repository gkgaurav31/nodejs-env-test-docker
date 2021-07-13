FROM node

# Open SSH for Azure
RUN apt-get update && apt-get install -y ssh
RUN echo "root:Docker!" | chpasswd
RUN mkdir /run/sshd
COPY sshd_config /etc/ssh/

# Copy resources
WORKDIR /app
COPY package*.json ./

# Run install
RUN npm install
COPY . .

# Copy startup script and make it executable
COPY startup.sh /app
RUN ["chmod", "+x", "/app/startup.sh"]
ENTRYPOINT [ "/app/startup.sh" ]