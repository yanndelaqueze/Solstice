import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="test"
export default class extends Controller {
  static targets = ["togglableElement"];

  connect() {
    console.log("Test Stimulus 1 2 3");
    const testStimulus = document.getElementById("test-stimulus");
    console.log(testStimulus);
  }

  coucou() {
    console.log("COUCOU");
    this.togglableElementTarget.classList.toggle("d-none");
  }
}
