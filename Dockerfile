# Lightweight Node.js base image
FROM node:18-alpine

# Create working directory
WORKDIR /app

# Copy dependency file
COPY package.json ./

# Install production dependencies
RUN npm install --production

# Copy service files
COPY . .

# Expose service port
EXPOSE 3000

# Run the service
CMD ["npm", "start"]