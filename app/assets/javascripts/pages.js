/* global Vue, $ */

document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      showCharClass: true,
      showRace: false,
      showAlignment: false,
      showBackground: false,
      getUserInfo: false,
      raceChoice: '',
      charClassChoice: '',
      alignmentChoice: '',
      backgroundChoice: '',
      userName: '',
      charName: '',
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
      selectCharClassChoice: function() {
        this.showCharClass = !this.showCharClass;
        this.showRace = !this.showRace;
      },
      selectRace: function() {
        this.showRace = !this.showRace;
        this.showAlignment = !this.showAlignment;
      },
      selectAlignment: function() {
        this.showAlignment = !this.showAlignment;
        this.showBackground = !this.showBackground;
      },
      selectBackground: function() {
        this.showBackground = !this.showBackground;
        this.getUserInfo = !this.getUserInfo;
      },
      buildCharacter: function() {
        this.errors = [];
        var params = {charClass: this.charClassChoice, race: this.raceChoice, alignment: this.alignmentChoice, background: this.backgroundChoice, characterName: this.charName, playerName: this.userName};
        $.post("/api/v1/characters", params, function(responseData) {
          this.people.push(responseData);
          this.newPersonName = "";
          this.newPersonBio = "";
        }.bind(this)).fail(function(response) {
          this.errors = response.responseJSON.errors;
        }.bind(this));
      }
    }
  });
});




      
       