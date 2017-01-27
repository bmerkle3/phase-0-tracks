# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
Version control is the system of saving all previous commits for future reference. It is useful because you might add code that unintentionally creates a bug, and want to revert to a previous version of your program. Version control lets you jump back to a version that didn't have the bug, so you can debug by starting fresh' without losing the work that functioned without any bugs. 


* What is a branch and why would you use one?
A branch is the snapshot of code that has been committed as a person makes changes and commit to GitHub. A project you are working on might have various features to be developed. A branch can be made for each feature, so the entire project doesn't have to get changed as the feature is worked on.

* What is a commit? What makes a good commit message?
A commit is a change made to a file. A good commit message describes which changes were made, so if anyone needs to revert to a particular version in the future, they will be able to recognize the version by the message. A commit gets saved on your local repo, so if you want others to be able to see the changes too, you would need to push the commit.

* What is a merge conflict?
A merge conflict occurs when code has been written in different commits. This would commonly happen when teams are working on a project together. If code is attempting to be pushed, but isn't compatible with code from the origin master, the push can't be completed. For example, multiple people may have attempted to edit the same line of code in different ways on the same file from different branches in a Git repo. Edits have to be made on GitHub to resolve this merge conflict.
