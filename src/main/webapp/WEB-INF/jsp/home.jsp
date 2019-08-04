<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<%@ include file="common/header.jspf"%>
	<%@ include file="common/navigation.jspf"%>
	<div class="typedjs">
		<div class="wrap">
			<div class="type-wrap">
				<div id="typed-strings">
					<span>Welcome to </span>
					<p>Billing</p>
					<p>Web Application...</p>
				</div>
				<h1 id="typed" style="white-space: pre;"></h1>
			</div>
		</div>
	</div>

</body>
<script src="js/typed.min.js"></script>
<script> 
  document.addEventListener('DOMContentLoaded', function() {
	  var typed = new Typed('#typed', {
	    stringsElement: '#typed-strings',
	    typeSpeed: 100,
	    backSpeed: 20,
	    startDelay: 500,
	    loop: true,
	    loopCount: Infinity,
	    onComplete: function(self) {
	      prettyLog('onComplete ' + self);
	    },
	    preStringTyped: function(pos, self) {
	      prettyLog('preStringTyped ' + pos + ' ' + self);
	    }
	  /**/
	  });

	  
	});

	function prettyLog(str) {
	  //console.log('%c ' + str, 'color: green; font-weight: bold;');
	}

	function toggleLoop(typed) {
	  if (typed.loop) {
	    typed.loop = false;
	  } else {
	    typed.loop = true;
	  }
	}

  </script>
</html>