RestaurantForm = {

init: function(){
$('form#new_restaurant').on('submit', this.save)
  },

  save: function(e) {
    e.preventDefault()
    var $restaurantForm = $(this);
    $.ajax({
      url: $restaurantForm.prop('action'),
      type: $restaurantForm.prop('method'),
      data: $restaurantForm.serialize(),
    }).done(function(restaurant) {
      RestaurantForm.appendRestaurant(restaurant)
    }).error(function(xhr) {
      RestaurantForm.appendErrors(xhr)
    })
  },

  appendRestaurant: function(restaurant){
    $('ul.restaurant_list').append(restaurant.restaurant_template)
  },

  appendErrors: function(xhr){
    $('ul.restaurant_list').before(xhr.responseText)
  }

}

$(document).ready(function(){
  RestaurantForm.init()
})
