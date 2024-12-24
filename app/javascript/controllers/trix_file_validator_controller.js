import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    this.element.addEventListener("trix-file-accept", this.handleFileAccept.bind(this));
  }

  disconnect() {
    this.element.removeEventListener("trix-file-accept", this.handleFileAccept.bind(this));
  }

  handleFileAccept(event) {
    const maxFileSize = 12 * 1024 * 1024; // 12MB
    const acceptedTypes = ['image/jpeg', 'image/png'];

    if (event.file.size > maxFileSize) {
      event.preventDefault();
      alert("This file is too large. Please format to less than 12MB.");
    } else if (!acceptedTypes.includes(event.file.type)) {
      event.preventDefault();
      alert("Only supports attachment of JPEG or PNG files.");
    }
  }
}