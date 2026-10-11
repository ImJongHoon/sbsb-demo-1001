FROM node:18-slim

# Create app directory
WORKDIR /app

# Copy package manifests first to leverage layer caching and install deterministically
COPY package.json package-lock.json ./

ENV NODE_ENV=production
RUN npm ci --only=production

# Copy application source
COPY . .

# Ensure runtime files are owned by non-root user and switch to that user
RUN chown -R node:node /app
USER node

# Application listens on 8000 by default
ENV PORT=8000
EXPOSE 8000

# Start the app
CMD ["npm", "start"]
