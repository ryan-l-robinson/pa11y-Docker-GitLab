FROM buildkite/puppeteer:latest

# mkdir for the application tests 
RUN mkdir -p /opt/pa11y
WORKDIR /opt/pa11y

# Install pa11y
RUN npm install --global --unsafe-perm pa11y-ci

# Copy config file
COPY / /opt/pa11y/