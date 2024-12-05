import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["buttonText"];

  toggleGenerateOutput() {
    const generateOutput = document.getElementById("generate-output");
    generateOutput.classList.toggle("hidden");
  }

  toggleShowMore() {
    const showMore = document.getElementById("generated_content");
    const isCollapsed = showMore.classList.contains("line-clamp-4");


    showMore.classList.toggle("overflow-hidden");
    showMore.classList.toggle("line-clamp-4");

    this.buttonTextTarget.innerText = isCollapsed ? "Show less" : "Show more";
  }
}
