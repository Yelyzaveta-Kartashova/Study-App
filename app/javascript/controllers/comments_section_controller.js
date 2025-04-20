import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  toggleOpenSection() {
    const openSection = document.getElementById("open-comments");
    openSection.classList.toggle("hidden");
  }
}
