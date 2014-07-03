// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require jquery.turbolinks
//= require turbolinks
//= require masonry/jquery.masonry
//= require_tree .


/* For flash messing */
$(function() {
  setTimeout(function(){
    $('.alert').slideUp(500);
  }, 1000);
});

/* instagram */

    var userFeed = new Instafeed({
        get: 'user',
        userId: 1391563010,
        accessToken: '1391563010.467ede5.619c49990ba54786be11544561bd6a14',
        sortBy: 'most-recent',
        limit: '6',
        resolution: 'thumbnail',
        template: '<a href="{{link}}" target="_blank" alt="{{location}}" ><img src="{{image}}"  title="{{location}}" /><div class="likes">&hearts; {{likes}}</div></a>'
    });
    userFeed.run();

