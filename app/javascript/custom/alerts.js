document.addEventListener("turbo:load", function() {
    const closeButtons = document.querySelectorAll(".close-alert");
    closeButtons.forEach(button => {
      button.addEventListener("click", function() {
        this.parentElement.style.display = "none";
      });
    });
  });
  