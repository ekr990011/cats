// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "article", "article_header", "youtube_header", "youtube",
    "socialrank", "socialrank_header", "first_video"]

  connect() {

  }

  expandShrinkArticle() {
    const article = this.articleTarget

    if(article.style.display !== "block") {
      article.style.display = "block"
      this.article_headerTarget.firstElementChild.textContent = "Click To Hide"
    } else {
      article.style.display = ""
      this.article_headerTarget.firstElementChild.textContent = "Click for full Description"
    }
  }

  expandShrinkYoutube() {
    const youtube = this.youtubeTarget

    if(youtube.style.display !== "flex") {
      youtube.style.display = "flex"
      this.youtube_headerTarget.firstElementChild.textContent = "Hide Videos"
    } else {
      youtube.style.display = ""
      this.youtube_headerTarget.firstElementChild.textContent = "Show Videos"
    }
  }

  expandShrinkSocialrank() {
    const socialrank = this.socialrankTarget

    if(socialrank.style.display !== "block") {
      socialrank.style.display = "block"
      this.first_videoTarget.style.display = "none"
      this.youtubeTarget.style.display = ""
      this.socialrank_headerTarget.firstElementChild.textContent = "Hide Rank"
    } else {
      socialrank.style.display = ""
      this.first_videoTarget.style.display = ""
      this.socialrank_headerTarget.firstElementChild.textContent = "Show Rank"
    }
  }

}
