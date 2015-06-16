// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

/* Author: Jules Rogmans  */
/* Version: 1.0 */
/* Date Created: @date */

"use strict";

window.onload = function(event) {
  size_nav_logo();
}

function size_nav_logo () {
  $('.navbar-logo').css({
    'height': ($('.navbar').innerHeight() / 10) * 8,
    'margin-top': -$('.navbar').innerHeight() / 8
  });
}

window.onresize = function () {
  size_nav_logo();
}