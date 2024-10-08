FROM node:18 as frontend-builder
WORKDIR /app/frontend
COPY chatbot-frontend/package*.json ./
RUN npm install
COPY chatbot-frontend/ ./
RUN npm run build

FROM node:18 as backend-builder
WORKDIR /app/backend
COPY chatbot-backend/package*.json ./
RUN npm install
COPY chatbot-backend/ ./
RUN npm run build

FROM node:18-slim
WORKDIR /app
COPY --from=backend-builder /app/backend/dist ./dist
COPY --from=backend-builder /app/backend/package*.json ./
COPY --from=frontend-builder /app/frontend/build ./public
RUN npm install --only=production
EXPOSE 3000
CMD ["node", "dist/server.js"]