(function (cjs, an) {

var p; // shortcut to reference prototypes
var lib={};var ss={};var img={};
lib.ssMetadata = [
		{name:"virality_and_beyond_atlas_", frames: [[0,0,1800,1800]]},
		{name:"virality_and_beyond_atlas_2", frames: [[0,0,1800,1800]]},
		{name:"virality_and_beyond_atlas_3", frames: [[0,0,1684,1122]]},
		{name:"virality_and_beyond_atlas_4", frames: [[0,0,1200,1200]]},
		{name:"virality_and_beyond_atlas_5", frames: [[1141,616,72,72],[1002,616,137,137],[0,1002,686,686],[1002,0,356,356],[1002,358,256,256],[0,0,1000,1000],[688,1002,536,522]]}
];


// symbols:



(lib.CachedBmp_12 = function() {
	this.initialize(ss["virality_and_beyond_atlas_5"]);
	this.gotoAndStop(0);
}).prototype = p = new cjs.Sprite();



(lib.CachedBmp_10 = function() {
	this.initialize(ss["virality_and_beyond_atlas_5"]);
	this.gotoAndStop(1);
}).prototype = p = new cjs.Sprite();



(lib.CachedBmp_9 = function() {
	this.initialize(ss["virality_and_beyond_atlas_5"]);
	this.gotoAndStop(2);
}).prototype = p = new cjs.Sprite();



(lib.CachedBmp_8 = function() {
	this.initialize(ss["virality_and_beyond_atlas_4"]);
	this.gotoAndStop(0);
}).prototype = p = new cjs.Sprite();



(lib.CachedBmp_7 = function() {
	this.initialize(ss["virality_and_beyond_atlas_"]);
	this.gotoAndStop(0);
}).prototype = p = new cjs.Sprite();



(lib.CachedBmp_6 = function() {
	this.initialize(ss["virality_and_beyond_atlas_2"]);
	this.gotoAndStop(0);
}).prototype = p = new cjs.Sprite();



(lib.CachedBmp_5 = function() {
	this.initialize(ss["virality_and_beyond_atlas_5"]);
	this.gotoAndStop(3);
}).prototype = p = new cjs.Sprite();



(lib.CachedBmp_4 = function() {
	this.initialize(ss["virality_and_beyond_atlas_3"]);
	this.gotoAndStop(0);
}).prototype = p = new cjs.Sprite();



(lib._58e91965eb97430e819064f5 = function() {
	this.initialize(ss["virality_and_beyond_atlas_5"]);
	this.gotoAndStop(4);
}).prototype = p = new cjs.Sprite();



(lib.google = function() {
	this.initialize(ss["virality_and_beyond_atlas_5"]);
	this.gotoAndStop(5);
}).prototype = p = new cjs.Sprite();



(lib.logopartimportant = function() {
	this.initialize(ss["virality_and_beyond_atlas_5"]);
	this.gotoAndStop(6);
}).prototype = p = new cjs.Sprite();



(lib.twitter = function() {
	this.initialize(img.twitter);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,2186,2186);// helper functions:

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


(lib.twittericon = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.instance = new lib.twitter();
	this.instance.setTransform(0,0,0.081,0.081);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

	this._renderFirstFrame();

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(0,0,177,177);


(lib.regularlogo = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.instance = new lib.logopartimportant();

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

	this._renderFirstFrame();

}).prototype = getMCSymbolPrototype(lib.regularlogo, new cjs.Rectangle(0,0,536,522), null);


(lib.pulse = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.instance = new lib.CachedBmp_12();
	this.instance.setTransform(4.9,4.9,0.4167,0.4167);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

	this._renderFirstFrame();

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(4.9,4.9,30,30);


(lib.GoogleLogo = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.instance = new lib.google();
	this.instance.setTransform(0,0,0.11,0.11);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

	this._renderFirstFrame();

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(0,0,110,110);


(lib.instagram = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.instance = new lib.CachedBmp_10();
	this.instance.setTransform(587.1,244.3,0.5,0.5);

	this.instance_1 = new lib.CachedBmp_9();
	this.instance_1.setTransform(278.55,278.6,0.5,0.5);

	this.instance_2 = new lib.CachedBmp_8();
	this.instance_2.setTransform(150,150,0.5,0.5);

	this.instance_3 = new lib.CachedBmp_7();
	this.instance_3.setTransform(0,0,0.5,0.5);

	this.instance_4 = new lib.CachedBmp_6();
	this.instance_4.setTransform(0,0,0.5,0.5);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.instance_4},{t:this.instance_3},{t:this.instance_2},{t:this.instance_1},{t:this.instance}]}).wait(1));

	this._renderFirstFrame();

}).prototype = getMCSymbolPrototype(lib.instagram, new cjs.Rectangle(0,0,900,900), null);


