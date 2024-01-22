# Installing NGINX on CentOS 8


<h2>Description</h2>
As a new Linux Admin, your team wants to test out a webpage on their Linux test server. They’d like to see if they could access the webpage over the internet. Your job is to install the test web server that will serve up the webpage for your team:
<br />


<h2>Languages and Utilities Used</h2>

- <b>Bash</b> 
- <b>Command Line</b> (Windows)

<h2>Environments Used </h2>

- <b>Windows 10</b> (21H2)
- <b>CentOS 8</b> (A Cloud Guru)

<h2>Project walk-through:</h2>

Head into A Cloud Guru and navigate to the Playground tab. Select Cloud Servers, input the following settings, and create the server:

<p align="center">
<br/>
<img src="https://cdn-images-1.medium.com/max/800/1*Oh8be4AVsjBzXBNVCzo8tA.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />

It will take a while to create, and after some time you should see the Ready button pop up:

<p align="center">
<br/>
<img src="https://miro.medium.com/v2/resize:fit:720/format:webp/1*IAWjTAgDfA7iFUx46ANNQA.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />

Click the drop-down menu, and you can see all the information on your remote server. These are the credentials you will use to log into the server using virtualization. Open up your command line of choice and input the following command:

<b>ssh cloud_user@<public_ip_address></b>

This command allows you to remote in as a cloud user under the server’s specified IPv4 address. Afterwards, it will ask you if you want to continue connecting. Type yes and enter the temporary password of the server. Linux has a security feature that doesn’t show the password being typed on screen, but it is there so you’re fine. Now create your own password, and you’re in the system:

<p align="center">
<br/> 
<img src="https://miro.medium.com/v2/resize:fit:720/format:webp/1*QGqCuMIxyjSx75gXa0ICpA.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> 
<br />

When it comes to testing anything on a server, we want to make sure all packages are updated. Reason being it’s good to have the latest files installed and most up-to-date version of your operating system. This ensures security being handled on your end, and is a good preventative measure against viruses and malware. Let’s start by typing in the command:

<b>sudo yum update </b>

<p align="center">
<br/> 
<img src="https://miro.medium.com/v2/resize:fit:750/format:webp/1*ROF04xFG4WcpqiUlWVvACA.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> 
<br />

We use the command sudo as this allows heightened privileges within our remote server, as the playground doesn’t give root access to users. My system seems to be updated so there was nothing to do, but for you it may have updates. It’s also good to know what you plan on installing on your computer, and getting info on that software can be a big help. Type in the following command:

<b>sudo yum info nginx </b>

This command gives us information on the NGINX web server, such as the size, URL, license used, version, and a small description of what it is:

<p align="center">
<br/> 
<img src="https://miro.medium.com/v2/resize:fit:1400/format:webp/1*3BUGai2RCkM6Ba7TyS-6MA.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> 
<br />

Now we install NGINX. Type in the command:

<b>sudo yum install nginx </b>

This will download and install all files and modules needed for the service to run smoothly:

<p align="center">
<br/> 
<img src="https://miro.medium.com/v2/resize:fit:828/format:webp/1*FV9VtZGrVdYDADW6ua989Q.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> 
<br />

Now that we’ve installed NGINX, we need to enable the web server. Type in the command:

<b>sudo systemctl start nginx </b>

For good measure, type in the command:

<b>sudo systemctl status nginx </b>

This checks the status of the running program:

<p align="center">
<br/> 
<img src="https://miro.medium.com/v2/resize:fit:828/format:webp/1*UhI303QMLfXkUOgP8QF2xA.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> 
<br />

Now enable the NGINX service:

<b>sudo systemctl enable nginx </b>

<p align="center">
<br/> 
<img src="https://miro.medium.com/v2/resize:fit:828/format:webp/1*-PWU6HGuCRWfBQpIdT2nhQ.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> 
<br />

Inside of NGINX are firewall service files that specify the webpage uses ports 80 (HTTP) and 443 (HTTPS). These ports will need to be opened and enabled for you to have access to the webpage. Open both ports with the following commands:

<b>sudo firewall-cmd --permanent --zone=public --add-service=http --add-service=https </b>

<b>sudo firewall-cmd --reload </b>

<b>sudo firewall-cmd --list-services --zone=public </b>

<p align="center">
<br/> 
<img src="https://miro.medium.com/v2/resize:fit:828/format:webp/1*4sp1dPXw0ASBh8yyCUH8hw.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> 
<br />

Now we can test out our webserver. Use the following command to grab your IPv4 address and input it into the URL address bar:

<b>curl -4 icanhazip.com </b>

<p align="center">
<br/> 
<img src="https://miro.medium.com/v2/resize:fit:786/format:webp/1*t7ewcJ2OK3SVp7ep4qnVHg.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> 
<br />

