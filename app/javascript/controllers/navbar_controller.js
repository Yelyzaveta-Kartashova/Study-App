import { Controller } from "@hotwired/stimulus";

export default class extends Controller {

  toggleSubjectsMenu() {

    const subjectsMenu = document.getElementById("subjects-menu");
    subjectsMenu.classList.toggle("hidden");
      
    console.log('subjects menu');
  }

  toggleTopicsMenu(event) {

    event.preventDefault();
    const topicsMenu = document.getElementById("topics-menu");
    topicsMenu.classList.toggle("hidden");
     
    console.log('topics menu');
  }

  toggleMobileMenu() {

    const mobileMenu = document.getElementById("mobile-menu");
    mobileMenu.classList.toggle("hidden");
    
    console.log('mobile');
  }

  hello(e) {
    console.log(`here: ${e.currentTarget.dataset.subject}`)
    const topicLinks = document.getElementById(`subjects-topics-menu-${e.currentTarget.dataset.subject}`);
    topicLinks.classList.toggle("hidden");
    e.preventDefault();
    console.log('hi');
  }
}
