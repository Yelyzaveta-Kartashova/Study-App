import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["comment"]

  connect() {
    const currentUserId = document.body.dataset.currentUserId
    const commentUserId = this.element.dataset.userId
    const bubble = this.element.querySelector(".comment-bubble")

    if (commentUserId === currentUserId) {
      this.element.classList.add("justify-end", "flex-row-reverse")
      bubble.classList.add("bg-white", "text-black")
    } else {
      bubble.classList.add("bg-green-100", "text-gray-900")
    }
  }
}