<p align="center">
<br/> 
<img src="https://miro.medium.com/v2/resize:fit:828/format:webp/1*I6JJpAbuVpua5ELwh2UHXw.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> 
<br />

This concludes this project. Feel free to continue on for a more advanced rendition of this project:


<h2>🔥ADVANCED🔥 </h2>

For this part of the project, we will be using the text editor VIM to create a custom HTML script. Before doing that, we will need to change directories to where the NGINX HTML page information is being stored. Let’s change directories back to the root with the following command:

<b>cd / </b>

From there, we will need to change directories to where the HTML file configurations are located. Type in the following command:

<b>cd /usr/share/nginx/html </b>

<p align="center">
<br/> 
<img src="https://miro.medium.com/v2/resize:fit:828/format:webp/1*LCqMdnBl78GKwpuZeedHXg.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> 
<br />

I created the index.html file with the following command:

<b>touch index.html </b>

Before doing that I had permissions errors. You won’t be able to write new files until you have given yourself ownership. If you’re familiar with permissions in Linux, you know we’ll need the chmod command. Type in the following command:

<b>sudo chmod 777 html </b>

This will give everyone permissions over the html directory and allow us to create files. Note: This is only for project purposes. Always follow the principle of least privilege. After you’ve created your HTML file, use VIM to create your script:

<b>vim index.html </b>

<p align="center">
<br/> 
<img src="https://miro.medium.com/v2/resize:fit:828/format:webp/1*2y_3x039kR5S0GILuZ5gQg.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> 
<br />

After you’ve completed the script, hit ESC to get out of insert mode in VIM and type in the following:

<b>:wq </b>

This will save and quit the file. Now that we have our updated HTML file, we’ll need to restart the service so that it takes effect. Type in the following command to restart:

<b>sudo systemctl restart nginx </b>

After that, type in the IP address into the URL address bar to see your change:

<p align="center">
<br/> 
<img src="https://miro.medium.com/v2/resize:fit:828/format:webp/1*6fgtn1htfA6NVpgzrAmCIw.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> 
<br />


<h2>☠COMPLEX☠ </h2>

Bash scripts free up a lot of time as they allow the automation of simple and mundane tasks. For this part of the project, we will create a Bash script that will allow us to update all packages, install NGINX, and create/display our custom HTML webpage. We can even hold onto the script for future use! Let’s start by creating our script inside of the html directory:

<b>vim nginx.sh </b>

The .sh at the end of the file indicates that we want to make this file a shell script. Type in the following:

<b>⚠The script can be found in the repository titled "Installing NGINX on CentOS 8⚠ </b>

<p align="center">
<br/> 
<img src="https://miro.medium.com/v2/resize:fit:828/format:webp/1*Z067KKeUlwAhHJZ-hGrYhA.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> 
<br />

Now let’s make the file executable with the chmod command:

<p align="center">
<br/> 
<img src="https://miro.medium.com/v2/resize:fit:828/format:webp/1*pLYaMS93j0wzJEOS2JjFvQ.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> 
<br />

This will turn the script green. Now we want to have permissions over the usr directory where our script is stored. Change directories back to the root directory and input the following command:

<b>sudo chmod 777 usr </b>

This will turn the usr directory green and give us permissions over it:

<p align="center">
<br/> 
<img src="https://miro.medium.com/v2/resize:fit:828/format:webp/1*_w2XpDVEsZYISP2Ev0Zk1g.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> 
<br />

Now let’s change to where the script is located and move it to a directory where it’s easier to find. I chose the home directory, hence the ~ symbol:

<p align="center">
<br/> 
<img src="https://miro.medium.com/v2/resize:fit:828/format:webp/1*sFECW3jQbFT21sQLRq_5Qg.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> 
<br />

<p align="center">
<br/> 
<img src="https://miro.medium.com/v2/resize:fit:828/format:webp/1*UyC98fnFNTR1dEesfAV6kA.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> 
<br />

After this step I decided to exit my server and remote back into it to try it out with a different IP address. I ran the script with the command ./nginx.sh :

<p align="center">
<br/> 
<img src="https://miro.medium.com/v2/resize:fit:828/format:webp/1*vQrjdBPdakMngrGHoBsZyQ.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> 
<br />

<p align="center">
<br/> 
<img src="https://miro.medium.com/v2/resize:fit:828/format:webp/1*TF06bgYGOF-OVmjYRTS-ew.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> 
<br />

<p align="center">
<br/> 
<img src="https://miro.medium.com/v2/resize:fit:828/format:webp/1*WGpeeP9SMX6rvZwrJmDnqA.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> 
<br />

And that completes the entire project! I’m still working on this Bash script as there were a few issues that occurred while it was sending back information. I’ll update this walkthrough when I’ve figured it out, but otherwise any feedback is appreciated. Thanks for stopping by!
