# FitAI - Personalized Fitness Coach

## 🔒 Security Setup Guide

### ⚠️ IMPORTANT: Secure API Key Configuration

Your Groq API key is now **secure and hidden** in the backend. Here's how to set it up:

### Prerequisites
- Node.js (v14+) and npm installed
- Your Groq API key

### Setup Instructions

1. **Install dependencies:**
   ```bash
   npm install
   ```

2. **Configure environment variables:**
   - The `.env` file already contains your API key
   - **⚠️ NEVER commit `.env` to GitHub** (it's in .gitignore)
   - For production, set environment variables securely on your server

3. **Start the server:**
   ```bash
   npm start
   ```
   The server will run on `http://localhost:5000`

4. **Access the app:**
   Open `http://localhost:5000` in your browser

### 🔐 Security Features

✅ **API Key Protection**
- API key is stored in `.env` file (hidden from git)
- Never exposed in frontend code
- Only backend can access and use the API key

✅ **CORS Enabled**
- Backend validates all API requests
- Prevents unauthorized API access

✅ **Environment-based Configuration**
- Different keys for dev/staging/production
- Uses `dotenv` package for secure management

### 🛠️ Project Structure

```
├── index.html          # Frontend (no API keys exposed)
├── server.js           # Node.js/Express backend
├── package.json        # Dependencies
├── .env               # Secure config (NOT in git)
├── .env.example       # Template for .env
└── .gitignore         # Protects sensitive files
```

### 📝 API Endpoint

The frontend communicates with your backend:

```
POST /api/ai
Content-Type: application/json

{
  "messages": [...],
  "systemPrompt": "...",
  "maxTokens": 1024
}
```

The backend safely handles the Groq API call using your secret key.

### 🚀 Deployment

For production deployment (Heroku, Replit, etc.):

1. Set `GROQ_API_KEY` environment variable on your hosting platform
2. Set `PORT` environment variable (defaults to 5000)
3. The `.env` file won't be deployed (it's in .gitignore)

### ✅ Verification

To verify everything is working:
1. Run `npm start`
2. Open http://localhost:5000
3. Complete onboarding
4. Try generating a workout plan or asking the coach
5. Check the server console for logs

### 📚 Files Changed

- `index.html` - Removed hardcoded API key, now calls secure backend
- `server.js` - New backend server handling AI requests
- `package.json` - Node dependencies (express, cors, dotenv)
- `.env` - Your API key (secure, not in git)
- `.gitignore` - Protects `.env` from being committed

---

**Your app is now secure! 🔐** The API key is protected and never exposed to users.
