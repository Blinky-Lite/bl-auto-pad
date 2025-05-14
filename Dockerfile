FROM nodered/node-red:3.0.2-16
COPY html-static/       /data/html-static/
COPY flows.json         /data/flows.json
COPY flows_cred.json    /data/flows_cred.json
COPY settings.js        /data/settings.js
WORKDIR /usr/src/node-red
RUN npm install node-red-dashboard@3.4.0
RUN npm install @node-red-contrib-themes/theme-collection@3.0.6
RUN npm install node-red-contrib-mongodb3@2.0.1
RUN npm install node-red-node-serialport@2.0.3
RUN npm install node-red-contrib-modbus@5.26.0
RUN npm install node-red-contrib-pythonshell@1.5.4



