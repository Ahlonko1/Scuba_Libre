import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
    this.updateNavbar

  }

  updateNavbar() {

    if (window.scrollY >= 40) {
      this.element.classList.add("navbar-plain")
      this.element.classList.remove("navbar-transparent")

    } else {
      this.element.classList.remove("navbar-plain")
      this.element.classList.add("navbar-transparent")
    }
  }
}
