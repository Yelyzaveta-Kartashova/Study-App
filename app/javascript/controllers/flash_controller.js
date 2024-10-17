import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flash"
export default class extends Controller {

  closeErrorFlash() {
    const errorFlash = document.getElementById("flash-alert");
    errorFlash.classList.add("hidden");
  }
}
