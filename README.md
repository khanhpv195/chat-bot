# Chatbot Application

This project is a full-stack chatbot application with a Node.js Express backend and a React frontend.

## Project Structure

```
chatbot-application/
├── chatbot-backend/     # Backend Node.js Express application
├── chatbot-frontend/    # Frontend React application
└── docker-compose.yml   # Docker Compose configuration
```

## Prerequisites

- Node.js (v14 or later)
- npm or Yarn
- Docker and Docker Compose (for containerized deployment)

## Getting Started

### Backend Setup

1. Navigate to the backend directory:

   ```
   cd chatbot-backend
   ```

2. Install dependencies:

   ```
   npm install
   ```

3. Create a `.env` file in the `chatbot-backend` directory and add your OpenAI API key:

   ```
   OPENAI_API_KEY=your_api_key_here
   PORT=3001
   ```

4. Start the backend server:
   ```
   npm run dev
   ```

The backend will be available at `http://localhost:3001`.

### Frontend Setup

1. Navigate to the frontend directory:

   ```
   cd chatbot-frontend
   ```

2. Install dependencies:

   ```
   npm install
   ```

3. Start the frontend development server:
   ```
   npm start
   ```

The frontend will be available at `http://localhost:3000`.

## Docker Deployment

To run the entire application using Docker:

1. Ensure you have Docker and Docker Compose installed.

2. From the root directory, run:
   ```
   docker-compose up --build
   ```

This will build and start both the backend and frontend containers.

## Usage

Once both the backend and frontend are running:

1. Open your browser and go to `http://localhost:3000`.
2. You'll see the chat interface where you can interact with the chatbot.
3. Type your message and press enter or click the send button.
4. The chatbot will respond based on the input provided.

## Development

- Backend code is located in `chatbot-backend/src/`
- Frontend code is located in `chatbot-frontend/src/`

Make sure to update the README as you add new features or change the project structure.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License. KhanhDev
