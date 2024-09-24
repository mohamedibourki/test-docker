# Use the official Node.js image
FROM node:18

# Install Bun.js
RUN curl -fsSL https://bun.sh/install | bash

# Set the working directory
WORKDIR /app

# Copy package files
COPY package.json bun.lockb ./

# Install dependencies
RUN bun install

# Copy the rest of the application
COPY . .

# Expose the port
EXPOSE 3000

# Run the application
CMD ["bun", "index.ts"]