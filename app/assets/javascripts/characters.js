/* global Vue, $ */

document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      races: [],
      alignments: [],
      backgrounds: [],
      charClasses: [],
      nameFilter: ""
    },
    computed: {
      filteredRaces: function() {
        var lowerNameFilter = this.nameFilter.toLowerCase();
        var filtered = this.races.filter(function(race) {
          var lowerName = race.name.toLowerCase();
          return lowerName.indexOf(lowerNameFilter) !== -1;
        });
        return filtered;
      }
    },
    mounted: function() {
      $.get('/api/v1/races', function(responseData) {
        this.races = responseData;        
      }.bind(this));
      $.get('/api/v1/alignments', function(responseData) {
        this.alignments = responseData;
      }.bind(this));
      $.get('/api/v1/backgrounds', function(responseData) {
        this.backgrounds = responseData;
      }.bind(this));
      $.get('/api/v1/charClasses', function(responseData) {
        this.charClasses = responseData;
      }.bind(this));
    }
  });
});
