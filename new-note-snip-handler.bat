@echo off
MOVE /Y %~1 C:\Users\math0\Dropbox\emacs\org\shots
start "" "org-protocol://capture?template=S&url=file:C:\Users\math0\Dropbox\emacs\org\shots\%~nx1"
