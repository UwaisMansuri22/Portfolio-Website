
# How I Built and Deployed My AWS-Powered Portfolio Website Using Git, Terraform, and AWS Services



## Introduction
As a cloud engineer, I wanted to showcase my skills and demonstrate how AWS services can work together to create a robust and secure portfolio website. In this project, I outline the steps taken to build and deploy an AWS-hosted portfolio website using Git, Terraform, and a suite of AWS services.

💻 Check out my portfolio: www.uwaismansuri.com
---

## Architecture
![app7](https://github.com/user-attachments/assets/bedee5ef-5113-496f-8d17-73bd6c119478)


---

## Step 1: Infrastructure as Code with Terraform
- **What I Did**: Used Terraform to define AWS resources as code, ensuring repeatable and consistent deployments.
- **Why**: Terraform allows version control and automates resource provisioning for scalability and efficiency.

---

## Step 2: Static Website Hosting with Amazon S3
- **What I Did**: Hosted static website files (HTML, CSS, JavaScript) on Amazon S3.
- **How**:
  1. Created an S3 bucket and enabled static website hosting.
  2. Configured public access settings and added a bucket policy for public read access.
  3. Automated file deployment using a CI/CD Git pipeline.
- **Benefits**: Cost-effective, highly available, and durable hosting.

---

## Step 3: Enhancing Performance with CloudFront and Securing with ACM
- **What I Did**: Integrated CloudFront as a CDN and used AWS Certificate Manager (ACM) for HTTPS.
- **How**:
  1. Configured CloudFront for global caching and performance.
  2. Used ACM to provide a free SSL/TLS certificate.
  3. Updated Route 53 DNS records for seamless domain integration.
- **Why**: Ensures fast, secure, and globally accessible website.

---

## Step 4: Custom Domain with Route 53
- **What I Did**: Set up a custom domain using Route 53 and routed traffic through CloudFront.
- **How**:
  1. Registered a domain or transferred an existing one.
  2. Created a hosted zone for DNS management.
  3. Configured A records to point to CloudFront distribution.
- **Benefits**: Professional appearance and optimized global performance.

---

## Step 5: Interactive Contact Page with API Gateway, Lambda, and SES
- **What I Did**: Built a serverless contact form using AWS services.
- **How It Works**:
  - **Workflow**: Form Submission → API Gateway → Lambda → SES → Email.
  - **Components**:
    1. API Gateway: Routes HTTP requests.
    2. Lambda: Validates and processes the input.
    3. SES: Sends emails to the inbox.

---

## Step 6: AI Chatbot Using Amazon Lex and Lambda
- **What I Did**: Added an interactive chatbot powered by Amazon Lex and Lambda.
- **How It Works**:
  - **Workflow**: User → API Gateway → Lambda → Amazon Lex → DynamoDB.
  - **Components**:
    1. **Amazon Lex**: Manages conversational AI logic.
    2. **DynamoDB**: Stores chat history and context.
    3. **Lambda**: Processes requests and responses.

---

## Step 7: Automating Deployment with Git Pipeline
- **What I Did**: Integrated a Git pipeline to automate deployments.
- **Why**: Ensures that any changes pushed to GitHub are automatically deployed to S3, saving time and reducing manual errors.

---

## Conclusion
Building this portfolio website was an exciting journey that showcased the power of AWS services and serverless architecture. By combining Terraform, S3, CloudFront, API Gateway, Lambda, SES, and Route 53, I was able to create a scalable, secure, and professional web solution.

If you’re exploring AWS or interested in cloud engineering, I hope this inspires you to try something similar!

**Happy Clouding!**
