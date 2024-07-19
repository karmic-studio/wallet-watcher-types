FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the application code
COPY . .

# Command to run the application
CMD ["yarn", "dev"]