$(document).ready(function() {
  $('.image-container img').load(function() {
    var raw = this;

    if(raw.naturalWidth > raw.naturalHeight ) {
      $(raw).addClass('landscape-picture');
    } else {
      $(raw).addClass('vertical-picture');
    }
  });
});