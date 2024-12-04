import { Controller } from "@hotwired/stimulus";

export default class extends Controller {

  toggleGenerateOutput() {
    const generateOutput = document.getElementById("generate-output");
    generateOutput.classList.toggle("hidden");
  }

}
