# Use image with ruby, Node.js, npm, and yarn
FROM timbru31/ruby-node:latest

# Grab dependencies
WORKDIR /app
COPY . /app

# Install nodemon and webrick
# RUN npm install -g nodemon
RUN bundle add webrick

# Expose port 4000
EXPOSE 8080

# Start jekyll server
CMD ["bundle", "exec", "jekyll", "serve", "-o", "-H", "0.0.0.0", "-P", "8080"]
