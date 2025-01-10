import { Application } from "@hotwired/stimulus"
import Dropdown from '@stimulus-components/dropdown'
import TextareaAutogrow from 'stimulus-textarea-autogrow'
import Clipboard from '@stimulus-components/clipboard'

const application = Application.start()
application.register('dropdown', Dropdown)
application.register('textarea-autogrow', TextareaAutogrow)
application.register('clipboard', Clipboard)

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
