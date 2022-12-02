# Do not click me
Simple batch project which aims to raise classmates awareness about dangers even over a local network.<br>
This batch script emphasises speed of execution, with simple commands and no serious nor irreversible consequences for the targeted user.

## How does it work
The user clicks on the executable file, which initiates a series of commands.<br>
The executable will download the necessary files from this repository and move them to a folder created in %APPDATA%.<br>
It will then call the previously downloaded batch files almost simultaneously to ensure that the script is fully executed.<br>
All the scripts have .bat extension, however some Powershell commands are also used.

## What does it do
The script executes the following actions:<br>
- Download and move required files to directories<br>
- Call and start above scripts<br>
- Replace wallpaper with a meme-generated one<br>
- Hide taskbar<br>
- Hide desktop icons<br>
- Create folders with random numbers while user doesn't close the window<br>

The main binary also includes a startup script that does nothing more than display a message at each computer startup.<br>

## What is left to do
Some things can be improved, the binary will be available when the following requirements will be satisfied:<br>
- Start the script in minimized mode / background (Powershell?)<br>
- Reduce latency between each script's actions
