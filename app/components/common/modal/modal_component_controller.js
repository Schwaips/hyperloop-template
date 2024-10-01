import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["modal", "frame"];

  open() {
    this.modalTarget.setAttribute("open", "");
  }

  close(_event) {
    if (this.modalTarget.hasAttribute("open")) {
      this.modalTarget.removeAttribute("open");
      this.frameTarget.innerHTML = "";
    }
  }

  closeOnFormSubmit(event) {
    event.detail.success && this.close(event);
  }

  closeOnTouch(event) {
    if (!this.modalTarget.contains(event.target)) {
      this.close(event);
    }
  }
}
