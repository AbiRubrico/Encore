function smoothScroll(target,duration){
	var target = document.querySelector(target);
	var targetPosition = target.getBoundingClientRect().top;
	var startPosition = window.pageYOffset;
	var distance = targetPosition - startPosition;
	var startTime = null;

	function animation(currentTime){
		if(startTime === null ) startTime = currentTime;
		var timeElapsed = currentTime - startTime;
		var run = ease(timeElapsed,startPosition,distance,duration);
		window.scrollTo(0,run);
		if(timeElapsed < duration) requestAnimationFrame(animation);
	}

	function ease(t, b, c, d){
		t /= d / 2;
		if (t < 1) return c / 2 * t * t + b;
		t--;
		return -c / 2 * (t * (t - 2) - 1) + b;
	}

	requestAnimationFrame(animation);
}
	
               

var section1 = document.querySelector('.section1');

section1.addEventListener('click', function(){
	smoothScroll('.section1-partner', 500);
});

var section2 = document.querySelector('.section2');

section2.addEventListener('click', function(){
	smoothScroll('.section2-partner', 500);
});

var section7 = document.querySelector('.section7');

section7.addEventListener('click', function(){
	smoothScroll('.section7-partner', 500);
});

var section10 = document.querySelector('.section10');

section10.addEventListener('click', function(){
	smoothScroll('.section10-partner', 500);
});

var section11 = document.querySelector('.section11');

section11.addEventListener('click', function(){
	smoothScroll('.section11-partner', 500);
});

var section12 = document.querySelector('.section12');

section12.addEventListener('click', function(){
	smoothScroll('.section12-partner', 500);
});

var section21 = document.querySelector('.section21');

section21.addEventListener('click', function(){
	smoothScroll('.section21-partner', 500);
});

var section22 = document.querySelector('.section22');

section22.addEventListener('click', function(){
	smoothScroll('.section22-partner', 500);
});

var section31 = document.querySelector('.section31');

section31.addEventListener('click', function(){
	smoothScroll('.section31-partner', 500);
});

var section32 = document.querySelector('.section32');

section32.addEventListener('click', function(){
	smoothScroll('.section32-partner', 500);
});


var section33 = document.querySelector('.section33');

section33.addEventListener('click', function(){
	smoothScroll('.section33-partner', 500);
});

				
             

