import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["input", "preview"];

  connect() {
    this.previews = [];
  }

  previewImages() {
    const files = this.inputTarget.files; // Get the selected files
    this.clearPreviews(); // Clear any existing previews

    for (let i = 0; i < files.length; i++) {
      const file = files[i];
      const reader = new FileReader();

      reader.onload = (event) => {
        const img = document.createElement("img");
        img.src = event.target.result; // Set the image source to the file's data URL
        img.classList.add("w-24", "h-24", "object-cover", "m-2", "rounded-md", "shadow-md"); // Tailwind classes for styling
        this.previewTarget.appendChild(img); // Append the image to the preview container
        this.previews.push(file); // Optionally, keep track of the uploaded files
      };

      reader.readAsDataURL(file); 
    }
  }

  clearPreviews() {
    this.previewTarget.innerHTML = ""; // Clear previous previews
    this.previews = []; // Reset the previews array
  }
}
