$('.feed-lists').html("<%= escape_javascript(render partial: 'lists/list', collection: @lists)%>")


