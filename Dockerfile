# Step 1: Use a base image
FROM node:14

# Step 2: Create a working directory
WORKDIR /app

# Step 3: Copy package.json and install dependencies
COPY package.json .
RUN npm install

# Step 4: Copy the rest of the application code
COPY . .

# Step 5: Expose the port the app runs on
EXPOSE 3000

# Step 6: Define the command to run the application
CMD ["npm", "start"]
