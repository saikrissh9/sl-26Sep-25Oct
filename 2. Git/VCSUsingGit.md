## ########################
# SCM / VCS using Git
## ########################

## Written by *Linus Torvalds*

## Agenda

    Introduction
    Installation and configuration
    Basic Git operations and commands
    GitHub
    Branching and Merging
    Undoing changes in Git
    Ignoring files in Git

## Source Code Management / Version Control System Softwares
    - Git
    - SVN
    - Accurev
    - Perforce
    - TFS

## Why VCS?
    - Local and remote repos (Backup)
    - Versioning (Commit)
    - Distributed development (Branches)
    - Collaborative
    - Increase in Productivity
    - CI/CD and integration
    - Investigation and Auditing

## Types of VCS:
    - Centralized - SVN, CVS, Accurev
        - Connected to the Server
        - Slow because of the connectivity
    - Distributed - Git, Mercurial
        - Local copy so you can work offline
        - Speed
        

# Why Git?
    - Distributed
    - Fast
    - Excellent with multiple Branch handling
    - Very less administration overhead


## Git Commands

    git config --global user.name <yourname>
    git config --global user.email <youremail>
    git config --list
    git init
    git add . (Staging files)
    git commit -m "commit message"
    git clone URL
    git config --global alias.br branch   //Commands shortcuts
    git ls-files --stage  //list staged files
    git diff file       //compare untracked and commited
    git diff --staged file  //compare staged and commited
    git diff commitid1(old) commitid2(new) //compare two commits
    git status
    git push
    git pull
    git log
    git log --oneline
    git log --author
    git shortlog -s -n
    git branch
    git branch <branchname>
    git checkout <branchname>
    git merge <branchname>
    git merge <branch1> <branch2>
    git rebase
    git remote -v
    git remote add <remotename> <remoteurl>
    git commit --amend
    git reset (alters git history)
    git revert (does not alter, adds additional commit in git history)

**git stashing**

    git stash   //To stash all the files – git stash
    git stash list    //To show the list of files stashed – git stash list
    git stash -- filename    //To stash a single file 
    git stash show    //To show the latest stash or files stashed at 0th position –   
    git stash show {1} or use git stash show <stash@{0}>.    //To show the stashed records at position 1 
    Git stash save “message”    //To stash with a message
    Git stash pop    //To get the files back to work
    Git stash pop {1}    //To get back the stashed files at position 1
    Git stash drop {1} / {stash-id}    //This will remove the files from the position 1 and it will also delete the change completely and u cannot undo this
    Git stash clear    //Remove all the stashed files in one go



**git pull = git fetch + git merge**

    git push origin master
    git push <remote> <branch>
    git push origin mybr


*Trees (Folders) and Blobs (files)*
 
## Class Exercise
    
    Create a GitHub repository
    Add some sample files
    Clone the repository to your local laptop
    add some files locally on your laptop
    Commit changes locally
    Push changes to GitHub
    Verify the changes on GitHub

Git Workflow:

    Make changes to files -----> git commit (local save) ----> git push (pushing your local changes to remote repo)


## References

    https://git-scm.com/
    https://git-scm.com/book/en/v2
    https://www.atlassian.com/git/tutorials/using-branches
    https://jwiegley.github.io/git-from-the-bottom-up/

    