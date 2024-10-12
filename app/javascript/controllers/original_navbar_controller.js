import { Controller } from "@hotwired/stimulus";

export default class extends Controller {


  toggleSubjectsMenu() {
    const mobileMenu = document.getElementById("subjects-menu");
    mobileMenu.classList.toggle("hidden");
    
    console.log('subjects menu')
  }

  toggleTopicsMenu() {
    const mobileMenu = document.getElementById("topics-menu");
    mobileMenu.classList.toggle("hidden");
    console.log('topics menu')
  }

  toggleMobileMenu() {
    const mobileMenu = document.getElementById("mobile-menu");
    mobileMenu.classList.toggle("hidden");
    console.log('mobile')
  }

  hello(e) {
    e.preventDefault()
    console.log('hi')
  }

}