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

var section3 = document.querySelector('.section3');

section3.addEventListener('click', function(){
	smoothScroll('.section3-partner', 500);
});

var section5 = document.querySelector('.section5');

section5.addEventListener('click', function(){
	smoothScroll('.section5-partner', 500);
});

var section6 = document.querySelector('.section6');

section6.addEventListener('click', function(){
	smoothScroll('.section6-partner', 500);
});

var section7 = document.querySelector('.section7');

section7.addEventListener('click', function(){
	smoothScroll('.section7-partner', 500);
});

var section8 = document.querySelector('.section8');

section8.addEventListener('click', function(){
	smoothScroll('.section8-partner', 500);
});

var section9 = document.querySelector('.section9');

section9.addEventListener('click', function(){
	smoothScroll('.section9-partner', 500);
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

var section13 = document.querySelector('.section13');

section13.addEventListener('click', function(){
	smoothScroll('.section13-partner', 500);
});

var section14 = document.querySelector('.section14');

section14.addEventListener('click', function(){
	smoothScroll('.section14-partner', 500);
});

var section15 = document.querySelector('.section15');

section15.addEventListener('click', function(){
	smoothScroll('.section15-partner', 500);
});

var section21 = document.querySelector('.section21');

section21.addEventListener('click', function(){
	smoothScroll('.section21-partner', 500);
});

var section22 = document.querySelector('.section22');

section22.addEventListener('click', function(){
	smoothScroll('.section22-partner', 500);
});

var section23 = document.querySelector('.section23');

section23.addEventListener('click', function(){
	smoothScroll('.section23-partner', 500);
});

var section24 = document.querySelector('.section24');

section24.addEventListener('click', function(){
	smoothScroll('.section24-partner', 500);
});

var section25 = document.querySelector('.section25');

section25.addEventListener('click', function(){
	smoothScroll('.section25-partner', 500);
});


var section26 = document.querySelector('.section26');

section26.addEventListener('click', function(){
	smoothScroll('.section26-partner', 500);
});


var section29 = document.querySelector('.section29');

section29.addEventListener('click', function(){
	smoothScroll('.section29-partner', 500);
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


var section34 = document.querySelector('.section34');

section34.addEventListener('click', function(){
	smoothScroll('.section34-partner', 500);
});

var section35 = document.querySelector('.section35');

section35.addEventListener('click', function(){
	smoothScroll('.section35-partner', 500);
});

var section36 = document.querySelector('.section36');

section36.addEventListener('click', function(){
	smoothScroll('.section36-partner', 500);
})

var section38 = document.querySelector('.section38');

section38.addEventListener('click', function(){
	smoothScroll('.section38-partner', 500);
});



				
             

