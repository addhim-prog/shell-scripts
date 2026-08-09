# Shell Scripting Practice

This repository is a simple workspace for practicing Bash and shell scripting in a local Linux environment. The scripts are stored on your host machine in the scripts folder and shared into a Vagrant virtual machine for execution.

## 1. Tech Stack / Prerequisites

Before you begin, make sure you have the following installed:

- Vagrant
- VirtualBox (or another Vagrant-supported provider)
- Git
- Bash

## 2. Project Structure

The local host folder is mapped to the Vagrant VM as follows:

- Host: ./scripts
- VM: /opt/scripts

This makes it easy to edit scripts on your computer and run them inside the VM.

## 3. How to Run & Use

1. Start the virtual machine:
   ```bash
   vagrant up
   ```

2. Connect to the VM:
   ```bash
   vagrant ssh
   ```

3. Navigate to the shared scripts directory inside the VM:
   ```bash
   cd /opt/scripts
   ```

4. Run a script:
   ```bash
   bash script-1
   ```

You can also make a script executable and run it directly:

```bash
chmod +x script-1
./script-1
```
