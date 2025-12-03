<h1>Manual</h1>
<h3>TechNest</h3>
<p>A website that you can sell and buy eletronic devices on it.</p>

<h3>Way to run these codes<h3>
<h4>1.Download and install Node.js</h4>
<p>Visit "https://nodejs.org/" to download Node.js, then follow the step to install it.</p>

<h4>2.Download and install NPM</h4>
<p>NPM should be download and install while you install Node.js. Please follow the follow steps to set your environment variables.</p>
<p>a.Open "Edit the system environment variables" in your computer.
b.Choose "Advanced", then click "Environment Variables"
c.Choose the secion called "PATH" in the above box.
d.Click "Edit".
f.Add a new line "C:\Program Files\nodejs\" in it.
g. Reboot your computer.</p>
<p>Then type the following code in PowerShell to make npm can be run on VScode.</p>
<code>get-executionpolicy
Set-ExecutionPolicy -Scope CurrentUser RemoteSigned</code>

<h4>3.Sign up in MongoDB</h4>
<p>Visit "https://www.mongodb.com/" to sign up and set up your Database.<p>

<h4>4.Download or clone these codes</h4>
<p>Your can clone these codes if you have git or download them manually. Then Open them with VScode(recommanded).<p>
<code>git clone https://github.com/Abrams666/TechNest</code>

<h4>5.Config</h4>
<p>Add a document called "config.env" in the file. And the contain should be:</p>
<code>PORT = "80"
DATABASE_PASSWORD = "[PASSWORD OF YOUR DATABASE]"
DATABASE_CONNECTION_STRING = "mongodb+srv://[NAME OF YOUR ACCOUNT]:{db_password}@cluster0.siulj.mongodb.net/[NAME OF YOUR DATABASE]?retryWrites=true&w=majority&appName=Cluster0"</code>

<h4>6.Run these codes</h4>
<p>Type the following code in commander to start the server.</p>
<code>nodemon node.js</code>
<p>or</p>
<code>node node.js</code>

<h4>6.Test</h4>
<p>Type "localhost" or "127.0.0.1" in your browser.</p>

---

## Running with Docker

You can run this application using Docker. There are two main ways to do this: using `docker-compose` for local development, or running the container directly with `docker run`.

### 1. Local Development (Recommended)

For local development, the easiest method is to use Docker Compose, which will set up both the application and a local MongoDB database.

1.  Make sure you have Docker and Docker Compose installed.
2.  From the project root, run:
    ```sh
    docker-compose up --build
    ```
3.  The application will be available at `http://localhost:80`.

### 2. Running a Standalone Container

You can also run a specific Docker image version from the GitHub Container Registry (e.g., one built by the CI/CD pipeline).

You **must** provide the database connection environment variables for the container to connect to your cloud database (like MongoDB Atlas).

1.  **Pull the image** (replace the tag with your desired version):
    ```sh
    docker pull ghcr.io/wulukewu/technest:latest
    ```

2.  **Run the image** and provide your database credentials as environment variables (`-e`):
    ```sh
    docker run --rm -p 80:80 \
      -e PORT=80 \
      -e DATABASE_CONNECTION_STRING="mongodb+srv://<YOUR_ACCOUNT_NAME>:{db_password}@<YOUR_CLUSTER_URL>/?appName=<YOUR_DB_NAME>" \
      -e DATABASE_PASSWORD="<YOUR_DATABASE_PASSWORD>" \
      ghcr.io/wulukewu/technest:latest
    ```

    The application will be available at `http://localhost:80`.

<h1>©Copyright Notice </h1>
<p>This work is licensed under Creative Commons Attribution-NonCommercial 4.0 International.</p>
<p>To view a copy of this license, visit https://creativecommons.org/licenses/by-nc/4.0/</p>
<p>Copyright © 2025 TechNest(陳元謙Abrams666) All Rights Reserved</p>
