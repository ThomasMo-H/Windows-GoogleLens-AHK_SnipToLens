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
