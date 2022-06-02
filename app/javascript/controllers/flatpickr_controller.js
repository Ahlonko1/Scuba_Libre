import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"
// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ 'dateInput' ]
  connect() {
    flatpickr(this.dateInputTarget, {
    })
  }
}
