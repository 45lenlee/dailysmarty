# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

  filter = ->
    $('#filter form').submit()
    return

  $('.filter-categories').fancySelect().on 'change', ->
    filter()
    return
  body_height = $('body').height()
  $('.article-sidebar').height body_height
  $('a.show-sidebar').click ->
    #$('.article-sidebar').css('display','block');
    $('.article-sidebar').animate { right: '+=250' }, 1000, ->
    $('div.bg2').animate { opacity: 'show' }, 'slow'
    return
  $('div.bg2').click ->
    $('.article-sidebar').animate { right: '-=250' }, 1000, ->
      $(this).hide()
      return
    $('div.bg2').animate { opacity: 'hide' }, 'slow'
    return
  return
