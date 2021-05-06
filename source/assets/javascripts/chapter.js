(function addAnchorLinksToContentsTitles() {
  var $chapterContents = $('.chapter-contents')

  if(!$chapterContents.length > 0) return

  $chapterContents.find('h1[id], h2[id], h3[id], h4[id], h5[id], h6[id]').each(function() {
    var $title = $(this)

    $title.prepend($('<a/>', {
      'class': 'local-anchor',
      href: '#' + $title.attr('id'),
      html: $('<span/>', {
        'class': 'local-anchor-content',
        text: '¶'
      })
    }))
  })
})()
