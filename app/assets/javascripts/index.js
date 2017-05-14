/* global Vue, $ */

document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      showModal: false,
      currentName: '',
      currentDescription: '',
      races: [],
      alignments: [],
      backgrounds: [],
      charClasses: [],
      startCharacter: ""
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
    },
    methods: {
      revealModal: function(inputRace) {
        this.showModal = true;
        this.currentName = inputRace.name;
        this.currentDescription = inputRace.description;
      },
      newCharacter: function() {
        console.log("this will eventually have character attributes, getting from user/data values");
        this.startCharacter = "";
      }
    },
    components: {
      modal: {
        template: '#modal-template'
      }
    }
  });
});


