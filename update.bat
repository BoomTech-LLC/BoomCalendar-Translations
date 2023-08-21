@echo off
set baseBranch="master"
set commitName="Added new words"

git config --add --bool push.autoSetupRemote true
git add .
git commit -m %commitName%
git push
gh pr create --base %baseBranch% -t %commitName% -b ""
gh pr merge -m

start cmd /k (
  cd /d C:\
  cd C:/Users/NarekBoomTech/Desktop/projects/WIX/BoomCalendar-Settings/
  call translation.bat
)