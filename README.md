# git-tutorial (V1.0.0)
This project makes use of AppCoda's SidebarMenu tutorial to demonstrate basic GIT usage for Cal Poly SLO iOS Development Course

Thanks to AppCoda and Cal Poly!

# Welcome!
It's your first day on the job as an iOS developer. You're fresh out of your CSC summer session and ready for your internship!

Let's assume you've already spoken with HR, signed all your tax forms, and received your shiny used Macbook Pro!

Let's also assume it came pre-loaded with XCode because this company has an IT department who values your time :)

# Step 1: Clone the repo
The first thing you will do on your new computer (after setting up your company email) is download the codebase:

In this case, the project is hosted with public visibility on GitHub @ https://github.com/dhalman/git-tutorial.git but you will likely be added to a private team for your actual internship/job.

Open your Terminal, navigate to your desired project directory, and execute the command:
`git clone https://github.com/dhalman/git-tutorial.git`

Note: If the command fails, you likely need to install XCode's command line tools. Please contact your network administrator and politely ask why you weren't given the tools you need. If you're the administrator, simply run:
`xcode-select --install`

Note 2: The clone command was conspicuously left out of the presentation appendix of useful commands, this is mostly due to the fact that `git clone` is only ever run once per development machine on a given project.

After much fanfare, the download should complete and leave you with a new directory named "git-tutorial" in your current directory. You can confirm this by running an `ls` command, or simply `cd git-tutorial`

# Step 2: Look in the box!
Usually, when you first clone a git project, it has a long history with several commits and (if you're lucky) descriptive messages explaining why each change was made. It can be useful to review some of the history entries to get an idea of the project's current status and your team's recent contributions. As mentioned in the slideshow, git commit messages speak volumes about the discipline of the developer.

I highly recommend running the command `git log` whenever you first clone a new repository. I also recommend reading the README.md, but considering you're doing that now... on with the quest!

Once you feel comfortable with where your newly inherited codebase has been, feel free to open the XCode project by double cliking in finder, or running the command `open SidebarMenu.xcodeproj`

# Step 3: Happy Hacking!
Ok, I was going to make this a bonus, but it really is important. Please review the `git log` and note the TODO: in the commit message.

Your job, should you choose to pass this lab, is to follow the instructions there and return here when complete.

# Step 4: Check your status
After making changes to your local copy, it's always good practice to check `git status` to evaluate the changes at the file level. It will tell you: 

   if your files are untracked (need to be added)
   if your changes to tracked files are unstaged (need to be added)
   or if your changes are staged for commit (ready to go)

It's also a great opportunity to confirm you're only making the changes you want to make. Sometimes navigating around XCode and making little nitpicky changes here and there get lost in the history, and make it difficult to track bugs (running a blame command down the road might produce less useful results). You can preview a more detailed diff of each file by running the command `git diff`

If you're happy with your changes (or at least reasonably sure they work as intended) you can stage them for commit with the `git add` command. This command takes a parameter of the filename you would like to stage for commit.

For example run the command `git add SidebarMenu/NewsTableViewController.swift` and then run `git status` to note the difference between changes staged and unstaged. To view a diff of only staged changes (recommended) run `git diff --cached`

# Step 5: Commitment issues
Now that changes are staged, they can be committed to the repository. If you were to run the commit command at this point, only the staged changes would be committed. It would also pop up a `vim` window for you to enter your commit title and message. 

Note: If you are unfamiliar with vim, and you DID run the commit command (oops), please don't panic. Just raise your hand and we will walk you through the basics you'll need for the commit message. Or at least EXIT VIM (https://stackoverflow.blog/2017/05/23/stack-overflow-helping-one-million-developers-exit-vim/)

Before we commit though, we forgot something didn't we? Well first, we forgot to add the rest of our changes... but more importantly: take a look at the output from your last status command. It should say something like "on branch master" near the top?

WARNING: Committing to the master branch is the biggest of no-no's in our feature-branch model!

# Step 6: Feature-Branch
Since our changes are a new feature in the app, we should definitely create a feature branch!

Run the command replacing the <> and their contents with the indicated values:
`git branch <username>/<something-descriptive>`

You created a branch. 5 points to Gryffindor.

Problem is, if you run `git branch` you'll notice your new branch listed, yet the asterisk is still on master. You still have to `git checkout <branchname>` and now you're ready to commit.

Hint: Now that you understand that branch creates branches, and checkout switches branches, here's a one-liner to create and switch to a new branch using -b for --branch.
`git checkout -b <branchname>` 

# Step 7a: The real commitment
Ok now one more time (we will do this a lot, probably best to get used to it), run `git status` and you should see 3 things:
   "On branch <branchname>"
   "Changes staged for commit" (one file)
   "Changes not staged for commit" (whatever else you hacked on)
   
If so, we're in good shape. You can either add the remaining files individually by filename like before, or you can use regex matching if you're fancy... but since we already checked our diffs and made sure we are happy with the changes (right?) feel free to add them all using `git add .`

Note: adding files wholesale can be dangerous in large changes. It is always recommended to view diffs. If diffs are too large, you can add portions of files with `git add -p` which is a slightly more advanced feature. Always check the `git diff --cached` afterward for safety.

Now, finally, we can commit. Run:
`git commit`

# Step 7b: One does not simply... exit vim
Now if you're familiar with vim, skip to Step 7c. 

If not, crash course: press 'i' to enter "insert mode" and then follow the next step. 

When you're done with the Step 7c (entering your commit message) press 'esc' to exit insert mode, and press ':' then 'x' then 'return' to save and quit. 

Feel free to ask more questions about vim in person if you're interested, or follow `vimtutor` once you've completed the lab if you feel brave. (If you accidentally ran vimtutor, and don't feel brave, you can use the ":q!" sequence to quit without saving. Raise your hand if you need help, really, it's ok, visit the stackoverflow link from Step 5)

# Step 7c: The commit message
At this point, you have an open vim window and you should see a description of your status commented out by '#' characters. Above that is an open line for text entry.

The top line is the title. Always leave the second line blank. The remainder is a free form for describing your changes. Be as descriptive as you dare, for remember: you are writing history, and will be blamed (sorry!)

When you're done, save and quit (view Step 7b above if necessary)

# Step 8: Just keep pushing
Now that we're committed, we're done right? If only...

The changes are stored in your local working copy, but they still need to be uploaded to the repository!

Run the command `git push` and you'll get rejected, but with good reason: we don't know where to push to! Just follow the directions provided by the output to set your target upstream (origin). There are global settings we can use to avoid this, but some prefer to do their own upstream management and some fancy tricks with multiple repositories. I'll leave it up to you to investigate on your own time :)

If the push was successful, you should be able to navigate to the github repository and view your changes (select your branch from the dropdown in the sourcecode menu). If you don't see your branch, we're here to help!

# Step 9: The Pull Request
This is something I normally do from the command line using a tool called "hub" which integrates git with github in the comfort of your terminal. This requires installation though, so feel free to explore that on your own machines. In this exercise, we will use the Github.com GUI for creating a pull request.

While viewing your branch in the source code, you should see a "Create Pull Request" button. Press it.

Your source branch should be the one you just pushed to the repo, the target branch should be "develop" (In this case, we are preserving master for the purposes of restarting this tutorial)

Enter your username followed by the same title as your commit, then enter an accurate description (can be the same as the commit if you like, this is the default value when using the command line utility)

Submit your PR and pray your reviewer is having a good day.

# Step 10: Bonus - Creating conflicts
TBD - Coming Soon!
