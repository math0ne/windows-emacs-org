# Org-mode Focused Emacs Setup

This is in my opinion the best way to install and configure emacs for org-mode usage on Windows 10.  There should be an installer that does most of this stuff for emacs by default but here we are with this complicated install process.

## Features

* Global hotkeys access to major functions
* Snipping tool workflow
* Sane-ish keybaord shortcuts
* System tray quick access to major functions

## Keys

## Install Instructions

### Pre-requisits

* https://addons.mozilla.org/en-US/firefox/addon/org-capture/
* https://chrome.google.com/webstore/detail/org-capture/kkkjlfejijcjgjllecmnejhogpbcigdc?hl=en
* http://getgreenshot.org/
* https://www.msys2.org/
* https://www.dropbox.com/

### Replace my username with your own

* My username (math0) will have to be replaced with your own across all files in the repo.

### Set windows %HOME% enviroment variable

* Instructions: https://www.computerhope.com/issues/ch000549.htm
* Add a new user variable HOME = `C:\Users\math0\Dropbox\emacs\home`

### Install Emacs using MSYS2

* From the MSYS2 command line:

```
pacman -S mingw-w64-x86_64-emacs
pacman -S git
```

### Register context and org protocol

This allows you to use the windows context menu and to send to notes to emacs from other programs.

* Run org-protocol.reg
* Run org-context.reg

### _(Optional)_ Configure Greenshot

This allows you to snip screenshots directly into your emacs org setup.

* external command: org-mode: C:\Users\math0\Dropbox\emacs\new-note-snip-handler.bat "{0}"
* set export dir: C:\Users\math0\Dropbox\emacs\org\shots
* set: destination: org-mode
* set capture region: alt-printscreen

### _(Optional)_ Set programs to start on boot

* org-mode-tray.ahk
* greenshot
