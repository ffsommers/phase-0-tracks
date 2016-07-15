# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
  * Version control allows developers to view the entire history of revisions to one or more files, and merge revisions made by different people. Version control is useful because it allows you to build, test, merge, or roll back new features of your code. In addition version control allows you to work simultaneously on a project with different people as well as it serves as a way of backing up your code base on a server to prevent loss of your code base due to local computer issues. 
* What is a branch and why would you use one?
  * A branch is a local copy of your code base that allows the user to implement a new feature while providing the ability to role back to the original code in the off chance the new feature breaks your app, or you choose not to add the feature. The user can later merge branches with the master branch. 
* What is a commit? What makes a good commit message?
 * A commit is an individual change to one or more files. Essentially its a save point for your code. these "save points" have a unique ID allowing the user to roll back to any previous commit in the advent that the new commit breaks your code or is not wanted. Commits also establish a record of when changes were made and by which user.Commits also contain a message which is a brief description of the changes that were made. A good message answers the following questions: 
   1. Why is this change necessary?
   2. How does it address the issue?
   3. What side effects does this change have?

    
* What is a merge conflict?
  * A merge conflict occurs when your current branch and the branch you want to merge into the current branch have divereged. IE you have commits in your current branch which are not in the other branch and vice versa. 