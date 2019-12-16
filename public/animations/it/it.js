(function (cjs, an) {

var p; // shortcut to reference prototypes
var lib={};var ss={};var img={};
lib.ssMetadata = [
		{name:"it_atlas_", frames: [[0,0,680,680],[0,682,550,513]]}
];


// symbols:



(lib.CachedBmp_2 = function() {
	this.initialize(ss["it_atlas_"]);
	this.gotoAndStop(0);
}).prototype = p = new cjs.Sprite();



(lib.Icon = function() {
	this.initialize(ss["it_atlas_"]);
	this.gotoAndStop(1);
}).prototype = p = new cjs.Sprite();
// helper functions:

function mc_symbol_clone() {
	var clone = this._cloneProps(new this.constructor(this.mode, this.startPosition, this.loop));
	clone.gotoAndStop(this.currentFrame);
	clone.paused = this.paused;
	clone.framerate = this.framerate;
	return clone;
}

function getMCSymbolPrototype(symbol, nominalBounds, frameBounds) {
	var prototype = cjs.extend(symbol, cjs.MovieClip);
	prototype.clone = mc_symbol_clone;
	prototype.nominalBounds = nominalBounds;
	prototype.frameBounds = frameBounds;
	return prototype;
	}


(lib.icon = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.instance = new lib.Icon();

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

	this._renderFirstFrame();

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(0,0,550,513);


(lib.diskone = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.instance = new lib.CachedBmp_2();
	this.instance.setTransform(-2.45,-2.45,0.1389,0.1389);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

	this._renderFirstFrame();

}).prototype = getMCSymbolPrototype(lib.diskone, new cjs.Rectangle(-2.4,-2.4,94.4,94.4), null);


(lib.bubble = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.instance = new lib.icon("synched",0);
	this.instance.setTransform(27.85,26.15,0.1006,0.1006,0,0,0,276.9,260);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

	this._renderFirstFrame();

}).prototype = getMCSymbolPrototype(lib.bubble, new cjs.Rectangle(0,0,55.3,51.6), null);


(lib.bubbles = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// logo
	this.instance = new lib.bubble();
	this.instance.setTransform(-3.05,0.1,1,1,0,0,0,27.7,25.8);

	this.timeline.addTween(cjs.Tween.get(this.instance).to({scaleX:1.1025,scaleY:1.1025,x:-3.1},9).to({scaleX:1,scaleY:1,x:-3.05},20).wait(1));

	// disk_one
	this.instance_1 = new lib.diskone();
	this.instance_1.setTransform(-0.15,-3.2,1,1,0,0,0,44.8,44.8);

	this.timeline.addTween(cjs.Tween.get(this.instance_1).to({scaleX:0.9,scaleY:0.9,x:-0.2,y:-3.25},9).to({scaleX:1,scaleY:1,x:-0.15,y:-3.2},20).wait(1));

	this._renderFirstFrame();

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-47.4,-50.4,94.5,94.4);


// stage content:
(lib.it2 = function(mode,startPosition,loop) {
if (loop == null) { loop = false; }	this.initialize(mode,startPosition,loop,{});

	// Layer_14
	this.instance = new lib.bubbles();
	this.instance.setTransform(337.1,572.1,0.9,0.9,0,0,0,246.9,208.8);
	this.instance._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(63).to({_off:false},0).wait(342));

	// Layer_13
	this.instance_1 = new lib.bubbles();
	this.instance_1.setTransform(199.9,253.4,2.1,2.1,0,0,0,-0.2,-3.2);
	this.instance_1._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_1).wait(59).to({_off:false},0).wait(346));

	// Layer_12
	this.instance_2 = new lib.bubbles();
	this.instance_2.setTransform(369.85,318.95,1,1,0,0,0,246.8,208.8);
	this.instance_2._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_2).wait(54).to({_off:false},0).wait(351));

	// Layer_11
	this.instance_3 = new lib.bubbles();
	this.instance_3.setTransform(523.45,318.95,1,1,0,0,0,246.8,208.8);
	this.instance_3._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_3).wait(49).to({_off:false},0).wait(356));

	// Layer_10
	this.instance_4 = new lib.bubbles();
	this.instance_4.setTransform(386.85,202.55,1.464,1.464,0,0,0,-0.1,-3.1);
	this.instance_4._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_4).wait(45).to({_off:false},0).wait(360));

	// Layer_9
	this.instance_5 = new lib.bubbles();
	this.instance_5.setTransform(357.5,419.3,0.81,0.81,0,0,0,-0.1,-3.2);
	this.instance_5._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_5).wait(41).to({_off:false},0).wait(364));

	// Layer_8
	this.instance_6 = new lib.bubbles();
	this.instance_6.setTransform(444.15,479.25,1,1,0,0,0,-0.2,-3.2);
	this.instance_6._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_6).wait(37).to({_off:false},0).wait(368));

	// Layer_7
	this.instance_7 = new lib.bubbles();
	this.instance_7.setTransform(626.6,86.5,1.4579,1.4579,0,0,0,-0.1,-3.2);
	this.instance_7._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_7).wait(33).to({_off:false},0).wait(372));

	// Layer_6
	this.instance_8 = new lib.bubbles();
	this.instance_8.setTransform(511.85,332.1,2.2,2.2,0,0,0,-0.2,-3.2);
	this.instance_8._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_8).wait(28).to({_off:false},0).wait(377));

	// Layer_5
	this.instance_9 = new lib.bubbles();
	this.instance_9.setTransform(753.7,124.35,1,1,0,0,0,-0.2,-3.2);
	this.instance_9.alpha = 0;
	this.instance_9._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_9).wait(24).to({_off:false},0).to({alpha:1},7).wait(374));

	// Layer_4
	this.instance_10 = new lib.bubbles();
	this.instance_10.setTransform(636.2,212.1,1,1,0,0,0,-0.2,-3.2);
	this.instance_10.alpha = 0;
	this.instance_10._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_10).wait(20).to({_off:false},0).to({alpha:1},9).wait(376));

	// Layer_3
	this.instance_11 = new lib.bubbles();
	this.instance_11.setTransform(652.2,490.1,1,1,0,0,0,-0.2,-3.2);
	this.instance_11.alpha = 0;
	this.instance_11._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_11).wait(13).to({_off:false},0).to({alpha:1},11).wait(381));

	// Layer_2
	this.instance_12 = new lib.bubbles();
	this.instance_12.setTransform(820.2,340.1,3.6,3.6,0,0,0,-0.2,-3.2);
	this.instance_12.alpha = 0;
	this.instance_12._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_12).wait(4).to({_off:false},0).to({alpha:1},15).wait(386));

	// Layer_1
	this.instance_13 = new lib.bubbles();
	this.instance_13.setTransform(342.2,322.15,0.9,0.9,0,0,0,-0.1,-3.2);
	this.instance_13.alpha = 0;

	this.timeline.addTween(cjs.Tween.get(this.instance_13).to({alpha:1},11).wait(394));

	this._renderFirstFrame();

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(572.2,292.6,418.0999999999999,244.69999999999993);
// library properties:
lib.properties = {
	id: '16E6ABD51BA14C60907094920DADD1FC',
	width: 1000,
	height: 550,
	fps: 24,
	color: "#2185D0",
	opacity: 1.00,
	manifest: [
		{src:"images/it_atlas_.png", id:"it_atlas_"}
	],
	preloads: []
};



