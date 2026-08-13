# Unive Mentorship Program — 2026 Summer

## Projects Repository

Welcome to the official projects repository for the **Unive Mentorship Program — 2026 Summer**.

This repository serves as the central hub for mentee projects, project resources, and submissions developed as part of the program. Each mentee will work on an assigned project designed to provide practical, hands-on experience with real-world engineering workflows and open-source tools.

---

## 📌 Introduction

The **Unive Mentorship Program** is designed to bridge the gap between academic knowledge and industry expectations through practical learning, mentorship, and project-based development.

As part of the program, each mentee will be assigned a dedicated project. The projects are intended to help mentees:

* Apply fundamental concepts to real-world engineering problems.
* Gain hands-on experience with industry-relevant tools and workflows.
* Develop professional Git and GitHub practices.
* Learn collaborative software development methodologies.
* Build a portfolio of practical engineering work.
* Understand how open-source projects are structured and maintained.

This repository provides the common project structure and guidelines that all mentees are expected to follow.

> [!WARNING]
> **Open-Source Notice**
>
> By using, cloning, forking, contributing to, or referencing this repository, you acknowledge and agree that the code and other non-sensitive project content contributed to the repository may be publicly available under the repository's applicable open-source terms.
>
> **Never commit passwords, API keys, access tokens, private credentials, personal information, confidential company information, or other sensitive data to this repository.**

---

# 🛠️ Prerequisites

Before starting your project, make sure you have:

