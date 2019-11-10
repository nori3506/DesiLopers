import Vue from 'vue';

import vueSample from './components/vueSample';


document.addEventListener("DOMContentLoaded", function(event) {
  new Vue({
    el: '#app',
    data: {
      name: 'norinori'
    },
		components: {
		      'vue-sample': vueSample
		}
  });
});