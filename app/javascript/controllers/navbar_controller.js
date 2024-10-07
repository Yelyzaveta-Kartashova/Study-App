import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["menu", "mobileMenu"];

  toggle() {
    this.menuTarget.classList.toggle("hidden");
  }

  hide(event) {
    if (!this.element.contains(event.target)) {
      this.menuTarget.classList.add("hidden");
    }
  }

  toggleMobileMenu() {
    const mobileMenu = document.getElementById("mobile-menu");
    mobileMenu.classList.toggle("hidden");
  }
}