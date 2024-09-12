import {Controller as t} from "@hotwired/stimulus";
import {useTransition as e} from "stimulus-use";
const s = class _Dropdown extends t {
  connect() {
    console.log('yo yo ')
    e(this, {
        element: this.menuTarget
    })
  }
  toggle() {
    console.log('fuck')
    this.toggleTransition()
  }
  hide(t) {
    !this.element.contains(t.target) && !this.menuTarget.classList.contains("hidden") && this.leave()
  }
}
;
s.targets = ["menu"];
let i = s;
export {i as default};