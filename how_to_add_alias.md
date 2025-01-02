# Gitpush Script Setup Guide

This guide will help you set up a custom Git automation script and alias it for easy use in your terminal.

---

## **Step 1: Write the Script**
1. Open a terminal and create a new shell script file using a text editor. For example:
   ```bash
   nano ~actual path of /gitpush.sh
   ```
2. Write or paste your script into the editor.
3. Save and exit:
   - Press `CTRL+O` and then `Enter` to save.
   - Press `CTRL+X` to exit the editor.

---

## **Step 2: Make the Script Executable**
Run the following command to give the script executable permissions:
```bash
chmod +x ~ path of /gitpush.sh
```

---

## **Step 3: Add an Alias for the Script**

### **Step 4: Edit the Bash Configuration File**
1. Open the `~/.bashrc` file to add the alias:
   ```bash
   nano ~/.bashrc
   ```

---

## **Step 5: Add the Alias**
Add the following line at the end of the `~/.bashrc` file:
```bash
alias gitpush='~/gitpush.sh'
```
Replace `~/gitpush.sh` with the actual path to your script if it’s saved in a different location.

---

## **Step 6: Save and Exit**
1. Press `CTRL+O` to save the changes.
2. Press `CTRL+X` to exit the editor.

---

## **Step 7: Reload the Shell Configuration**
Run the following command to apply the changes made to `~/.bashrc`:
```bash
source ~/.bashrc
```

---

## **Step 8: Use the Alias**
Now, you can use the alias `gitpush` to execute your script from any terminal session. For example:


### **Additional Notes**
- Ensure the script is stored in a location accessible to your user.
- If you encounter any issues, double-check the alias path and reload the shell configuration using `source ~/.bashrc`.

Happy coding!

