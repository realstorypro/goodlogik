(function (cjs, an) {

var p; // shortcut to reference prototypes
var lib={};var ss={};var img={};
lib.ssMetadata = [
		{name:"monetary_supply_atlas_", frames: [[0,0,515,1326],[0,1473,370,143],[0,1328,372,143],[0,1618,370,143],[0,1763,321,143]]}
];


// symbols:



(lib.CachedBmp_2 = function() {
	this.initialize(ss["monetary_supply_atlas_"]);
	this.gotoAndStop(0);
}).prototype = p = new cjs.Sprite();



(lib.CachedBmp_5 = function() {
	this.initialize(ss["monetary_supply_atlas_"]);
	this.gotoAndStop(1);
}).prototype = p = new cjs.Sprite();



(lib.CachedBmp_4 = function() {
	this.initialize(ss["monetary_supply_atlas_"]);
	this.gotoAndStop(2);
}).prototype = p = new cjs.Sprite();



(lib.CachedBmp_3 = function() {
	this.initialize(ss["monetary_supply_atlas_"]);
	this.gotoAndStop(3);
}).prototype = p = new cjs.Sprite();



(lib.CachedBmp_1 = function() {
	this.initialize(ss["monetary_supply_atlas_"]);
	this.gotoAndStop(4);
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


(lib.money = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.instance = new lib.CachedBmp_2();
	this.instance.setTransform(-3.95,-3.95,0.3077,0.3077);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

	this._renderFirstFrame();

}).prototype = getMCSymbolPrototype(lib.money, new cjs.Rectangle(-3.9,-3.9,158.4,408), null);


// stage content:
(lib.monetarysupply = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// coinholder_c
	this.instance = new lib.money();
	this.instance.setTransform(965.2,684.65,1,0.375,0,0,0,75.2,200.2);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(54).to({scaleY:0.975,y:563.85},20).wait(55).to({scaleY:0.375,y:684.65},30).wait(26));

	// coinholder_b
	this.instance_1 = new lib.money();
	this.instance_1.setTransform(685.2,734.75,1,0.125,0,0,0,75.2,200);

	this.timeline.addTween(cjs.Tween.get(this.instance_1).wait(54).to({regY:200.3,scaleY:0.325,y:694.7},20).wait(55).to({regY:200,scaleY:0.125,y:734.75},30).wait(26));

	// coinholder_a
	this.instance_2 = new lib.money();
	this.instance_2.setTransform(405.2,709.65,1,0.25,0,0,0,75.2,200);

	this.timeline.addTween(cjs.Tween.get(this.instance_2).wait(54).to({regY:200.3,scaleY:0.6499,y:629.45},20).wait(55).to({regY:200,scaleY:0.25,y:709.55},30).wait(26));

	// monetary_supply
	this.instance_3 = new lib.money();
	this.instance_3.setTransform(125.2,635.1,1,0.625,0,0,0,75.2,201.8);

	this.timeline.addTween(cjs.Tween.get(this.instance_3).to({scaleY:1.625,y:434.65},39).wait(90).to({scaleY:0.625,y:635.1},30).wait(26));

	// background
	this.instance_4 = new lib.CachedBmp_5();
	this.instance_4.setTransform(874.4,770,0.5,0.5);

	this.instance_5 = new lib.CachedBmp_4();
	this.instance_5.setTransform(591.95,769.25,0.5,0.5);

	this.instance_6 = new lib.CachedBmp_3();
	this.instance_6.setTransform(310.95,769.25,0.5,0.5);

	this.instance_7 = new lib.CachedBmp_1();
	this.instance_7.setTransform(42.85,769.25,0.5,0.5);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.instance_7},{t:this.instance_6},{t:this.instance_5},{t:this.instance_4}]}).wait(185));

	this._renderFirstFrame();

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(589.4,532.3,470.0000000000001,309.20000000000005);
// library properties:
lib.properties = {
	id: '9BDF0C64F1184F7A832CF12FAA71C4F0',
	width: 1093,
	height: 864,
	fps: 24,
	color: "#FFFFFF",
	opacity: 1.00,
	manifest: [
		{src:"images/monetary_supply_atlas_.png", id:"monetary_supply_atlas_"}
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
an.compositions['9BDF0C64F1184F7A832CF12FAA71C4F0'] = {
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