# 16 is the LTS version so it'd be pog
FROM node:16-alpine

EXPOSE 5000

COPY . .

RUN npm install -g serve

RUN npm install && npm run build

CMD ["npm", "start"]
# Then run the build and 
# docker run -it -p 5000:5000 <name> sh
# serve -s -l 5000 build