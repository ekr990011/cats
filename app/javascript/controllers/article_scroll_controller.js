import { Controller } from "stimulus"

export default class extends Controller {
  static targets = []

  connect() {
  }

  scrollTop(event) {
    window.scroll(0,0)
  }

  scrollBottom(event) {
    const comments = document.querySelector("body > div.article > div.article__comment").offsetTop
    window.scroll(0, comments)
  }

}
