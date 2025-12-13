# 📄 Smart Doc Analyst

**Smart Doc Analyst** (also called *Smart Assignment Insight Generator*) is an AI-powered web application that transforms academic PDF documents into **exam-ready study material** using Google Gemini API.

Built for **KIIT HackDays 2025 – Google Gemini API Track**, the project focuses on reducing students' study time by automatically extracting key concepts, generating practice MCQs, and predicting likely exam questions.

---

## 🚀 Problem Statement

Students often receive lengthy PDFs such as lecture notes, assignments, and reference materials. Manually:

* Identifying important concepts
* Creating practice questions
* Predicting exam-relevant topics

is time-consuming and inefficient.

There is a need for a **smart, exam-oriented AI tool** that converts raw academic content into structured learning resources.

---

## 💡 Solution Overview

Smart Doc Analyst allows users to upload a PDF and instantly receive:

* 📚 **Concept Summary** (5–8 key concepts with importance levels)
* ❓ **15 Practice MCQs** (with answers and difficulty levels)
* 🎯 **10 Predicted Exam Questions** (with format, topics, difficulty, and reasoning)

All results are generated automatically using **Google Gemini AI**.

---

## ⚙️ How It Works

1. User uploads a PDF document
2. Text is extracted using **PyMuPDF**
3. Extracted text is analyzed using **Google Gemini API**
4. AI generates structured JSON outputs for:

   * Concept summaries
   * MCQs
   * Exam question predictions
5. Results are displayed on an interactive web dashboard

---

## ✨ Key Features

* Exam-oriented AI analysis (not just summarization)
* Structured and reliable JSON-based outputs
* MCQs with difficulty levels and correct answers
* Exam question prediction with reasoning (*why likely*)
* Clean and responsive UI
* Saves ~**50% study time**

---

## 🧠 Innovation Highlights

* Focuses on **exam readiness**, not generic AI summaries
* Uses prompt-engineered Gemini responses for accuracy
* Combines **concept learning + practice + exam strategy** in one tool

---

## 🛠️ Tech Stack

**Frontend**

* HTML
* CSS
* JavaScript

**Backend**

* Python
* Flask
* PyMuPDF (PDF text extraction)

**AI**

* Google Gemini API
* Gemini 2.5 Flash / Gemini 1.5 Pro (fallback)

---

## 📊 Metrics (Sample)

* Concepts Extracted: 5–8
* MCQs Generated: 15
* Exam Questions Predicted: 10
* Estimated Study Time Saved: **50%**
* Gemini Dependency: ~90%

---

## 📌 Use Cases

* Students preparing for exams
* Faculty creating question banks
* EdTech platforms for smart content generation
* Self-study and revision workflows

---

## ⚠️ Limitations

* Currently supports **PDF files only**
* Large PDFs are partially analyzed due to token limits
* Image-based or handwritten content is not yet supported

---

## 🔮 Future Enhancements

* User authentication & progress tracking
* Support for more subjects beyond CSE
* Diagram & image understanding
* Difficulty-based adaptive learning
* Voice explanations and summaries

---

## ▶️ How to Run Locally

```bash
# Install dependencies
pip install flask pymupdf google-generativeai

# Run the app
python app.py
```

Then open:

```
http://localhost:5000
```

---

## 🏁 Hackathon Details

* **Event:** KIIT HackDays 2025
* **Date:** 13.12.2025
* **Track:** Google Gemini API Track
* **Project Type:** AI-powered EdTech Solution

---

## 👤 Author

Developed by Team GEMAIPS.

✨ *Smart Doc Analyst – Turn PDFs into powerful study material using AI*
