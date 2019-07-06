$( document ).ready(function() {
	var jsonData = $('#jsondata-hidden-id').val();
	jsonData = JSON.parse(jsonData);
	$('#jstree').jstree({
	    'core': {
	    	 "themes": {
          'name': 'proton',
          'responsive': true,
          "url": "../static/themes/porton/style.css"
          /*"dots": true,
        "icons": true,
        "url": "../static/themes/style.min.css"*/
      },
	        'data': jsonData,
	    "check_callback" : true
	    },
  "checkbox" : {
    "keep_selected_style" : false
  },
  "plugins" : [  "contextmenu" ]
	});


$('#jstree')
  // listen for event
  .on('changed.jstree', function (e, data) {
    var i, j, r = [];
    console.log(data.selected)
    for(i = 0, j = data.selected.length; i < j; i++) {
      r.push(data.instance.get_node(data.selected[i]).text);
    }
    console.log(r+"=========")
    /*$('#event_result').html('Selected: ' + r.join(', '));*/

  })
});