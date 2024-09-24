import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    // console.log('in navbar menu');
  }

  toggleHamburgerMenu() {
    const mobileMenu = document.getElementById('mobile-menu');
    
    if (mobileMenu) {
      mobileMenu.classList.toggle('hidden');
    } 
  }
}
