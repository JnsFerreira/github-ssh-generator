# Github SSH generator

Generates automatic ssh key for Github authentication

# Basic usage -  Step by step
 
1 - Copy the file to your home folder

2 - Open the file with your prefered text editor

3 - Modify the email with your Github email. The part of code looks like this:

```shell
ssh-keygen -t ed25519 -C "someone@domain.com"

```

4 - Just run on your terminal

```shell
sh generate_ssh.sh
```

5 - Follow the steps on the terminal

6 - Add the content of your public key on github page opened by the script.

7 - Now, you're ready to go :)
