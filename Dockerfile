FROM node:20 AS base

### <JANGAN DIGANTI>
ARG STUDENT_NAME
ARG STUDENT_NIM

ENV NUXT_STUDENT_NAME=${STUDENT_NAME}
ENV NUXT_STUDENT_NIM=${STUDENT_NIM}
### </JANGAN DIGANTI>

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start"]
