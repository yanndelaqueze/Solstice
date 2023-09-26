import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="form-range"
export default class extends Controller {
  static targets = ["valuePrice", "labelPrice"];
  connect() {
    console.log(this.labelPriceTarget.innerText);
    console.log(this.valuePriceTarget.value);
  }

  changePrice() {
    // console.log(this.valueTarget.value);
    this.labelPriceTarget.innerText = this.valuePriceTarget.value;
  }
}