* [Git](https://git-scm.com/) installed.
* A GitHub account.
* An SSH key configured for your GitHub account.
* Basic familiarity with Git commands.
* Access to your assigned **Project Requirement Book**.

---

# 🔐 Setting Up Git and GitHub Using SSH

SSH authentication is recommended for working with GitHub because it allows you to securely authenticate without repeatedly entering your GitHub credentials.

## Step 1: Configure Git

Open a terminal, Git Bash, or PowerShell and configure your Git identity.

Use the name and email associated with your GitHub account:

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

Verify your configuration:

```bash
git config --global --list
```

---

## Step 2: Generate an SSH Key

Generate a new SSH key using:

```bash
ssh-keygen -t ed25519 -C "your.email@example.com"
```

When prompted:

1. Press **Enter** to accept the default file location.
2. Enter a secure passphrase when prompted, or press **Enter** to leave it empty.

Your public key will normally be created as:

```text
~/.ssh/id_ed25519.pub
```

> **Important:** Never share your private key (`id_ed25519`). Only the `.pub` file should be added to GitHub.

---

## Step 3: Copy Your Public SSH Key

Display your public key:

### Linux / macOS

```bash
cat ~/.ssh/id_ed25519.pub
```

### Windows PowerShell

```powershell
Get-Content ~/.ssh/id_ed25519.pub
```

Copy the entire output.

---

## Step 4: Add the SSH Key to GitHub

1. Sign in to [GitHub](https://github.com/).

2. Click your profile picture.

3. Select **Settings**.

4. Select **SSH and GPG keys**.

5. Click **New SSH key**.

6. Enter a descriptive title, for example:

   `Unive Mentorship Project SSH Key`

7. Paste your public key into the **Key** field.

8. Click **Add SSH key**.

---

## Step 5: Test Your GitHub SSH Connection

Run:

```bash
ssh -T git@github.com
```

If prompted to confirm the host authenticity, type:

```text
yes
```

A successful connection should display a message indicating that GitHub has authenticated your account.

---

# 📚 Git Best Practices

Professional Git usage is an important part of the Unive Mentorship Program. Follow these practices throughout your project.

## 1. Commit Early and Often

Do not wait until the entire project is finished before committing.

Create commits whenever you complete a logical unit of work, such as:

* Implementing a feature.
* Fixing a bug.
* Adding a module.
* Updating documentation.
* Adding tests.
* Refactoring code.

For example:

```bash
git add .
git commit -m "feat: implement UART transmitter"
```

---

## 2. Write Meaningful Commit Messages

Use clear and descriptive commit messages.

We recommend the following prefixes:

| Prefix      | Purpose                                           |
| ----------- | ------------------------------------------------- |
| `feat:`     | Add a new feature                                 |
| `fix:`      | Fix a bug                                         |
| `docs:`     | Documentation changes                             |
| `refactor:` | Code restructuring without changing functionality |
| `test:`     | Add or modify tests                               |
| `build:`    | Build system or dependency changes                |
| `chore:`    | Maintenance tasks                                 |

### Example

```bash
git commit -m "feat: implement SPI controller"
```

Avoid messages such as:

```text
update
changes
final
test
asdf
```

---

## 3. Never Commit Secrets

**Never commit sensitive information**, including:

* Passwords.
* API keys.
* Access tokens.
* SSH private keys.
* Database credentials.
* `.env` files containing secrets.
* Private certificates.
* Confidential documents.
* Personal information.

Use `.gitignore` to prevent sensitive or generated files from being committed.

Example:

```gitignore
.env
*.key
*.pem
node_modules/
build/
```

If you accidentally commit a secret, **do not simply delete the file and commit again**. The secret may still exist in Git history. Immediately notify your mentor and rotate/revoke the exposed credential.

---

## 4. Pull Before You Push

Before pushing your work, synchronize your local repository with the remote repository:

```bash
git pull origin main
```

Resolve any conflicts before pushing your changes.

---

## 5. Keep Your Repository Clean

Do not commit unnecessary generated files, temporary files, IDE configuration, build artifacts, or large binaries unless they are explicitly required by your project.

---

# 👨‍🎓 Mentee Workflow

Follow the workflow below to complete and submit your assigned project.

## Step 1: Fork the Repository

Create your own copy of this repository under your personal GitHub account.

1. Open the main Unive Mentorship Projects repository.
2. Click **Fork**.
3. Select your personal GitHub account as the owner.
4. Keep the default branch selection unless instructed otherwise.
5. Click **Create fork**.

You will now have your own fork of the repository.

---

## Step 2: Clone Your Fork

Clone **your fork**, not the original repository.

Use the SSH URL of your fork:

```bash
git clone git@github.com:YOUR-USERNAME/ump26s-mentee-projects.git
```

For example:

```bash
git clone git@github.com:john-doe/ump26s-mentee-projects.git
```

Navigate into the repository:

```bash
cd ump26s-mentee-projects
```

---

## Step 3: Understand Your Project Structure

Before writing code, carefully review:

* Your assigned project directory.
* The **Project Requirement Book**.
* Existing README files.
* Project specifications.
* Expected directory structure.
* Required tools and dependencies.
* Submission requirements.

**Do not modify the repository structure unless your project requirements allow it.**

---

## Step 4: Work on Your Project

Implement the requirements specified in your Project Requirement Book.

During development:

1. Understand the requirement.
2. Plan your implementation.
3. Implement a small portion.
4. Test your changes.
5. Commit your work.
6. Continue with the next task.

Example:

```bash
git status

git add .

git commit -m "feat: implement project module"
```

---

## Step 5: Review Your Changes

Before pushing your work, check:

```bash
git status
```

Review your changes:

```bash
git diff
```

Check your commit history:

```bash
git log --oneline
```

Make sure that:

* No secrets are present.
* No unnecessary files are included.
* The project builds/runs correctly.
* Tests pass where applicable.
* Documentation is updated.
* Your code follows the project requirements.

---

# 🚀 Step 6: Push Your Changes

Push your changes to your fork:

```bash
git push origin main
```

If your project uses a dedicated branch, push that branch instead:

```bash
git push origin YOUR-BRANCH-NAME
```

> **Recommended:** For larger projects, use a feature branch rather than making all changes directly on `main`.

Example:

```bash
git checkout -b feature/project-implementation
```

---

# 🔄 Step 7: Create a Pull Request

Once your project is complete and ready for review, create a **Pull Request (PR)** from your fork to the original Unive Mentorship repository.

### Create the PR

1. Open your forked repository on GitHub.
2. Go to **Pull requests**.
3. Click **New pull request**.
4. Select the original Unive Mentorship repository as the **base repository**.
5. Select the appropriate `main` branch as the **base branch**.
6. Select your fork as the **head repository**.
7. Select the branch containing your completed project.
8. Review the changes carefully.
9. Reference the relevant project issue, if applicable.
10. Provide a clear PR title.
11. Complete the PR description.
12. Click **Create pull request**.

### Recommended PR Title

```text
Submission: Mentee Project - [Your Name]
```

Example:

```text
Submission: Mentee Project - John Doe
```

---

# ✅ Final Submission Checklist

Before submitting your Pull Request, make sure you have completed all of the following:

* [ ] Git is configured with the correct name and email.
* [ ] GitHub SSH authentication is working.
* [ ] The repository was forked correctly.
* [ ] The fork was cloned using SSH.
* [ ] The assigned project requirements were reviewed.
* [ ] The required directory structure was maintained.
* [ ] All required project functionality was implemented.
* [ ] The project was tested locally.
* [ ] Meaningful Git commits were created.
* [ ] Commit messages follow the recommended format.
* [ ] No passwords, API keys, tokens, or private credentials were committed.
* [ ] No unnecessary generated files were committed.
* [ ] Documentation was updated where required.
* [ ] Changes were pushed to the fork.
* [ ] The relevant issue was referenced in the PR.
* [ ] The Pull Request title and description are clear.
* [ ] The final Pull Request was submitted to the original repository.

---

# 🤝 General Guidelines

The purpose of this repository is not only to complete a project but also to develop **professional engineering practices**.

Mentees are expected to:

* Follow the assigned project requirements.
* Maintain clean and readable code.
* Document important design decisions.
* Use Git professionally.
* Communicate clearly with mentors.
* Respect the work of other contributors.
* Avoid committing confidential or sensitive information.
* Ask for clarification when requirements are unclear.

---

# 🎯 Program Objective

The ultimate goal of these projects is to help mentees move beyond theoretical knowledge and gain experience with **real engineering workflows**.

By completing the project, you should be able to demonstrate not only that you can implement a technical solution, but also that you can:

**Understand → Design → Implement → Test → Document → Collaborate → Deliver**

Good luck with your project, and welcome to the **Unive Mentorship Program — 2026 Summer!** 🚀

---
A professional way to include this would be to add a **Project Directory Structure** section after the “Understand Your Project Structure” section:

````markdown
# 📁 Recommended Project Directory Structure

Each mentee project should follow a clean and consistent directory structure. The exact contents may vary depending on the project requirements, but the following structure is recommended as the standard:

```text
<project-root>/
│
├── rtl/
│   └── # RTL / source design files
│
├── sdc/
│   └── # Timing constraint files (.sdc)
│
├── testbench/
│   └── # Testbench, simulation, and verification files
│
├── doc/
│   └── project_proposal.pdf
│
├── reports/
│   └── # Synthesis, timing, simulation, coverage, or other reports
│
├── output/
│   └── # Generated outputs, netlists, logs, or other required deliverables
│
└── config.mk
````

### 📂 Directory Description

| Directory    | Purpose                                                                                               |
| ------------ | ----------------------------------------------------------------------------------------------------- |
| `rtl/`       | Contains RTL/source design files such as Verilog/SystemVerilog modules.                               |
| `sdc/`       | Contains Synopsys Design Constraints (`.sdc`) and related timing constraint files.                    |
| `testbench/` | Contains testbenches, verification code, simulation scripts, and related files.                       |
| `doc/`       | Contains project documentation, proposals, design documents, and other relevant documentation.        |
| `reports/`   | Contains generated reports such as synthesis, timing, simulation, coverage, and verification reports. |
| `output/`    | Contains final/generated project outputs such as netlists, logs, or other required deliverables.      |

> [!IMPORTANT]
> **Keep source files and generated files separate.**
>
> Source code should be maintained in directories such as `rtl/`, `sdc/`, and `testbench/`. Generated reports and tool outputs should be placed in `reports/` and `output/` respectively.

### Example

A completed project may look like:

```text
my-project/
│
├── rtl/
│   ├── top.sv
│   ├── alu.sv
│   └── register_file.sv
│
├── sdc/
│   └── constraints.sdc
│
├── testbench/
│   ├── tb_top.sv
│   └── run_sim.sh
│
├── doc/
│   └── project_proposal.pdf
│
├── reports/
│   ├── synthesis_report.txt
│   └── timing_report.txt
│
└── output/
    ├── synthesized_netlist.v
    └── simulation.log
```

> [!NOTE]
> Your **Project Requirement Book takes precedence** over this recommended structure. If your assigned project specifies additional directories or a different organization, follow the project-specific requirements.

```

I would also recommend adding a **`README.md` inside each individual project directory** containing the project objective, setup instructions, tools used, how to run the project, and expected results. This will make the repository much more professional and portfolio-friendly.
```
---
**Unive Mentorship Program**
*Learn. Build. Collaborate. Grow.*