(lib.facebooklogo = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.instance = new lib._58e91965eb97430e819064f5();
	this.instance.setTransform(0,0,0.6885,0.6885);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

	this._renderFirstFrame();

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(0,0,176.3,176.3);


(lib.twitterlogo = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.instance = new lib.twittericon("synched",0);
	this.instance.setTransform(75.65,75.65,0.855,0.855,0,0,0,88.5,88.5);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

	this._renderFirstFrame();

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(0,0,151.4,151.4);


(lib.twittergrowth = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.instance = new lib.twitterlogo("synched",0);
	this.instance.setTransform(75.7,75.7,1,1,0,0,0,75.7,75.7);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(19).to({startPosition:0},0).to({scaleX:1.15,scaleY:1.15},30).to({scaleX:1,scaleY:1},20).wait(41));

	this._renderFirstFrame();

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-11.3,-11.3,174,174);


(lib.instagramlogo = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.instance = new lib.instagram();
	this.instance.setTransform(73.9,73.85,0.164,0.164,0,0,0,450.7,450.4);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

	this._renderFirstFrame();

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(0,0,147.6,147.6);


(lib.google_1 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.instance = new lib.GoogleLogo("synched",0);
	this.instance.setTransform(70,69.95,1,1,0,0,0,55,55);

	this.instance_1 = new lib.CachedBmp_5();
	this.instance_1.setTransform(-0.45,-0.45,0.4,0.4);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.instance_1},{t:this.instance}]}).wait(1));

	this._renderFirstFrame();

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-0.4,-0.4,142.4,142.4);


(lib.goodlogikgrowth = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.instance = new lib.regularlogo();
	this.instance.setTransform(96.55,94,0.36,0.36,0,0,0,268.2,261.2);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(9).to({regY:261.3,scaleX:0.288,scaleY:0.288,y:94.05},51).to({regY:261.2,scaleX:0.468,scaleY:0.468},34).to({scaleX:0.36,scaleY:0.36,y:94},5).wait(1));

	this._renderFirstFrame();

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-28.9,-28.2,250.8,244.29999999999998);


(lib.facebookgrowth = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.instance = new lib.facebooklogo("synched",0);
	this.instance.setTransform(88.1,88.1,1,1,0,0,0,88.1,88.1);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(24).to({startPosition:0},0).to({scaleX:1.1,scaleY:1.1},15).to({scaleX:1,scaleY:1},7).wait(64));

	this._renderFirstFrame();

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-8.8,-8.8,193.9,193.9);


(lib.electrode = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.instance = new lib.pulse("synched",0);
	this.instance.setTransform(20,20,1,1,0,0,0,20,20);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(1));

	this._renderFirstFrame();

}).prototype = getMCSymbolPrototype(lib.electrode, new cjs.Rectangle(4.9,4.9,30,30), null);


(lib.instagrampulse = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.instance = new lib.instagramlogo("synched",0);
	this.instance.setTransform(73.8,73.8,1,1,0,0,0,73.8,73.8);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(29).to({startPosition:0},0).to({scaleX:1.15,scaleY:1.15},10).to({scaleX:1,scaleY:1},20).wait(51));

	this._renderFirstFrame();

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-11,-11,169.7,169.7);


(lib.googlegrowth = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.instance = new lib.google_1("synched",0);
	this.instance.setTransform(70.8,70.8,1,1,0,0,0,70.8,70.8);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(19).to({startPosition:0},0).to({scaleX:1.25,scaleY:1.25},12).to({scaleX:1,scaleY:1},18).wait(61));

	this._renderFirstFrame();

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-18.2,-18.2,178,178);


