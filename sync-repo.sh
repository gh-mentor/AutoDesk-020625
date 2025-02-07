# This bash script uses git to synchronize changes between the local and the remote GitHub repository on branch 'main'.

# steps:
# 1. pull changes from remote repository
# 2. stage all changes
# 3. commit changes with message 'Updated'
# 4. push changes to remote repository on branch 'main'.

# pull changes from remote repository
git pull origin main

# stage all changes
git add .

# commit changes with message 'Updated'
git commit -m "Updated"

# push changes to remote repository on branch 'main'
git push origin main

# echo message to the terminal to indicate that the synchronization is complete
echo "Synchronization complete"





