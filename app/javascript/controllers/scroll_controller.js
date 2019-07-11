import { Controller } from "stimulus"

export default class extends Controller {
  static targets = []

  connect() {
    const url = new URLSearchParams(window.location.search)
    const scroll = url.get("scroll")
    if (scroll) {
      scroll === "1" ? this.articles() : this.catBreeds()
    }
  }

  // var url = new URLSearchParams(window.location.search)
  // url.get("scroll")

  articles(event) {
    if(event) {
      event.preventDefault()
    }
    let articles_offset = document.querySelector("body > div.index > h2.article_header").offsetTop
    window.scroll(0, articles_offset)
  }

  catBreeds(event) {
    if(event) {
      event.preventDefault()
    }
    let cats_offset = document.querySelector("body > div.index > h2.cat_header").offsetTop
    window.scroll(0, cats_offset)
  }

}
