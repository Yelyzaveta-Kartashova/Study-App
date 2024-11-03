# README

# to update tailwind css - you must have this running
tailwindcss -i app/assets/stylesheets/application.tailwind.css -o app/assets/builds/tailwind.css -c config/tailwind.config.js -w -m

# Useful Git commands
`git stash push -a` - this staches all changes in a branch 
`git stash pop` - this retrieves the stash - when you are in the branch you stashed them in

# My notes:
Classes for user_modal bg: 
class = "bg-gray-900/50 dark:bg-gray-900/80 fixed inset-0 z-40"

purge() public
Destroys the blob record and then deletes the file on the service.

// Old way
this.element.querySelector('[data-target="lesson-image-uploader.preview"]')

// New way
this.element.querySelector('[data-lesson-image-uploader-target="preview"]')
