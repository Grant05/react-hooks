FROM node:10.11.0-alpine as build-deps
RUN mkdir /app
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY . /app
RUN yarn
EXPOSE 80
ENV NODE_ENV production
ENV PORT 80
RUN yarn build

FROM mesosphere/aws-cli
COPY --from=build-deps /app/build .
CMD ["s3", "sync", "./", "s3://react-hooks"]

# FROM nginx:1.12-alpine
# COPY --from=build-deps /app/build /usr/share/nginx/html
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]