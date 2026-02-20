## **Complete Step-by-Step Learning Report**

---

## 1️⃣ Introduction to Version Control System (VCS)

### What is Version Control?

Version Control System ek aisa system hota hai jo:

* Files ke **changes ka record** rakhta hai
* Pehle ke version par **wapas jane** deta hai
* Multiple logon ko **same project par kaam** karne deta hai

### Types of VCS

1. **Local VCS** – single computer
2. **Centralized VCS** – ek central server (SVN)
3. **Distributed VCS** – har user ke paas full copy (Git)

👉 **Git = Distributed Version Control System**

---
## **Part 1: Understanding the Basics**

### **1.1 What is Git?**
- **Version Control System**: Tracks changes in your code over time
- **Local Tool**: Installed on your computer
- **Snapshot System**: Saves "snapshots" of your project at different stages

### **1.2 What is GitHub?**
- **Cloud Platform**: Hosts Git repositories online
- **Collaboration Hub**: Enables team coding and project sharing
- **Portfolio Showcase**: Displays your projects to potential employers

### **1.3 Key Terminology**
- **Repository (Repo)**: Project folder tracked by Git
- **Commit**: Saved change with a message
- **Branch**: Parallel version of code
- **Clone**: Copy repository to your computer
- **Push**: Upload local changes to GitHub
- **Pull**: Download changes from GitHub
- **Merge**: Combine different code versions

---

## **Part 2: Installation & Setup**