// stage content:
(lib.viralityandbeyond4 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// logos
	this.instance = new lib.facebookgrowth();
	this.instance.setTransform(954.1,644.1,1,1,0,0,0,88.1,88.1);

	this.instance_1 = new lib.googlegrowth();
	this.instance_1.setTransform(893.75,172.7,1,1,0,0,0,70.8,70.8);

	this.instance_2 = new lib.instagrampulse();
	this.instance_2.setTransform(171.95,167.9,1,1,0,0,0,73.8,73.8);

	this.instance_3 = new lib.twittergrowth();
	this.instance_3.setTransform(354.85,720.5,1,1,0,0,0,75.7,75.7);

	this.instance_4 = new lib.goodlogikgrowth();
	this.instance_4.setTransform(580.2,482.1,1,1,0,0,0,96.5,94);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.instance_4},{t:this.instance_3},{t:this.instance_2},{t:this.instance_1},{t:this.instance}]}).wait(103));

	// google_ping_back_copy_copy_copy_copy_copy_copy
	this.instance_5 = new lib.pulse("synched",0);
	this.instance_5.setTransform(884.3,188.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_5._off = true;
	this.instance_5.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_5.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_5).wait(64).to({_off:false},0).to({x:584.3},10).to({y:468.05},10).wait(19));

	// google_ping_back_copy_copy_copy_copy_copy
	this.instance_6 = new lib.pulse("synched",0);
	this.instance_6.setTransform(884.3,188.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_6._off = true;
	this.instance_6.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_6.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_6).wait(59).to({_off:false},0).to({x:584.3},10).to({y:468.05},10).to({_off:true},19).wait(5));

	// google_ping_back_copy_copy_copy_copy
	this.instance_7 = new lib.pulse("synched",0);
	this.instance_7.setTransform(884.3,188.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_7._off = true;
	this.instance_7.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_7.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_7).wait(55).to({_off:false},0).to({x:584.3},10).to({y:468.05},10).to({_off:true},19).wait(9));

	// google_ping_back_copy_copy_copy
	this.instance_8 = new lib.pulse("synched",0);
	this.instance_8.setTransform(884.3,188.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_8._off = true;
	this.instance_8.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_8.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_8).wait(51).to({_off:false},0).to({x:584.3},10).to({y:468.05},10).to({_off:true},19).wait(13));

	// google_ping_back_copy_copy
	this.instance_9 = new lib.pulse("synched",0);
	this.instance_9.setTransform(884.3,188.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_9._off = true;
	this.instance_9.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_9.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_9).wait(48).to({_off:false},0).to({x:584.3},10).to({y:468.05},10).to({_off:true},21).wait(14));

	// google_ping_back_copy
	this.instance_10 = new lib.pulse("synched",0);
	this.instance_10.setTransform(884.3,188.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_10._off = true;
	this.instance_10.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_10.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_10).wait(44).to({_off:false},0).to({x:584.3},10).to({y:468.05},10).to({_off:true},21).wait(18));

	// google_ping_back_copy
	this.instance_11 = new lib.pulse("synched",0);
	this.instance_11.setTransform(884.3,188.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_11._off = true;
	this.instance_11.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_11.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_11).wait(39).to({_off:false},0).to({x:584.3},10).to({y:468.05},10).to({_off:true},1).wait(43));

	// google_light_one
	this.instance_12 = new lib.electrode();
	this.instance_12.setTransform(580.25,482.15,1,1,0,0,0,20,20);

	this.timeline.addTween(cjs.Tween.get(this.instance_12).to({x:884.25},15).to({y:190.05},14).to({_off:true},1).wait(73));

	// facebook_ping_back_copy_copy_copy_copy_copy
	this.instance_13 = new lib.pulse("synched",0);
	this.instance_13.setTransform(904.3,648.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_13._off = true;
	this.instance_13.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_13.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_13).wait(65).to({_off:false},0).to({x:584.3},10).to({y:468.05},10).to({_off:true},1).wait(17));

	// facebook_ping_back_copy_copy_copy_copy
	this.instance_14 = new lib.pulse("synched",0);
	this.instance_14.setTransform(904.3,648.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_14._off = true;
	this.instance_14.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_14.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_14).wait(60).to({_off:false},0).to({x:584.3},10).to({y:468.05},10).to({_off:true},1).wait(22));

	// facebook_ping_back_copy_copy_copy
	this.instance_15 = new lib.pulse("synched",0);
	this.instance_15.setTransform(904.3,648.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_15._off = true;
	this.instance_15.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_15.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_15).wait(56).to({_off:false},0).to({x:584.3},10).to({y:468.05},10).to({_off:true},1).wait(26));

	// facebook_ping_back_copy_copy
	this.instance_16 = new lib.pulse("synched",0);
	this.instance_16.setTransform(904.3,648.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_16._off = true;
	this.instance_16.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_16.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_16).wait(51).to({_off:false},0).to({x:584.3},10).to({y:468.05},10).to({_off:true},1).wait(31));

	// facebook_ping_back_copy
	this.instance_17 = new lib.pulse("synched",0);
	this.instance_17.setTransform(904.3,648.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_17._off = true;
	this.instance_17.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_17.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_17).wait(45).to({_off:false},0).to({x:584.3},10).to({y:468.05},10).to({_off:true},1).wait(37));

	// facebook_ping_back_copy
	this.instance_18 = new lib.pulse("synched",0);
	this.instance_18.setTransform(904.3,648.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_18._off = true;
	this.instance_18.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_18.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_18).wait(39).to({_off:false},0).to({x:584.3},10).to({y:468.05},10).to({_off:true},1).wait(43));

	// facebook_light_one_copy_copy
	this.instance_19 = new lib.electrode();
	this.instance_19.setTransform(580.25,482.15,1,1,0,0,0,20,20);
	this.instance_19._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_19).wait(22).to({_off:false},0).to({x:957.25},16).to({x:956.25,y:578.05},7).to({_off:true},1).wait(57));

	// facebook_light_one_copy
	this.instance_20 = new lib.electrode();
	this.instance_20.setTransform(580.25,482.15,1,1,0,0,0,20,20);
	this.instance_20._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_20).wait(16).to({_off:false},0).to({x:957.25},16).to({x:956.25,y:578.05},7).to({_off:true},1).wait(63));

	// facebook_light_one_copy
	this.instance_21 = new lib.electrode();
	this.instance_21.setTransform(580.25,482.15,1,1,0,0,0,20,20);
	this.instance_21._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_21).wait(8).to({_off:false},0).to({x:957.25},16).to({x:956.25,y:578.05},7).to({_off:true},1).wait(71));

	// twitter_ping_copy_copy_copy_copy
	this.instance_22 = new lib.pulse("synched",0);
	this.instance_22.setTransform(344.3,680.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_22._off = true;
	this.instance_22.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_22.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_22).wait(59).to({_off:false},0).to({x:341.3,y:482.15},10).to({x:584.3,y:468.05},10).to({_off:true},2).wait(22));

	// twitter_ping_copy_copy_copy
	this.instance_23 = new lib.pulse("synched",0);
	this.instance_23.setTransform(344.3,680.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_23._off = true;
	this.instance_23.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_23.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_23).wait(54).to({_off:false},0).to({x:341.3,y:482.15},10).to({x:584.3,y:468.05},10).to({_off:true},2).wait(27));

	// twitter_ping_copy_copy
	this.instance_24 = new lib.pulse("synched",0);
	this.instance_24.setTransform(344.3,680.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_24._off = true;
	this.instance_24.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_24.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_24).wait(49).to({_off:false},0).to({x:341.3,y:482.15},10).to({x:584.3,y:468.05},10).to({_off:true},1).wait(33));

	// twitter_ping_copy
	this.instance_25 = new lib.pulse("synched",0);
	this.instance_25.setTransform(344.3,680.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_25._off = true;
	this.instance_25.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_25.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_25).wait(44).to({_off:false},0).to({x:341.3,y:482.15},10).to({x:584.3,y:468.05},10).to({_off:true},1).wait(38));

	// twitter_ping
	this.instance_26 = new lib.pulse("synched",0);
	this.instance_26.setTransform(344.3,680.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_26._off = true;
	this.instance_26.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_26.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_26).wait(39).to({_off:false},0).to({x:341.3,y:482.15},10).to({x:584.3,y:468.05},10).to({_off:true},1).wait(43));

	// twitter_copy_copy_copy
	this.instance_27 = new lib.electrode();
	this.instance_27.setTransform(580.25,482.15,1,1,0,0,0,20,20);
	this.instance_27._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_27).wait(28).to({_off:false},0).to({x:578.15,y:697.15},16).to({x:366.1},7).to({_off:true},1).wait(51));

	// twitter_copy_copy
	this.instance_28 = new lib.electrode();
	this.instance_28.setTransform(580.25,482.15,1,1,0,0,0,20,20);
	this.instance_28._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_28).wait(23).to({_off:false},0).to({x:578.15,y:697.15},16).to({x:366.1},7).to({_off:true},1).wait(56));

	// twitter_copy
	this.instance_29 = new lib.electrode();
	this.instance_29.setTransform(580.25,482.15,1,1,0,0,0,20,20);
	this.instance_29._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_29).wait(16).to({_off:false},0).to({x:578.15,y:697.15},16).to({x:366.1},7).to({_off:true},1).wait(63));

	// twitter
	this.instance_30 = new lib.electrode();
	this.instance_30.setTransform(580.25,482.15,1,1,0,0,0,20,20);
	this.instance_30._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_30).wait(8).to({_off:false},0).to({x:578.15,y:697.15},16).to({x:366.1},7).to({_off:true},1).wait(71));

	// instagram_ping_copy_copy_copy
	this.instance_31 = new lib.pulse("synched",0);
	this.instance_31.setTransform(154.1,140.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_31._off = true;
	this.instance_31.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_31.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_31).wait(49).to({_off:false},0).to({x:584.3},10).to({y:468.05},10).to({_off:true},1).wait(33));

	// instagram_ping_copy_copy
	this.instance_32 = new lib.pulse("synched",0);
	this.instance_32.setTransform(154.1,140.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_32._off = true;
	this.instance_32.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_32.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_32).wait(45).to({_off:false},0).to({x:584.3},10).to({y:468.05},10).to({_off:true},1).wait(37));

	// instagram_ping_copy
	this.instance_33 = new lib.pulse("synched",0);
	this.instance_33.setTransform(154.1,140.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_33._off = true;
	this.instance_33.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_33.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_33).wait(40).to({_off:false},0).to({x:584.3},10).to({y:468.05},10).to({_off:true},2).wait(41));

	// instagram_ping
	this.instance_34 = new lib.pulse("synched",0);
	this.instance_34.setTransform(154.1,140.05,1.2,1.2,0,0,0,20.1,20);
	this.instance_34._off = true;
	this.instance_34.filters = [new cjs.ColorFilter(0.25, 0.25, 0.25, 1, 0, 0, 114.75, 0)];
	this.instance_34.cache(3,3,34,34);

	this.timeline.addTween(cjs.Tween.get(this.instance_34).wait(35).to({_off:false},0).to({x:584.3},10).to({y:468.05},10).to({_off:true},5).wait(43));

	// instagram_ping_copy_copy
	this.instance_35 = new lib.electrode();
	this.instance_35.setTransform(580.25,482.15,1,1,0,0,0,20,20);
	this.instance_35._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_35).wait(19).to({_off:false},0).to({x:154.05,y:482.05},15).to({y:222.05},8).to({_off:true},1).wait(60));

	// instagram_ping_copy
	this.instance_36 = new lib.electrode();
	this.instance_36.setTransform(580.25,482.15,1,1,0,0,0,20,20);
	this.instance_36._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_36).wait(13).to({_off:false},0).to({x:154.05,y:482.05},15).to({y:222.05},8).to({_off:true},1).wait(66));

	// instagram_ping
	this.instance_37 = new lib.electrode();
	this.instance_37.setTransform(580.25,482.15,1,1,0,0,0,20,20);
	this.instance_37._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance_37).wait(8).to({_off:false},0).to({x:154.05,y:482.05},15).to({y:222.05},8).to({_off:true},1).wait(71));

	// pipes
	this.instance_38 = new lib.CachedBmp_4();
	this.instance_38.setTransform(148.55,136.55,0.5,0.5);

	this.timeline.addTween(cjs.Tween.get(this.instance_38).wait(103));

	this._renderFirstFrame();

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(644.7,526.1,397.5999999999999,270.1);
// library properties:
lib.properties = {
	id: 'E9DF57FC89294A43BFB2BA17C952D0FF',
	width: 1093,
	height: 864,
	fps: 24,
	color: "#FFFFFF",
	opacity: 1.00,
	manifest: [
		{src:"images/twitter.png", id:"twitter"},
		{src:"images/virality_and_beyond_atlas_.png", id:"virality_and_beyond_atlas_"},
		{src:"images/virality_and_beyond_atlas_2.png", id:"virality_and_beyond_atlas_2"},
		{src:"images/virality_and_beyond_atlas_3.png", id:"virality_and_beyond_atlas_3"},
		{src:"images/virality_and_beyond_atlas_4.png", id:"virality_and_beyond_atlas_4"},
		{src:"images/virality_and_beyond_atlas_5.png", id:"virality_and_beyond_atlas_5"}
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
an.compositions['E9DF57FC89294A43BFB2BA17C952D0FF'] = {
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