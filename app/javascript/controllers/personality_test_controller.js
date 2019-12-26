import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "question" ]

  connect() {

  }

  nextQuestion(event) {
    const questionNumber = parseInt(event.target.getAttribute('name').slice(1))

    if(questionNumber !== 10) {
      const question = this.questionTargets[questionNumber + 1]
      const scrollY = question.offsetTop
      window.scroll(0, scrollY)
    }
  }

}
