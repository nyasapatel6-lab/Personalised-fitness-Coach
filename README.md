# FitAI — Personalized Fitness Coach 🏋️

An intelligent fitness coaching application powered by AI that generates personalized workout plans, meal plans, and provides real-time coaching advice.

## Features ✨

- **AI-Powered Workouts** - Generate custom workout plans based on your fitness level, goals, and equipment
- **Personalized Nutrition** - Get meal plans and macro recommendations tailored to your goals
- **AI Coach Chat** - Talk to Coach Atlas for form tips, injury help, and motivation
- **Progress Tracking** - Log workouts and get AI-powered progress analysis
- **User Profiles** - Manage your fitness profile with personal stats and goals

## Tech Stack 🛠️

- **Frontend**: Vanilla HTML, CSS, JavaScript
- **AI API**: Groq (Llama 3.3 70B model)
- **Backend**: Node.js/Express API Proxy
- **Deployment**: Vercel, Netlify, or self-hosted

## Setup & Installation 📦

### 1. Clone Repository
```bash
git clone https://github.com/nyasapatel6-lab/Personalised-fitness-Coach.git
cd Personalised-fitness-Coach
```

### 2. Install Dependencies
```bash
npm install
```

### 3. Configure Environment Variables
Create a `.env.local` file:
```env
GROQ_API_KEY=your_groq_api_key_here
```

Get your API key from: [Groq Console](https://console.groq.com)

### 4. Run Locally
```bash
npm run dev
```

Open `http://localhost:3000` in your browser.

## Deployment 🚀

### Deploy to Vercel (Recommended)
```bash
npm install -g vercel
vercel
```

When prompted, set the environment variable:
- Name: `GROQ_API_KEY`
- Value: Your Groq API key from [console.groq.com](https://console.groq.com)

### Deploy to Netlify
1. Connect your GitHub repo to Netlify
2. Set build command: `npm install`
3. Set publish directory: `.`
4. Add environment variable in Netlify dashboard:
   - Key: `GROQ_API_KEY`
   - Value: Your Groq API key

### Self-Hosted
```bash
npm install
npm start
```

## Security ⚠️

- **Never commit API keys** - Always use environment variables
- API calls route through backend proxy (`.env.local` is gitignored)
- Groq API key is server-side only, never exposed in frontend code
- CORS enabled for secure requests

## How It Works 🧠

1. **Frontend** (`index.html`) - User interface for fitness planning
2. **Backend Proxy** (`api/groq-proxy.js`) - Secure API gateway that validates requests
3. **Groq AI** - Processes requests and generates personalized fitness content

## API Endpoints 📡

### POST `/api/groq-proxy`
Generate AI responses for workouts, nutrition, and coaching.

**Request:**
```json
{
  "messages": [
    {"role": "user", "content": "Create a 45-minute workout plan"}
  ]
}
```

**Response:**
```json
{
  "choices": [
    {
      "message": {
        "content": "### Warm-up (5 min)\n..."
      }
    }
  ]
}
```

## File Structure 📁

```
Personalised-fitness-Coach/
├── index.html              # Main app (secure, no exposed keys)
├── api/
│   └── groq-proxy.js       # Secure backend gateway
├── package.json            # Node dependencies
├── vercel.json             # Vercel deployment config
├── .env.local              # Environment variables (gitignored)
├── .gitignore              # Protect sensitive files
└── README.md               # This file
```

## Features in Detail 🎯

### Dashboard
- BMI calculation
- Weekly workout tracker
- Daily motivation quotes
- Current streak counter

### Workout Plan Generator
- 7-day plans or single sessions
- Customizable duration (20-90 min)
- Equipment-based recommendations
- Strength, cardio, HIIT options

### AI Coach Chat
- Real-time conversation with Coach Atlas
- Form correction tips
- Injury prevention advice
- Motivation and encouragement

### Nutrition Tools
- Meal plan generation (any diet type)
- Macro calculator (protein, carbs, fats)
- Nutritionist AI advice
- Calorie targets (deficit to bulk)

### Progress Tracking
- Log daily workouts
- Track total minutes & streak
- AI progress analysis
- Historical workout data

## Environment Variables 🔐

| Variable | Description | Required |
|----------|-------------|----------|
| `GROQ_API_KEY` | Groq API key from [console.groq.com](https://console.groq.com) | ✅ Yes |

## Troubleshooting 🔧

**Issue: "API Error" when generating plans**
- Check that `GROQ_API_KEY` is set in environment variables
- Verify your Groq API key is valid and not expired
- Check Groq console for API usage limits

**Issue: "Cannot find module 'node-fetch'"**
```bash
npm install
```

**Issue: Port 3000 already in use**
```bash
PORT=3001 npm run dev
```

## Contributing 🤝

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License 📄

This project is licensed under the MIT License.

## Support 💬

For issues or questions:
1. Check the [Troubleshooting](#troubleshooting-) section
2. Open a GitHub Issue
3. Contact: nyasapatel6@gmail.com

---

**Built with 💪 by Nyasa Patel**

*Powered by Groq AI & Llama 3.3*
