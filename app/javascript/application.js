// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
$(document).on("click", "[data-confirm]", function (e) {
    return confirm($(this).data("confirm"));
});
