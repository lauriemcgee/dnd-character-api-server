/* global Vue, $, dynamics, pdfMake */


// THIS IS WHAT MAKES THE HEADER BOX BOUNCY
Vue.component('draggable-header-view', {
  template: '#header-view-template',
  data: function() {
    return {
      dragging: false,
      // quadratic bezier control point
      c: { x: 160, y: 160 },
      // record drag start point
      start: { x: 0, y: 0 }
    };
  },
  computed: {
    headerPath: function() {
      return 'M0,0 L320,0 320,160' +
        'Q' + this.c.x + ',' + this.c.y +
        ' 0,160';
    },
    contentPosition: function() {
      var dy = this.c.y - 160;
      var dampen = dy > 0 ? 2 : 4;
      return {
        transform: 'translate3d(0,' + dy / dampen + 'px,0)'
      };
    }
  },
  methods: {
    startDrag: function(e) {
      e = e.changedTouches ? e.changedTouches[0] : e;
      this.dragging = true;
      this.start.x = e.pageX;
      this.start.y = e.pageY;
    },
    onDrag: function(e) {
      e = e.changedTouches ? e.changedTouches[0] : e;
      if (this.dragging) {
        this.c.x = 160 + (e.pageX - this.start.x);
        // dampen vertical drag by a factor
        var dy = e.pageY - this.start.y;
        var dampen = dy > 0 ? 1.5 : 4;
        this.c.y = 160 + dy / dampen;
      }
    },
    stopDrag: function() {
      if (this.dragging) {
        this.dragging = false;
        dynamics.animate(this.c, {
          x: 160,
          y: 160
        }, {
          type: dynamics.spring,
          duration: 700,
          friction: 280
        });
      }
    }
  }
});


// THIS IS ALL ABOUT THE DATA, YO
document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#scene',
    data: {
      showCharClass: true,
      showRace: false,
      showAlignment: false,
      showBackground: false,
      getUserInfo: false,
      fin: false,
      showModal: false,
      raceChoice: '',
      charClassChoice: '',
      alignmentChoice: '',
      backgroundChoice: '',
      strengthChoice: '',
      dexChoice: '',
      constChoice: '',
      intellChoice: '',
      wisdomChoice: '',
      charismaChoice: '',
      userName: '',
      charName: '',
      currentName: '',
      currentDescription: '',
      currentLangInfo: '',
      races: [],
      alignments: [],
      backgrounds: [],
      charClasses: [],
      characters: [],
      startCharacter: ""
    },
    mounted: function() {
      var scene = document.getElementById('scene');
      var parallax = new Parallax(scene);
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
        // THIS IS MY ATTEMPT AT DYNAMICS
        var moveContainer = document.getElementById("slideOut");
        dynamics.animate(moveContainer, {
          translateX: 350,
          opacity: 0.5
        }, {
          type: dynamics.gravity,
        });
      },
      selectRace: function() {
        this.showRace = !this.showRace;
        this.showAlignment = !this.showAlignment;
        var moveContainer = document.getElementById("slideOut");
        dynamics.animate(moveContainer, {
          translateX: 350,
          opacity: 0.5
        }, {
          type: dynamics.gravity,
        });
      },
      selectAlignment: function() {
        this.showAlignment = !this.showAlignment;
        this.showBackground = !this.showBackground;
        var moveContainer = document.getElementById("slideOut");
        dynamics.animate(moveContainer, {
          translateX: 350,
          opacity: 0.5
        }, {
          type: dynamics.gravity,
        });
      },
      selectBackground: function() {
        this.showBackground = !this.showBackground;
        this.getUserInfo = !this.getUserInfo;
        var moveContainer = document.getElementById("slideOut");
        dynamics.animate(moveContainer, {
          translateX: 350,
          opacity: 0.5
        }, {
          type: dynamics.gravity,
        });
      },
      buildCharacter: function() {
        this.getUserInfo = !this.getUserInfo;
        this.errors = [];
        var params = {charClass: this.charClassChoice, race: this.raceChoice, alignment: this.alignmentChoice, background: this.backgroundChoice, characterName: this.charName, playerName: this.userName};
        $.post("/api/v1/characters", params, function(responseData) {
          console.log('buildCharacter success', responseData);
          this.characters.push(responseData);
          this.buildPdf(responseData);
        }.bind(this)).fail(function(response) {
          console.log('buildCharacter fail', response);
          this.errors = response.responseJSON.errors;
        }.bind(this));
      },
      revealModal: function(input) {
        console.log('revealModal', input);
        this.showModal = true;
        this.currentName = '';
        this.currentDescription = '';
        this.currentLangInfo = '';

        this.currentName = input.name;
        this.currentDescription = input.blurb;
        if (input.langInfo) {
          this.currentLangInfo = input.langInfo;
        }
      },
      buildPdf: function(inputData) {
        var character = inputData;
        var docDefinition = {
          content: [
            `You have chosen your fate as ${character.character_name}`, 'Here are the major things you should know:',
            {
              // to treat a paragraph as a bulleted list, set an array of items under the ul key
              ul: [
                character.char_class,
                character.level,
                character.background,
                character.player_name,
                character.race,
                character.alignment,
                character.experience_points,
                character.strength,
                character.dexterity,
                character.constitution,
                character.intelligence,
                character.wisdom,
                character.charisma,
                character.armor_class,
                character.speed,
                character.hit_dice,
                character.ideals,
                character.bonds,
                character.flaws,
                character.equipment,
                character.other_proficiencies_and_languages
              ]
            },
            'Make sure you bring this page to your Dungeon Master-they can take things from here!'
          ]
        };
        pdfMake.createPdf(docDefinition).open();
      }
    },
  });
});

