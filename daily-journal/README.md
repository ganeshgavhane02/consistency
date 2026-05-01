# Daily Learning Journal

This repository is a template for recording what you learn every day (images + code).

What it does
- Creates a dated entry file daily using GitHub Actions (or manually).
- Each entry goes into `entries/YYYY-MM-DD.md` and can reference images in `entries/images/YYYY-MM-DD/`.

How to use locally
1. Initialize git and push to a new GitHub repo:

```powershell
cd "C:\Users\Ganesh\OneDrive\Desktop\practice any\daily-journal"
git init
git add .
git commit -m "chore: initial repo"
# create a GitHub repo on github.com and add it as remote, then:
git remote add origin https://github.com/USERNAME/REPO.git
git branch -M main
git push -u origin main
```

2. The workflow `.github/workflows/daily-journal.yml` will create a new file each day. You can also run it manually from the Actions tab.

Local helper scripts
- `scripts/new_entry.sh` — create a new entry locally (Linux/macOS/Git Bash)
- `scripts/new_entry.ps1` — create a new entry locally (PowerShell)

Tips
- After the action creates the dated markdown, edit it to add your notes, images, and code snippets.
- Put images under `entries/images/YYYY-MM-DD/` and reference them in the markdown.

If you want, I can also:
- Create the GitHub repo remotely (I will need your permission and a token).
- Add a GitHub Pages configuration to preview images.
