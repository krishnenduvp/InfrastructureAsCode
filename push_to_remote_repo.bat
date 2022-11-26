@echo off 
cls 
echo "********************************************************************" 
echo This batch file will commit and push files to the remote origin 
echo "********************************************************************" 
echo *** press [ctrl][c] to exit or any key to continue *** 
pause 
echo Performing an add for all files in this directory 
git add *
git status
set /p COMMIT_MESSAGE=Enter the commit message:
git commit -m %COMMIT_MESSAGE% 
git status
echo Pushing to GITHUB repository
git push origin prod
echo "**********************************************" 
echo All files pushed to remote repository
echo "**********************************************" 
pause
