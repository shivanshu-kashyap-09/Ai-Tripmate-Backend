# 🚀 AI Tripmate – Spring Boot Backend

AI Tripmate is a smart travel companion powered by AI. This Spring Boot backend integrates with Groq's LLaMA models, HuggingFace's image generation, MongoDB, Google OAuth2, Gmail SMTP, and Pexels API to provide features like AI-based trip planning, chat interactions, secure authentication, and dynamic content creation.

---

## 📦 Features

- 🤖 AI Chat using Groq's LLaMA 3
- 🧠 Image generation via HuggingFace (Stable Diffusion)
- 🧭 Smart trip suggestions and planning
- 🔐 Secure authentication via Google OAuth2
- 📧 Email notifications using Gmail SMTP
- 📸 Travel image search using Pexels API
- 🗂 MongoDB Atlas for cloud storage
- 📄 OpenAPI-based documentation (`/api-docs`)

---

## 🛠️ Tech Stack

| Technology | Purpose |
|------------|---------|
| Spring Boot | Core backend framework |
| MongoDB Atlas | Cloud NoSQL database |
| OpenAI / Groq | AI chat generation (LLaMA-3) |
| HuggingFace | AI image generation |
| Gmail SMTP | Sending feedback emails |
| Google OAuth2 | Secure user login |
| Pexels API | Travel image data |
| Spring Security | User authentication |
| Springdoc | OpenAPI documentation generation |

---

## 📁 Project Structure
ai-tripmate-backend/
├── src/
│ └── main/
│ └── java/
│ └── resources/
│ └── application.properties
├── pom.xml
└── README.md

### Clone the Repository
git clone https://github.com/shivanshu-kashyap-09/Ai-Tripmate-Backend.git

## src/main/resources/application.properties
spring.application.name=project_name

# OpenAI / Groq settings
spring.ai.openai.api-key=${OPENAI_API_KEY}
spring.ai.openai.base-url=https://api.groq.com/openai
spring.ai.openai.chat.options.model=llama3-70b-8192
spring.ai.openai.chat.options.temperature=1

# MongoDB connection
spring.data.mongodb.uri=mongodb+srv://${MONGO_USERNAME}:${MONGO_PASSWORD}@cluster0.zxu5x.mongodb.net/Ai-Tripmate?retryWrites=true&w=majority&appName=Cluster0

# Email (SMTP) configuration
spring.mail.host=smtp.gmail.com
spring.mail.port=587
spring.mail.username=${EMAIL_USERNAME}
spring.mail.password=${EMAIL_APP_PASSWORD}
spring.mail.properties.mail.smtp.auth=true
spring.mail.properties.mail.smtp.starttls.enable=true

# Google OAuth2 config
spring.security.oauth2.client.registration.google.client-id=${GOOGLE_CLIENT_ID}
spring.security.oauth2.client.registration.google.client-secret=${GOOGLE_CLIENT_SECRET}
spring.security.oauth2.client.registration.google.scope=profile,email

spring.security.oauth2.client.provider.google.authorization-uri=https://accounts.google.com/o/oauth2/auth
spring.security.oauth2.client.provider.google.token-uri=https://oauth2.googleapis.com/token
spring.security.oauth2.client.provider.google.user-info-uri=https://www.googleapis.com/oauth2/v2/userinfo
spring.security.oauth2.client.provider.google.jwk-set-uri=https://www.googleapis.com/oauth2/v3/certs

# Hugging Face API config
spring.ai.huggingface.api-key=${HUGGINGFACE_API_KEY}
spring.ai.huggingface.base-url=https://api-inference.huggingface.co/models/stabilityai/stable-diffusion-xl-base-1.0

# Pexels API
pexels.api.key=${PEXELS_API_KEY}
pexels.api.uri=https://api.pexels.com/v1/search?query=

# OpenAPI documentation
springdoc.api-docs.path=/api-docs

# Frontend URI
frontEnd.uri=${FRONTEND_URL}

# Feedback email
spring.feedback.email=${FEEDBACK_EMAIL}

##Run the Application
mvn spring-boot:run

##API Documentation
http://localhost:8080/swagger-ui/index.html

##frontend repo
git clone https://github.com/shivanshu-kashyap-09/Ai-Tripmate-ui.git
