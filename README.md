
# AI Personalised Fitness Coach 🏋️‍♂️🤖

An AI-powered, interactive personal fitness companion designed to democratize high-quality training. This platform dynamically crafts personalized workout routines using Large Language Models (LLMs) and monitors exercise form in real-time using advanced Computer Vision to prevent injuries and optimize performance.

---

## 🚀 Features

- **Dynamic Workout Generation:** Uses an LLM backend to analyze user-specific metrics (fitness level, goals, preferences) and generate tailored routines instead of static templates.
- **Real-Time Pose Estimation:** Tracks critical body landmarks during exercises to monitor posture, angle alignments, and range of motion.
- **Instant Audio-Visual Feedback:** Provides live visual overlays and cues to guide users through correct forms, mimicking an in-person trainer.
- **Interactive UI/UX:** Built with React to offer a seamless, responsive, and intuitive interface for tracking analytics and managing active sessions.

---

## 🛠️ Tech Stack

- **Frontend:** React.js, HTML5, CSS3, JavaScript (ES6+)
- **Computer Vision & AI:** MediaPipe / OpenCV (Pose Estimation), LLM APIs (Workout Orcherstration)
- **Backend Infrastructure:** Node.js / Python (FastAPI/Flask)
- **State Management:** React Hooks & Context API

---

## 📐 System Architecture

1. **User Input & Profiling:** The user submits their fitness parameters through the React frontend dashboard.
2. **AI Routine Orchestration:** The backend processes these parameters via a rigid prompt template sent to the LLM to generate structured, personalized routines.
3. **Vision Processing Engine:** During active exercises, the camera feed captures frames, decoupled via asynchronous loops, passing them to the lightweight landmark tracking model.
4. **Feedback Loop:** Real-time coordinates are evaluated, and corrective visual/audio alerts are pushed instantly back to the UI.

---

## ⏱️ Technical Hurdles & Optimizations

* **Latency Optimization:** Processing high-resolution video frames frame-by-frame initially caused UI stuttering. We resolved this by decoupling frame capture from inference loops and leveraging asynchronous processing to maintain a smooth, stable frame rate.
* **Component Rendering:** Syncing live stream coordinates with dynamic workout metrics can trigger excessive re-renders. We structured
