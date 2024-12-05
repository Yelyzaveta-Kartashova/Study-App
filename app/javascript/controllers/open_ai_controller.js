import { Controller } from "@hotwired/stimulus";

export default class extends Controller {

  toggleGenerateOutput() {
    const generateOutput = document.getElementById("generate-output");
    generateOutput.classList.toggle("hidden");
  }

  toggleShowMore() {

    const showMoreButtonText = document.getElementById("show-more");
    const showMore = document.getElementById("generated_content");

    showMore.classList.toggle("overflow-hidden");
    showMore.classList.toggle("line-clamp-4");


  }

}
