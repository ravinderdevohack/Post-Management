console.log(1)

    $(window).scroll(function() {
      var more_posts_url = $('.pagination .next_page ').attr('href')
      console.log(more_posts_url)
        if (more_posts_url && ($(window).scrollTop() > $(document).height() - $(window).height() - 60)) {
            $('.pagination').text('Please wait...')
             $.getScript(more_posts_url)
             return

        }
        return
    })
