Sample HTML Webpage with Docker Deployment
This project creates a sample HTML webpage and demonstrates how to package it into a Docker image and push it to Docker Hub for public use.

Project Structure
bash
Copy
Edit
/sample-html-project
  ├── index.html
  └── Dockerfile
index.html — A simple HTML webpage.

Dockerfile — Instructions to build a Docker image using Nginx.

How to Build and Run
1. Build the Docker Image
Make sure Docker is installed and running on your machine.

bash
Copy
Edit
docker build -t your-dockerhub-username/sample-html-page:latest .
2. Run the Docker Container
bash
Copy
Edit
docker run -d -p 8080:80 your-dockerhub-username/sample-html-page:latest
Then open your browser and visit:

arduino
Copy
Edit
http://localhost:8080
You should see the sample HTML page!

3. Push to Docker Hub
First, log in to Docker Hub:

bash
Copy
Edit
docker login
Then push the image:

bash
Copy
Edit
docker push your-dockerhub-username/sample-html-page:latest
Now your image is available on Docker Hub for anyone to pull and run!

Technologies Used
HTML5 — For the webpage.

Docker — To containerize the application.

Nginx — As the web server inside the Docker container.

Author
Wadut Mamun
