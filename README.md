# Epitech Toolbox

This project was created to help you in your Epitech (or 42) projects.

This repo (will) contains scripts or programs to help you with differents boring issues that make you lose time and sanity.

---
## Scripts
---
### Clean carriage return (aka. CF)
---
<br>

Fellow programmers, 

Getting tired of having 42 Coding Style errors due to corrupted header or invisible \r at the end of your lines ?
Well lucky you, we have the solution !

Just do :
```bash
./clean_carriage_return.sh 
```
In a folder containing *.py, *.c or *.h files and every carriage return will magically vanish !

### Automatic prototype creation
---
<br>

 Getting tired to type each prototype of your functions for all your projects?              
 Well, we also have the solution for you !

First, you'll have to install cproto :
```bash
sudo dnf install -y cproto 
```

Then, just do :
```bash
./auto_proto_creation.sh <your src folder> <your include folder>
```

Now you have a proto.h file that you can copy the content to paste it in your actual proto file.

---
## Contribution
---


This project is community-based, so don't hesitate to make pull requests to push your own scripts. 

Here is a small tutorial if you don't know how to contribute : https://www.dataschool.io/how-to-contribute-on-github/

---
## Issues
---

Don't hesitate to create new issues if you notice any kind of problems, crash or bugs in scripts 