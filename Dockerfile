FROM node:22.5-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy Prisma schema directory
# COPY prisma ./prisma/

# Copy the rest of the application
COPY . .

# # Generate Prisma client
# RUN npx prisma generate

# # Run Prisma migration or pull (ensure the database is reachable)
# RUN npx prisma db pull

# Expose port 9000
EXPOSE 9000

# Start the Node.js application
CMD ["npm", "start"]







# FROM node:22.5-alpine

# # # Base image
# # FROM node:14-alpine
# # Set working directory
# WORKDIR /app
# # Copy package.json and package-lock.json
# COPY package*.json ./
# # Install dependencies
# RUN npm install


# # Copy the Prisma schema directory
# COPY prisma ./prisma/

# RUN npx prisma db pull

# # Generate Prisma client
# RUN npx prisma generate
# # Copy the rest of the application
# COPY . .


# # # Expose port 6000
# EXPOSE 9000

# # Start the Node.js application
# CMD ["npm", "start"]
