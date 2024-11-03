// app/javascript/trix-editor-overrides.js
// this file is to stop people uploading huge files and unwanted files
window.addEventListener("trix-file-accept", function(event) {
  const maxFileSize = 12*1024*1024; // 12MB

  if (event.file.size > maxFileSize) {
    event.preventDefault()
    alert("This file is too large. Please format to less than 12mb")
  }
})

window.addEventListener("trix-file-accept", function(event) {
  const acceptedTypes = ['image/jpeg', 'image/png']
  if (!acceptedTypes.includes(event.file.type)) {
    event.preventDefault()
    alert("Only supports attachment of jpeg or png files")
  }
})