### **2.1 Install Git**
**Windows/Mac/Linux:**
1. Download from: https://git-scm.com/

 [![Logo](https://github.com/Kgsflink/Github-operation/blob/main/resources/Screenshot%202026-02-05%20080934.png)]

3. Run installer with default options
4. For winodw powershell
```bash
winget install --id Git.Git -e --source winget
 ```
5. For Linux setup
```bash
sudo apt install git -y
 ```
6. Verify Installation in terminal  
```bash
git --version
```
 [![Logo](https://github.com/Kgsflink/Github-operation/blob/main/resources/Screenshot%202026-02-05%20082927.png)]


### **2.2 Configure Git**
```bash
# Set your identity
git config --global user.name "Your Name"
git config --global user.email "your-email@example.com"

# Set default branch name
git config --global init.defaultBranch main

# Check configuration
git config --list
```
[![Logo](https://github.com/Kgsflink/Github-operation/blob/main/resources/config.png)]

# 🔹 `git config` kya hota hai? (Bilkul basic)

Git config ka matlab hota hai **Git ki settings**.

👉 Jaise:

* Mobile me settings hoti hain
* Waise hi Git ki bhi settings hoti hain

Command:

```bash
git config --list
```

📌 Ye command Git ko bolti hai:

> “Mujhe apni saari settings dikha do”

---

## 🔹 Tumhare Output ko Line-by-Line Samjhte Hain

---

### 1️⃣ `diff.astextplain.textconv=astextplain`

👉 Ye **file comparison (diff)** se related hai.

* Jab Git do files compare karta hai
* To ye setting text ko readable banati hai

📌 **Beginner ke liye:**
❌ Isko change karne ki zarurat nahi
✔️ Ignore kar sakte ho

---

### 2️⃣ Git LFS (Large File Storage)

```
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
```

👉 Ye settings **badi files (videos, zip, images)** ke liye hoti hain

📌 Matlab:

* Git LFS large files ko alag system me store karta hai
* Repo heavy nahi hota

🎓 **College level:**
Bas itna yaad rakho →

> Git LFS = large files manage karne ka tool

---

### 3️⃣ `http.sslbackend=schannel`

👉 Git jab **HTTPS** se GitHub se connect karta hai

* To ye Windows ka **security system** use karta hai

📌 Simple words:

> Git secure connection bana raha hai

✔️ Normal hai

---

### 4️⃣ `core.autocrlf=true`

👉 Ye **line ending** ka rule hai

📌 Matlab:

* Windows → CRLF
* Linux/Mac → LF
* Git automatically adjust karta hai

🎓 Exam line:

> `core.autocrlf=true` helps in cross-platform compatibility

---

### 5️⃣ `core.fscache=true`

👉 Git files ko **cache** karta hai

* Performance fast hoti hai

📌 Simple:

> Git fast kaam kare

---

### 6️⃣ `core.symlinks=false`

👉 Symbolic links Windows me properly support nahi hote

📌 Isliye:

> Git bol raha hai → symbolic links use mat karo

✔️ Default & safe

---

### 7️⃣ `pull.rebase=false`

👉 Jab tum `git pull` karte ho

* To **merge** method use hota hai
* Rebase nahi

📌 Simple:

```bash
git pull = fetch + merge
```

🎓 Exam:

> `pull.rebase=false` means merge strategy is used

---

### 8️⃣ `credential.helper=manager`

👉 Ye **sabse important setting** hai 🔥

📌 Matlab:

* Git tumhara **username/password ya token** yaad rakhta hai
* Har baar poochta nahi

🎓 Simple words:

> Login auto save ho jata hai

---

### 9️⃣ `credential.https://dev.azure.com.usehttppath=true`

👉 Ye Azure DevOps ke liye specific setting hai

📌 Agar Azure use nahi kar rahe → ignore

---

### 🔟 `init.defaultbranch=master`

👉 Jab bhi tum:

```bash
git init
```

karte ho,

* Default branch ka naam **master** hota hai

📌 Aaj-kal GitHub me `main` zyada use hota hai

Agar change karna ho:

```bash
git config --global init.defaultBranch main
```

---

### 1️⃣1️⃣ `user.name=Deepak`

👉 Ye **tumhara Git username** hai

📌 Jab bhi commit hota hai:

```bash
git commit -m "message"
```

Git bolta hai:

> Ye commit **Deepak** ne kiya

---

### 1️⃣2️⃣ `user.email=workwith.deepakprj@gmail.com`

👉 Ye **sabse important** hai 🔥

📌 GitHub isi email se:

* Commit ko tumhare account se link karta hai
* Green contribution graph banata hai

✔️ Ye email GitHub account wali honi chahiye

---

### **2.3 Create GitHub Account**
1. Go to: https://github.com/
2. Sign up with your student email
3. Apply for GitHub Student Pack (free benefits!)

---

## <span style="color:red"><b>PART 1: PUSHING YOUR OWN PROJECT TO YOUR GITHUB ACCOUNT</b></span>

### **Scenario: You have a project on your computer and want to put it on GitHub**

### **Step 1: Prepare Your Project**
```
On your computer:
my-project/
├── index.html
├── style.css
└── script.js
```

### **Step 2: Initialize Git Locally**
```bash
# Open terminal/command prompt
cd path/to/my-project

# Initialize Git repository
git init

# Check status (files will be red = untracked)
git status
```
![git init](/resources/git_init.png "git init")


### **Step 3: Create Repository on GitHub**
1. Go to https://github.com
2. Click **"+"** → **"New repository"**
3. Repository name: `my-project`
4. **IMPORTANT: DO NOT** initialize with README, .gitignore, or license
5. Click **"Create repository"**

### **Step 4: Link Local Project to GitHub**
```bash
# Copy this command from GitHub page (look for "…or push an existing repository")
git remote add origin https://github.com/YOUR-USERNAME/my-project.git

# Verify connection
git remote -v
# Should show:
# origin  https://github.com/YOUR-USERNAME/my-project.git (fetch)
# origin  https://github.com/YOUR-USERNAME/my-project.git (push)
```
![git remote](/resources/git_remote.png )

### **Step 5: Add, Commit, and Push**
```bash
# Add all files to staging area
git add .
# OR add specific files: git add index.html style.css

# Commit with message
git commit -m "Initial commit: Added project files"

# Push to GitHub (first time requires -u)
git push -u origin main
# After first time, just use: git push
```

![git add , commit ](/resources/git_track_status.png )


![git add , commit ](/resources/git_commit_m.png )

### NOw git push operation 

![git add , commit ](/resources/git_push.png )

### Login credential 

![git add , commit ](/resources/connect_github.png )


![git add , commit ](/resources/git_push_final.png )

### **Step 6: Verify on GitHub**
1. Refresh your GitHub repository page
2. You should see all your files
3. Click on them to view contents

---


---

# 🔐NOW  SSH Method – Step by Step Guide

### What do you think about this ?

![What do you think about this?](/resources/ssh_page.png )

---

# 🧠 First Understand the Concept

SSH authentication works using **two keys**:

* **Private Key** 🔑 → Stays on your computer (keep it secret)
* **Public Key** 🔓 → Added to your GitHub account

When you connect:

> GitHub checks whether your private key matches the public key stored in your account.

If they match → Access granted ✅

No password or PAT required every time.

---

# 🚀 STEP 1: Check If SSH Key Already Exists

Run:

```bash
ls ~/.ssh
```

![ssh_info](/resources/ssh_info.png)


```bash
ssh
```

![ssh_info](/resources/ssh_info.png)



If you see files like:

* `id_rsa`
* `id_ed25519`

Then you already have SSH keys.

If not → Generate a new one.

---

# 🚀 STEP 2: Generate a New SSH Key (Recommended: ed25519)

Run:

```bash
ssh-keygen -t ed25519 -C "Apna.email.likh.na@gmail.com"
```

Press **Enter** through the prompts.
Passphrase is optional.

Your key will be saved in:

```
C:\Users\YourUsername\.ssh\
```

```bash
 ssh-keygen -t ed25519 -C "kgop.....@gmail.com"      
```

![ssh_info](/resources/ssh_keygen.png)


---

# 🚀 STEP 3: Start the SSH Agent

Start the agent:

```bash
eval "$(ssh-agent -s)"
```

Add your key:

```bash
ssh-add ~/.ssh/id_ed25519
```

---

# 🚀 STEP 4: Copy Your Public Key

Run:

```bash
cat ~/.ssh/id_ed25519.pub
```

Copy the entire output (it starts with `ssh-ed25519`).

---

# 🚀 STEP 5: Add SSH Key to GitHub

1. Log in to your correct GitHub account (**Kgsflink**)
2. Go to **Settings**
3. Click **SSH and GPG Keys**
4. Click **New SSH Key**
5. Paste the copied public key
6. Save

---

# 🚀 STEP 6: Test SSH Connection

Run:

```bash
ssh -T git@github.com
```

If successful, you’ll see:

```
Hi Kgsflink! You've successfully authenticated...
```

---

# 🚀 STEP 7: Change Remote URL to SSH (Important)

Right now you're using HTTPS:

```
https://github.com/Kgsflink/Github-operation
```

Change it to SSH:

```bash
git remote set-url origin git@github.com:Kgsflink/Github-operation.git
```

Verify:

```bash
git remote -v
```

It should now show:

```
git@github.com:Kgsflink/Github-operation.git
```

---

# 🚀 STEP 8: Push Your Code

Now push:

```bash
git push -u origin main
```

It should push successfully without asking for password 🎉

---

# 🔎 If You Get an Error

Run:

```bash
ssh -vT git@github.com
```

This will show detailed debug output to identify the problem.

---

# 🎯 Final Flow Summary

1. Generate SSH key
2. Add public key to GitHub
3. Change remote to SSH
4. Push


---





## **PART 2: CONTRIBUTING TO OTHERS' PROJECTS (FORK → CLONE → PUSH)**

### **Scenario: Your friend/classmate has a project and you want to add features**

### **Method A: Fork & Pull Request (Most Common for Open Source)**

### **Step 1: Fork the Repository**
1. Go to friend's repository: `https://github.com/friend/project`
2. Click **"Fork"** button (top right)
3. This creates a copy in **YOUR account**: `https://github.com/YOUR-USERNAME/project`

### **Step 2: Clone to Your Computer**
```bash
# Clone YOUR fork (not the original!)
git clone https://github.com/YOUR-USERNAME/project.git

# Navigate into project
cd project

# Check remote (should point to your fork)
git remote -v
# origin  https://github.com/YOUR-USERNAME/project.git (fetch)
# origin  https://github.com/YOUR-USERNAME/project.git (push)
```

### **Step 3: Connect to Original Repository (Optional but Recommended)**
```bash
# Add original repository as "upstream"
git remote add upstream https://github.com/friend/project.git

# Verify both remotes
git remote -v
# origin    https://github.com/YOUR-USERNAME/project.git (fetch/push)
# upstream  https://github.com/friend/project.git (fetch/push)
```

### **Step 4: Create a Feature Branch (ALWAYS DO THIS!)**
```bash
# Never work on main branch directly
git checkout -b add-new-feature
# Now you're on "add-new-feature" branch
```

### **Step 5: Make Your Changes**
1. Edit files in your project
2. Add new features/fix bugs

### **Step 6: Commit and Push to YOUR Fork**
```bash
# Check what you changed
git status

# Add changes
git add .

# Commit
git commit -m "Added new feature: [describe what you did]"

# Push to YOUR fork (origin)
git push origin add-new-feature
```

### **Step 7: Create Pull Request on GitHub**
1. Go to YOUR fork on GitHub
2. You'll see a yellow banner: "Your recently pushed branches: add-new-feature"
3. Click **"Compare & pull request"**
4. Add description: "I added [feature] because [reason]"
5. Click **"Create pull request"**
6. Now your friend can review and merge your changes

### **Step 8: Keep Your Fork Updated**
```bash
# Switch to main branch
git checkout main

# Pull updates from YOUR fork (if any)
git pull origin main

# Fetch updates from original repository
git fetch upstream

# Merge original's changes into your main
git merge upstream/main

# Push updated main to your fork
git push origin main

# Now your fork is synced with original
```

---

## **Method B: Direct Collaboration (When You Have Write Access)**

### **Scenario: You're added as collaborator on friend's project**

### **Step 1: Get Added as Collaborator**
1. Friend goes to repository → Settings → Collaborators
2. Friend adds your GitHub username
3. You accept invitation from email

### **Step 2: Clone Directly (No Fork Needed)**
```bash
# Clone friend's repository directly
git clone https://github.com/friend/project.git

cd project
```

### **Step 3: Create Your Branch**
```bash
# Always create your own branch
git checkout -b your-feature-branch
```

### **Step 4: Make Changes & Push**
```bash
# Make your changes
# Add and commit
git add .
git commit -m "Added new feature"

# Push directly to friend's repository
git push origin your-feature-branch
```

### **Step 5: Merge via Pull Request**
1. Go to the repository on GitHub
2. Switch to your branch
3. Click **"Pull request"** → **"New pull request"**
4. Create PR for review

---

## **PART 3: COMPLETE WORKFLOW EXAMPLE**

### **Project: Building a To-Do List App Together**

### **Day 1: Setting Up (Team Leader)**
```bash
# Team leader creates repository
# On GitHub: New repo → todo-list-app

# Team leader clones and sets up
git clone https://github.com/team-leader/todo-list-app.git
cd todo-list-app
echo "# To-Do List App" >> README.md
git add README.md
git commit -m "Initial setup"
git push
```

### **Day 2: You Join as Contributor**
```bash
# 1. Fork the repository on GitHub
# 2. Clone YOUR fork
git clone https://github.com/YOUR-USERNAME/todo-list-app.git
cd todo-list-app

# 3. Set up remotes
git remote add upstream https://github.com/team-leader/todo-list-app.git

# 4. Create feature branch
git checkout -b add-dark-mode

# 5. Make changes to CSS for dark mode
# ... edit style.css ...

# 6. Commit and push
git add style.css
git commit -m "Added dark mode theme"
git push origin add-dark-mode

# 7. Create Pull Request on GitHub
```

### **Day 3: Another Member Updates Main**
```bash
# Meanwhile, someone else added a feature
# You need to update your fork

# Switch to main branch
git checkout main

# Pull updates from original
git pull upstream main

# Update your fork
git push origin main

# Update your feature branch
git checkout add-dark-mode
git merge main
# Fix conflicts if any
git push origin add-dark-mode
```

---

## **PART 4: COMMON SITUATIONS & SOLUTIONS**

### **Situation 1: "Permission Denied" When Pushing**
**Solution:**
```bash
# Check if you're pushing to correct repository
git remote -v

# If cloning someone else's repo without fork:
# 1. Fork it first on GitHub
# 2. Update remote:
git remote set-url origin https://github.com/YOUR-USERNAME/repo.git
```

### **Situation 2: "Updates Were Rejected"**
```bash
# Someone else pushed changes
# Pull first, then push
git pull origin main
# Resolve conflicts if any
git push origin main
```

### **Situation 3: Accidentally Worked on Main Branch**
```bash
# Save your changes
git stash

# Create new branch
git checkout -b correct-branch-name

# Restore changes
git stash pop

# Remove changes from main
git checkout main
git reset --hard HEAD
```

---

## **PART 5: VISUAL GUIDE TO GIT FLOWS**

### **Your Own Project:**
```
Your Computer → Your GitHub
1. git init
2. git add, commit
3. git push
```

### **Contributing to Others (Fork Workflow):**
```
Original GitHub → Your GitHub → Your Computer → Your GitHub → Original GitHub
1. Fork         2. Clone      3. Make changes 4. Push        5. Pull Request
```

### **Team Collaboration:**
```
GitHub (Shared) → Everyone's Computer → GitHub (Shared)
1. Clone         2. Work on branches   3. Push & PR
```

---

## **PART 6: QUICK REFERENCE CARD**

### **For Your Own Projects:**
```bash
# First time setup
git init
git add .
git commit -m "First commit"
git branch -M main
git remote add origin https://github.com/YOUR-USERNAME/REPO.git
git push -u origin main

# Daily work
git add .
git commit -m "Message"
git push
```

### **For Contributing to Others:**
```bash
# Fork on GitHub first!
git clone https://github.com/YOUR-USERNAME/REPO.git
cd REPO
git remote add upstream https://github.com/ORIGINAL-OWNER/REPO.git
git checkout -b feature-branch
# Make changes
git add .
git commit -m "Changes"
git push origin feature-branch
# Create PR on GitHub
```

### **To Update Your Fork:**
```bash
git checkout main
git fetch upstream
git merge upstream/main
git push origin main
```

---

## **PART 7: PRACTICAL EXERCISE**

### **Exercise 1: Push Your Resume**
1. Create folder `my-resume`
2. Add `resume.html`, `resume.css`
3. Push to your GitHub
4. Share link with friends

### **Exercise 2: Contribute to Class Project**
1. Find classmate's repository
2. Fork it
3. Add your name to `CONTRIBUTORS.md`
4. Create pull request

### **Exercise 3: Team Assignment**
1. One person creates repo
2. Adds others as collaborators
3. Each creates branch: `feature-student1`, `feature-student2`
4. All push to same repo
5. Merge via pull requests

---

## **KEY TAKEAWAYS**

1. **Your Projects**: `init → add → commit → push` to YOUR account
2. **Others' Projects**: Fork → Clone YOUR fork → Branch → Push → Pull Request
3. **Team Projects**: Get added → Clone directly → Branch → Push → PR
4. **Always**: Create branches, write good commit messages, pull before push
5. **Never**: Push directly to main, work on someone else's main branch

---

## **TROUBLESHOOTING CHECKLIST**

✅ Are you on the right branch? (`git branch`)
✅ Did you commit your changes? (`git status`)
✅ Are you pushing to the right remote? (`git remote -v`)
✅ Do you have permission? (Check GitHub repository access)
✅ Did you pull latest changes first? (`git pull`)

---

**Remember**: GitHub is like Google Drive for code. 
- **Push** = Upload your files
- **Pull** = Download others' files  
- **Fork** = Make your own copy to edit
- **Pull Request** = Ask to add your changes to original

**Start Simple**: Push 1-2 small projects to your account first. Then try contributing to a friend's project. The more you practice, the more natural it becomes!
