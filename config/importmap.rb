# Pin npm packages by running ./bin/importmap
# 
pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin "stimulus-textarea-autogrow" # @4.1.0

pin "flowbite", to: "https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.turbo.min.js"

pin_all_from "app/javascript/controllers", under: "controllers"

pin "@stimulus-components/dropdown", to: "@stimulus-components--dropdown.js" # @3.0.0
pin "stimulus-use" # @0.52.2
pin "slim-select" # @2.9.0
pin "trix"
pin "@rails/actiontext", to: "actiontext.esm.js"
pin "@stimulus-components/clipboard", to: "@stimulus-components--clipboard.js" # @5.0.0
