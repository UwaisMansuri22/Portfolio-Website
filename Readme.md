# How I Built and Deployed My AWS-Powered Portfolio Website Using Git, Terraform, and AWS Services

## Introduction
As a cloud engineer, I wanted to showcase my skills and demonstrate how AWS services can work together to create a robust and secure portfolio website. In this project, I outline the steps taken to build and deploy an AWS-hosted portfolio website using Git, Terraform, and a suite of AWS services.

💻 Check out my portfolio: www.uwaismansuri.com

---

## Architecture
<p align="center">
  <img src="https://github.com/user-attachments/assets/bedee5ef-5113-496f-8d17-73bd6c119478" alt="High-Level Architecture" width="80%">
  <em>Figure: High-Level Architecture of Portfolio Website</em>
</p>

---

## Step 1: Infrastructure as Code with Terraform
- **What I Did**: Used Terraform to define AWS resources as code, ensuring repeatable and consistent deployments.
- **Why**: Terraform allows version control and automates resource provisioning for scalability and efficiency.

---

## Step 2: Static Website Hosting with Amazon S3

- **What I Did**: Hosted static website files (HTML, CSS, JavaScript) on Amazon S3.
- **How**:
  1. Created an S3 bucket and enabled static website hosting.

     <p align="center">
       <img src="https://github.com/user-attachments/assets/60d2a06d-7ad9-4c87-ae7e-e501d013215d" alt="S3 Bucket Creation" width="70%">
       <em>Figure 1: S3 Bucket Creation and Configuration</em>
     </p>

  2. Configured public access settings and added a bucket policy for public read access.

     <p align="center">
       <img src="https://github.com/user-attachments/assets/154c318c-1def-42a8-bc5a-f7b0a61dc793" alt="S3 Public Access Configuration" width="70%">
       <em>Figure 2: Configuring S3 Public Access</em>
     </p>

- **Benefits**: Cost-effective, highly available, and durable hosting.

---

## Step 3: Enhancing Performance with CloudFront and Securing with ACM

- **What I Did**: Integrated CloudFront as a CDN and used AWS Certificate Manager (ACM) for HTTPS.
- **How**:
  1. Configured CloudFront for global caching and performance.

     <p align="center">
       <img src="https://github.com/user-attachments/assets/15699b3e-7437-46dc-baf1-49f0158a4f0f" alt="CloudFront Configuration" width="70%">
       <em>Figure 3: Configuring CloudFront for Performance</em>
     </p>

  2. Used ACM to provide a free SSL/TLS certificate.

     <p align="center">
       <img src="https://github.com/user-attachments/assets/19d9c02a-0f12-4012-a49c-f5ec196cdbbb" alt="SSL/TLS Certificate" width="70%">
       <em>Figure 4: Setting Up SSL/TLS with ACM</em>
     </p>

  3. Updated Route 53 DNS records for seamless domain integration.

     <p align="center">
       <img src="https://github.com/user-attachments/assets/4517605a-cb69-429b-9685-f4c4cee21f97" alt="Route 53 DNS Configuration" width="70%">
       <em>Figure 5: Route 53 DNS Record Configuration</em>
     </p>

- **Why**: Ensures fast, secure, and globally accessible website.

---

## Step 4: Custom Domain with Route 53

- **What I Did**: Set up a custom domain using Route 53 and routed traffic through CloudFront.
- **How**:
  1. Registered a domain or transferred an existing one.

     <p align="center">
       <img src="https://github.com/user-attachments/assets/a73aea9e-6649-4b34-bdad-e52657dd8a8d" alt="Domain Registration in Route 53" width="70%">
       <em>Figure 6: Domain Registration in Route 53</em>
     </p>

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

       <p align="center">
         <img src="https://github.com/user-attachments/assets/c973026c-81b2-42e1-91b9-74ee215944e5" alt="API Gateway Configuration" width="70%">
         <em>Figure 7: API Gateway Configuration</em>
       </p>

    2. Lambda: Validates and processes the input.

       <p align="center">
         <img src="https://github.com/user-attachments/assets/acc203f7-e6c6-4cb5-b9e3-93986a7ee23f" alt="Lambda Configuration" width="70%">
         <em>Figure 8: Lambda Configuration</em>
       </p>

    3. SES: Sends emails to the inbox.

       <p align="center">
         <img src="https://github.com/user-attachments/assets/fde8fa94-9e74-4f20-82df-91f76ec3ae17" alt="SES Email Configuration" width="70%">
         <em>Figure 9: SES Email Configuration</em>
       </p>

---

## Step 6: AI Chatbot Using Amazon Lex and Lambda

- **What I Did**: Added an interactive chatbot powered by Amazon Lex and Lambda.
- **How It Works**:
  - **Workflow**: User → API Gateway → Lambda → Amazon Lex → DynamoDB.
  - **Components**:
    1. **Amazon Lex**: Manages conversational AI logic.

       <p align="center">
         <img src="https://github.com/user-attachments/assets/80729e5a-3a21-4d2d-99b8-23537de426cb" alt="Chatbot Workflow" width="80%">
         <em>Figure 10: Chatbot Workflow</em>
       </p>

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
