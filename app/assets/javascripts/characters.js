/* global Vue, $ */

document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      characters: []
    },
    mounted: function() {
      $.get('/api/v2/characters', function(responseData) {
        this.characters = responseData;
      }.bind(this));
    }
  });
});
