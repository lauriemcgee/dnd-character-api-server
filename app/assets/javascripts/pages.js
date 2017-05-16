/* global Vue, $ */

document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      currentName: '',
      currentDescription: '',
      races: [],
      alignments: [],
      backgrounds: [],
      charClasses: [],
      startCharacter: ""
    },
    mounted: function() {
      $.get('http://localhost:3000/api/v1/races', function(responseData) {
        this.races = responseData;        
      }.bind(this));
      $.get('http://localhost:3000/api/v1/alignments', function(responseData) {
        this.alignments = responseData;
      }.bind(this));
      $.get('http://localhost:3000/api/v1/backgrounds', function(responseData) {
        this.backgrounds = responseData;
      }.bind(this));
      $.get('http://localhost:3000/api/v1/charClasses', function(responseData) {
        this.charClasses = responseData;
      }.bind(this));
    },
    methods: {
      newCharacter: function() {
        console.log("this will eventually have character attributes, getting from user/data values");
        this.startCharacter = "";
      }
    }
  });
});
