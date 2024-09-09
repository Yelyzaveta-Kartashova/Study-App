# Pin npm packages by running ./bin/importmap

pin "application", to: "application.js"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@stimulus-components/dropdown", to: "https://cdn.skypack.dev/@stimulus-components/dropdown"
pin "dropdown_controller", to: "controllers/dropdown_controller.js"



# config/importmap.rb
pin "@rails/ujs", to: "https://cdnjs.cloudflare.com/ajax/libs/rails-ujs/6.1.4/rails-ujs.min.js", preload: true
pin "@rails/activestorage", to: "https://cdnjs.cloudflare.com/ajax/libs/activestorage/6.1.4/activestorage.min.js", preload: true
pin "@rails/actioncable", to: "actioncable.esm.js"
pin "@rails/activestorage", to: "activestorage.esm.js"
pin "@rails/actiontext", to: "actiontext.esm.js"
pin "trix"