// bootstrap callback support:

(lib.Stage = function(canvas) {
	createjs.Stage.call(this, canvas);
}).prototype = p = new createjs.StageGL();

p.setAutoPlay = function(autoPlay) {
	this.tickEnabled = autoPlay;
}
p.play = function() { this.tickEnabled = true; this.getChildAt(0).gotoAndPlay(this.getTimelinePosition()) }
p.stop = function(ms) { if(ms) this.seek(ms); this.tickEnabled = false; }
p.seek = function(ms) { this.tickEnabled = true; this.getChildAt(0).gotoAndStop(lib.properties.fps * ms / 1000); }
p.getDuration = function() { return this.getChildAt(0).totalFrames / lib.properties.fps * 1000; }

p.getTimelinePosition = function() { return this.getChildAt(0).currentFrame / lib.properties.fps * 1000; }

an.bootcompsLoaded = an.bootcompsLoaded || [];
if(!an.bootstrapListeners) {
	an.bootstrapListeners=[];
}

an.bootstrapCallback=function(fnCallback) {
	an.bootstrapListeners.push(fnCallback);
	if(an.bootcompsLoaded.length > 0) {
		for(var i=0; i<an.bootcompsLoaded.length; ++i) {
			fnCallback(an.bootcompsLoaded[i]);
		}
	}
};

an.compositions = an.compositions || {};
an.compositions['16E6ABD51BA14C60907094920DADD1FC'] = {
	getStage: function() { return exportRoot.stage; },
	getLibrary: function() { return lib; },
	getSpriteSheet: function() { return ss; },
	getImages: function() { return img; }
};

an.compositionLoaded = function(id) {
	an.bootcompsLoaded.push(id);
	for(var j=0; j<an.bootstrapListeners.length; j++) {
		an.bootstrapListeners[j](id);
	}
}

an.getComposition = function(id) {
	return an.compositions[id];
}


an.makeResponsive = function(isResp, respDim, isScale, scaleType, domContainers) {		
	var lastW, lastH, lastS=1;		
	window.addEventListener('resize', resizeCanvas);		
	resizeCanvas();		
	function resizeCanvas() {			
		var w = lib.properties.width, h = lib.properties.height;			
		var iw = window.innerWidth, ih=window.innerHeight;			
		var pRatio = window.devicePixelRatio || 1, xRatio=iw/w, yRatio=ih/h, sRatio=1;			
		if(isResp) {                
			if((respDim=='width'&&lastW==iw) || (respDim=='height'&&lastH==ih)) {                    
				sRatio = lastS;                
			}				
			else if(!isScale) {					
				if(iw<w || ih<h)						
					sRatio = Math.min(xRatio, yRatio);				
			}				
			else if(scaleType==1) {					
				sRatio = Math.min(xRatio, yRatio);				
			}				
			else if(scaleType==2) {					
				sRatio = Math.max(xRatio, yRatio);				
			}			
		}			
		domContainers[0].width = w * pRatio * sRatio;			
		domContainers[0].height = h * pRatio * sRatio;			
		domContainers.forEach(function(container) {				
			container.style.width = w * sRatio + 'px';				
			container.style.height = h * sRatio + 'px';			
		});			
		stage.scaleX = pRatio*sRatio;			
		stage.scaleY = pRatio*sRatio;			
		lastW = iw; lastH = ih; lastS = sRatio;            
		stage.tickOnUpdate = false;            
		stage.update();            
		stage.tickOnUpdate = true;		
	}
}


})(createjs = createjs||{}, AdobeAn = AdobeAn||{});
var createjs, AdobeAn;