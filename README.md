# GoogleLens-AHK
Easy way to enable Windows region snipping tool redirection to GoogleLens search

## Description

This repository contains AutoHotkey (AHK) scripts for various automation tasks. The scripts are written in AutoHotkey v2.

## Scripts

###Screenshot and Google Lens
This script allows you to capture a region of the screen, open Google Lens in your default web browser, and paste the captured image from the clipboard into Google Lens for further analysis.

###How It Works
Trigger the Screenshot: Use a predefined keyboard shortcut to initiate the Windows Snipping Tool.
Capture the Region: Select the region of the screen you want to capture.
Open Google Lens: The script automatically opens Google Lens in your default web browser.
Paste the Image: The captured image from the clipboard is pasted into Google Lens for analysis.

#### Prerequisites & Install
Only works for Windows OS.
Before using the scripts in this repository, ensure you have the following:
1. Install AutoHotkey v2 from the official website https://www.autohotkey.com/.
4. Create a new text file with the `.ahk` extension and paste the script below, or directly download it from repo (SnipToLens.ahk).
5. Double-click the `.ahk` file to run the script (don't forget to define AHK.exe as default app to run .ahk files).

#### Usage
1. Press combo Ctrl+Shift+S (or edit it if you want).
2. Select screenshot region
3. Let the magic happen and don't forget to enjoy !

```ahk
; Shortcut (exemple, Ctrl+Shift+S)
^+s::
{
    ; Open Windows Snipping Tool to select a region and wait for screenshot action
    RunWait "ms-screenclip:"

    ; Open Google Lens in your default browser
    Run "https://www.google.com/?olud"

    ; Wait for website to load (adjust if necessary)
    Sleep 5000

    ; Send paste (Ctrl+V) to upload the screenshot stored in clipboard
    Send "^v"
}
return
```
#### Contributing
Contributions are welcome! If you have ideas to improve the scripts or want to add new scripts, feel free to open an issue or submit a pull request.

#### License
This project is licensed under the MIT License. See the LICENSE file for details.

