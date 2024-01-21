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

<p align="center">
Head into A Cloud Guru and navigate to the Playground tab. Select Cloud Servers, input the following settings, and create the server: <br/>
<img src="https://cdn-images-1.medium.com/max/800/1*Oh8be4AVsjBzXBNVCzo8tA.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />

<p align="center">
It will take a while to create, and after some time you should see the Ready button pop up: <br/>
<img src="https://miro.medium.com/v2/resize:fit:720/format:webp/1*IAWjTAgDfA7iFUx46ANNQA.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />

Click the drop-down menu, and you can see all the information on your remote server. These are the credentials you will use to log into the server using virtualization. Open up your command line of choice and input the following command:

<b>ssh cloud_user@<public_ip_address></b>

This command allows you to remote in as a cloud user under the server’s specified IPv4 address. Afterwards, it will ask you if you want to continue connecting. Type yes and enter the temporary password of the server. Linux has a security feature that doesn’t show the password being typed on screen, but it is there so you’re fine. Now create your own password, and you’re in the system:

<p align="center">
<br/> <img src="https://miro.medium.com/v2/resize:fit:720/format:webp/1*QGqCuMIxyjSx75gXa0ICpA.png" height="80%" width="80%" alt="Disk Sanitization Steps"/> <br />
