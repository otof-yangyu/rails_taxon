$('[data-title="outer_ancestors"]').dropdown({
  placeholder: false,
  onChange: function(value, text, $selectedItem){
    var search_path = '/nodes/outer';
    var search_url = new URL(window.location.origin + search_path);
    if (value) {
      search_url.searchParams.set('node_id', value);
      search_url.searchParams.set('node_type', this.dataset['nodeType']);
      search_url.searchParams.set('as', this.dataset['as']);
      search_url.searchParams.set('method', this.dataset['method']);
      search_url.searchParams.set('outer', this.dataset['outer']);
      if (this.dataset['index']) {
        search_url.searchParams.set('index', this.dataset['index']);
      }

      Rails.ajax({url: search_url, type: 'GET', dataType: 'script'});
    } else {
      $(this).parent().parent().nextAll('[data-title="outer_ancestors_input"]').remove();
    }
  }
});
