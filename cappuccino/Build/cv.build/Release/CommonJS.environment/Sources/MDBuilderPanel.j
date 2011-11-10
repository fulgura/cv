@STATIC;1.0;I;21;Foundation/CPObject.ji;23;MDClickeableImageView.jt;2410;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("MDClickeableImageView.j",YES);
var _1=objj_allocateClassPair(CPObject,"MDBuilderPanel"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_2,[new objj_method(sel_getUid("buildPanelWithImageBackground:"),function(_3,_4,_5){
with(_3){
var _6=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_5);
objj_msgSend(_6,"setAutoresizingMask:",CPViewMinXMargin|CPViewMaxXMargin|CPViewMinYMargin|CPViewMaxYMargin);
var _7=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","Resources/bleh.jpg",CGSizeMake(1000,200));
objj_msgSend(_6,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithPatternImage:",_7));
return _6;
}
}),new objj_method(sel_getUid("buildPanelWithImageBackgroundWithShadowView:"),function(_8,_9,_a){
with(_8){
var _b=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_a);
objj_msgSend(_b,"setAutoresizingMask:",CPViewMinXMargin|CPViewMaxXMargin|CPViewMinYMargin|CPViewMaxYMargin);
var _c=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","Resources/bleh.jpg",CGSizeMake(1000,200));
objj_msgSend(_b,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithPatternImage:",_c));
var _d=objj_msgSend(CPShadowView,"shadowViewEnclosingView:withWeight:",_b,CPLightShadow);
return _d;
}
}),new objj_method(sel_getUid("buildButtonWithImageBackground:pathForResource:size:target:action:"),function(_e,_f,_10,_11,_12,_13,_14){
with(_e){
var _15=objj_msgSend(CPBundle,"mainBundle"),_16=objj_msgSend(_15,"pathForResource:",_11),_17=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",_16,_12),_18=objj_msgSend(objj_msgSend(MDClickeableImageView,"alloc"),"initWithFrame:",_10);
objj_msgSend(_18,"setTarget:",_13);
objj_msgSend(_18,"setAction:",_14);
objj_msgSend(_18,"setHasShadow:",NO);
objj_msgSend(_18,"setImageScaling:",CPScaleProportionally);
objj_msgSend(_18,"setImage:",_17);
return _18;
}
}),new objj_method(sel_getUid("moveViewWithAnimation:startFrame:endFrame:"),function(_19,_1a,_1b,_1c,_1d){
with(_19){
var _1e=objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[_1b,_1c,_1d,CPViewAnimationEffectKey],[CPViewAnimationTargetKey,CPViewAnimationStartFrameKey,CPViewAnimationEndFrameKey,CPViewAnimationEffectKey]),_1f=objj_msgSend(objj_msgSend(CPViewAnimation,"alloc"),"initWithViewAnimations:",[_1e]);
objj_msgSend(_1f,"startAnimation");
}
})]);
