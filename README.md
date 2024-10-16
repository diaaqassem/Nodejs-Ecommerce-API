# Nodejs-Ecommerce-API
This E-Commerce API built with Node.js and Express with more features 

# E-Commerce API

This is a comprehensive E-Commerce API built using Node.js and Express. It supports user authentication, product management, cart functionality, order processing, and payment options (credit card or cash on delivery). Additionally, the platform offers roles for administrators and managers to manage products and brands, with advanced security features like password reset.

## Features
- User Authentication: Users can register, log in, reset passwords, and update profiles.
- Product Management: Admins and managers can create, update, delete, and view products and brands.
- Cart and Orders: Users can add products to their cart, place orders, and choose to pay by card (via Stripe) or cash on delivery.
- Role-Based Access Control: Admins, managers, and regular users have different permissions.
- Password Reset: Users can reset their password via email using **Nodemailer** and **Mailgun**.
- Secure API: Data sanitization, rate limiting, and other security measures implemented.

## Technologies Used
- Node.js & **Express**: For the backend API.
- MongoDB& Mongoose: For the NoSQL database and ORM.
- JWT: For user authentication.
- Stripe: For online payments via credit card.
- Multer& Sharp: For handling file uploads and image processing.
- Nodemailer & Mailgun: For email services, such as password reset.
- ESLint: For maintaining code quality and style consistency.
- bcryptjs: For hashing and verifying passwords securely.
- colors: Adds colors to the console for easier debugging.
- compression: Compresses HTTP responses to improve performance.
- cors: Enables Cross-Origin Resource Sharing for the API.
- dotenv: Loads environment variables from a .env file.
- express: Web framework for building the API server.
- express-async-handler: Handles async errors in Express routes.
- express-mongo-sanitize: Prevents NoSQL injection by sanitizing MongoDB queries.
- express-rate-limit: Limits repeated requests to prevent brute-force attacks.
- express-validator: Middleware for validating user input in API routes.
- hpp: Protects against HTTP Parameter Pollution attacks.
- mailgun-js: Legacy Mailgun API client for sending emails.
- mailgun.js: Modern Mailgun API client for sending transactional emails.
- morgan: HTTP request logger for monitoring API requests.
- netlify-cli: Netlify command-line tool for deployment and serverless functions.
- netlify-lambda: For running Lambda functions in a Netlify environmen
- serverless-http: Utility to run Express.js apps in serverless environments.
- sharp: Image processing library for resizing and optimizing images.
- slugify: Converts strings into URL-friendly slugs.
- stripe: Handles payments via Stripe API for credit card transactions.
- uuid: Generates unique IDs for resources and transactions.
- xss-clean: Sanitizes user input to prevent XSS (Cross-Site Scripting) attacks.

## Getting Started

### Prerequisites
- Node.js (v20.9.0 or higher)
- MongoDB (local or cloud)
- Stripe account for handling payments

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/diaaqassem/Nodejs-Ecommerce-API.git
   cd Nodejs-Ecommerce-API

2.Install dependencies:
  npm install

3.Start the development server:
  npm run start:dev

