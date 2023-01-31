# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Set environment variables
ENV OPENAI_API_KEY=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
ENV MONGO_URI=mongodb+srv://ross:Brain1990!@gpt.wt1prxq.mongodb.net/GPT

# Specify the command to run when the container starts
CMD ["npm", "run", "dev"]
