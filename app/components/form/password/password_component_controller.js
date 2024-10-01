import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["input", "btn"];
  static values = {
    svgEye: String,
    svgEyeSlash: String,
  };

  connect() {
    this.hasBtnTarget || this._generateToggleBtn();
  }

  toggle() {
    this.inputTarget.type =
      this.inputTarget.type === "password" ? "text" : "password";
  }

  async _generateToggleBtn() {
    const btn = document.createElement("button");
    btn.setAttribute("type", "button");
    btn.setAttribute(
      "data-action",
      "form--password--password-component#toggle"
    );
    btn.setAttribute("data-form--password--password-component-target", "btn");
    btn.innerHTML = this.svgEyeSlashValue + this.svgEyeValue;
    this.inputTarget.insertAdjacentElement("afterend", btn);
  }
}
