@STATIC;1.0;p;15;AppController.jt;6479;@STATIC;1.0;I;21;Foundation/CPObject.ji;16;MDBuilderPanel.ji;9;DCColor.ji;14;URLTextField.ji;16;LPAnchorButton.jt;6360;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("MDBuilderPanel.j",YES);
objj_executeFile("DCColor.j",YES);
objj_executeFile("URLTextField.j",YES);
objj_executeFile("LPAnchorButton.j",YES);
var _1=objj_allocateClassPair(CPObject,"AppController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("backgroundView"),new objj_ivar("contentView"),new objj_ivar("scrollView"),new objj_ivar("bounds"),new objj_ivar("backgroundPanel"),new objj_ivar("detailsPanel")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("applicationDidFinishLaunching:"),function(_3,_4,_5){
with(_3){
var _6=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",CGRectMakeZero(),CPBorderlessBridgeWindowMask);
contentView=objj_msgSend(_6,"contentView");
bounds=objj_msgSend(contentView,"bounds");
scrollView=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",bounds);
objj_msgSend(contentView,"addSubview:",scrollView);
objj_msgSend(scrollView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(scrollView,"setAutohidesScrollers:",YES);
backgroundPanel=objj_msgSend(MDBuilderPanel,"buildPanelWithImageBackground:",bounds);
objj_msgSend(scrollView,"setDocumentView:",backgroundPanel);
var _7=objj_msgSend(MDBuilderPanel,"buildButtonWithImageBackground:pathForResource:size:target:action:",CGRectMake(100,300,64,64),"arrow-left-icon-64x64.png",CGSizeMake(64,64),_3,sel_getUid("leftSwap:"));
objj_msgSend(backgroundPanel,"addSubview:",_7);
var _8=objj_msgSend(MDBuilderPanel,"buildButtonWithImageBackground:pathForResource:size:target:action:",CGRectMake(1000,300,64,64),"next-sail-icon-48x48.png",CGSizeMake(64,64),_3,sel_getUid("rightSwap:"));
objj_msgSend(backgroundPanel,"addSubview:",_8);
detailsPanel=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,1,1));
objj_msgSend(detailsPanel,"setBackgroundColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(backgroundPanel,"addSubview:",detailsPanel);
var _9=objj_msgSend(LPAnchorButton,"buttonWithTitle:","Email");
objj_msgSend(_9,"setFrame:",CGRectMake(270,100,150,35));
objj_msgSend(_9,"setUnderlineMask:",LPAnchorButtonHoverUnderline);
objj_msgSend(_9,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_9,"setTextHoverColor:",objj_msgSend(CPColor,"colorWithHexString:","aaa"));
objj_msgSend(_9,"setFont:",objj_msgSend(CPFont,"boldFontWithName:size:","Courier New",20));
objj_msgSend(_9,"setTarget:",_3);
objj_msgSend(_9,"setAction:",sel_getUid("didClickEmailMe:"));
objj_msgSend(backgroundPanel,"addSubview:",_9);
objj_msgSend(_6,"orderFront:",_3);
}
}),new objj_method(sel_getUid("rightSwap:"),function(_a,_b,_c){
with(_a){
objj_msgSend(MDBuilderPanel,"moveViewWithAnimation:startFrame:endFrame:",detailsPanel,CGRectMake(200,50,0,600),CGRectMake(200,50,750,600));
}
}),new objj_method(sel_getUid("leftSwap:"),function(_d,_e,_f){
with(_d){
objj_msgSend(MDBuilderPanel,"moveViewWithAnimation:startFrame:endFrame:",detailsPanel,CGRectMake(200,50,750,600),CGRectMake(200,50,0,600));
}
}),new objj_method(sel_getUid("didClickEmailMe:"),function(_10,_11,_12){
with(_10){
window.open("mailto:diegomartincorrea@gmail.com?cc=a_e_r_e_a@yahoo.com.ar&subject=Job offer","email");
}
}),new objj_method(sel_getUid("didClickLinkedIn:"),function(_13,_14,_15){
with(_13){
window.open("http://www.linkedin.com/pub/diego-mart%C3%ADn-correa/13/b8b/9b","linkedin");
}
}),new objj_method(sel_getUid("addBackgroundImageView"),function(_16,_17){
with(_16){
backgroundView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(100,0,1000,1000));
objj_msgSend(backgroundView,"setAutoresizingMask:",CPViewMinXMargin|CPViewMaxXMargin|CPViewMinYMargin|CPViewMaxYMargin);
var _18=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:","Resources/bleh.jpg",CGSizeMake(1000,200));
objj_msgSend(backgroundView,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithPatternImage:",_18));
var _19=objj_msgSend(CPShadowView,"shadowViewEnclosingView:withWeight:",backgroundView,CPLightShadow);
objj_msgSend(scrollView,"setDocumentView:",_19);
}
}),new objj_method(sel_getUid("addMyPictureViewImage"),function(_1a,_1b){
with(_1a){
var _1c=objj_msgSend(CPBundle,"mainBundle"),_1d=objj_msgSend(_1c,"pathForResource:","my.jpg"),_1e=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",_1d,CGSizeMake(490,337)),_1f=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMake(700,0,200,200));
objj_msgSend(_1f,"setHasShadow:",NO);
objj_msgSend(_1f,"setImageScaling:",CPScaleProportionally);
objj_msgSend(_1f,"setImage:",_1e);
objj_msgSend(backgroundView,"addSubview:",_1f);
}
}),new objj_method(sel_getUid("addDetailView:"),function(_20,_21,_22){
with(_20){
var _23=objj_msgSend(CPBundle,"mainBundle"),_24=objj_msgSend(_23,"pathForResource:","bleh-simpleblur.jpg"),_25=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",_24,CGSizeMake(1000,200)),_26=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",_22);
objj_msgSend(_26,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithPatternImage:",_25));
objj_msgSend(backgroundView,"addSubview:",_26);
}
}),new objj_method(sel_getUid("addBubleViewWithFrame:"),function(_27,_28,_29){
with(_27){
var _2a=objj_msgSend(objj_msgSend(CPBox,"alloc"),"initWithFrame:",_29);
objj_msgSend(_2a,"setFillColor:",objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",255/255,255/255,255/255,0.7));
objj_msgSend(_2a,"setBorderType:",CPLineBorder);
objj_msgSend(_2a,"setBorderColor:",objj_msgSend(_2a,"fillColor"));
objj_msgSend(_2a,"setBorderWidth:",0);
objj_msgSend(_2a,"setCornerRadius:",20);
objj_msgSend(backgroundView,"addSubview:",_2a);
}
}),new objj_method(sel_getUid("addBluredViewWithFrame:"),function(_2b,_2c,_2d){
with(_2b){
}
}),new objj_method(sel_getUid("addLabel:origin:color:font:"),function(_2e,_2f,_30,_31,_32,_33){
with(_2e){
var _34=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_34,"setStringValue:",_30);
objj_msgSend(_34,"setFont:",_33);
objj_msgSend(_34,"setTextColor:",_32);
objj_msgSend(_34,"sizeToFit");
objj_msgSend(_34,"setFrameOrigin:",_31);
objj_msgSend(_34,"setAutoresizingMask:",CPViewMinXMargin|CPViewMaxXMargin|CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(backgroundView,"addSubview:",_34);
}
})]);
p;9;DCColor.jt;509;@STATIC;1.0;t;491;
var _1=objj_allocateClassPair(CPObject,"DCColor"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("DCColor").super_class},"init");
if(_3){
}
return _3;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("goldenColor"),function(_5,_6){
with(_5){
return objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",234/255,193/255,23/255,1);
}
})]);
p;16;LPAnchorButton.jt;5735;@STATIC;1.0;t;5716;
LPAnchorButtonNoUnderline=0;
LPAnchorButtonNormalUnderline=1;
LPAnchorButtonHoverUnderline=2;
var _1=objj_allocateClassPair(CPControl,"LPAnchorButton"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_underlineMask"),new objj_ivar("_title"),new objj_ivar("_URL"),new objj_ivar("_DOMAnchorElement")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("underlineMask"),function(_3,_4){
with(_3){
return _underlineMask;
}
}),new objj_method(sel_getUid("setUnderlineMask:"),function(_5,_6,_7){
with(_5){
_underlineMask=_7;
}
}),new objj_method(sel_getUid("title"),function(_8,_9){
with(_8){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_a,_b,_c){
with(_a){
_title=_c;
}
}),new objj_method(sel_getUid("init"),function(_d,_e){
with(_d){
if(_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("LPAnchorButton").super_class},"init")){
_underlineMask=LPAnchorButtonNormalUnderline|LPAnchorButtonHoverUnderline;
}
return _d;
}
}),new objj_method(sel_getUid("setTitle:"),function(_f,_10,_11){
with(_f){
_title=_11;
objj_msgSend(_f,"setNeedsLayout");
}
}),new objj_method(sel_getUid("openURLOnClick:"),function(_12,_13,_14){
with(_12){
_URL=_14;
objj_msgSend(_12,"setNeedsLayout");
}
}),new objj_method(sel_getUid("setTextColor:"),function(_15,_16,_17){
with(_15){
objj_msgSend(_15,"setValue:forThemeAttribute:",_17,"text-color");
}
}),new objj_method(sel_getUid("setTextHoverColor:"),function(_18,_19,_1a){
with(_18){
objj_msgSend(_18,"setValue:forThemeAttribute:inState:",_1a,"text-color",CPThemeStateHighlighted);
}
}),new objj_method(sel_getUid("mouseEntered:"),function(_1b,_1c,_1d){
with(_1b){
objj_msgSend(_1b,"setThemeState:",CPThemeStateHighlighted);
}
}),new objj_method(sel_getUid("mouseExited:"),function(_1e,_1f,_20){
with(_1e){
objj_msgSend(_1e,"unsetThemeState:",CPThemeStateHighlighted);
}
}),new objj_method(sel_getUid("mouseDown:"),function(_21,_22,_23){
with(_21){
if(_URL){
objj_msgSend(objj_msgSend(objj_msgSend(_21,"window"),"platformWindow"),"_propagateCurrentDOMEvent:",YES);
}else{
objj_msgSendSuper({receiver:_21,super_class:objj_getClass("LPAnchorButton").super_class},"mouseDown:",_23);
}
}
}),new objj_method(sel_getUid("sizeToFit"),function(_24,_25){
with(_24){
objj_msgSend(_24,"setFrameSize:",objj_msgSend((_title||" "),"sizeWithFont:",objj_msgSend(_24,"currentValueForThemeAttribute:","font")));
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_26,_27,_28){
with(_26){
return objj_msgSend(_26,"bounds");
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_29,_2a,_2b){
with(_29){
return objj_msgSend(objj_msgSend(_CPImageAndTextView,"alloc"),"initWithFrame:",CGRectMakeZero());
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_2c,_2d){
with(_2c){
if(_URL){
if(!_DOMAnchorElement){
_DOMAnchorElement=document.createElement("a");
_DOMAnchorElement.target="_blank";
_DOMAnchorElement.style.position="absolute";
_DOMAnchorElement.style.zIndex="100";
_2c._DOMElement.appendChild(_DOMAnchorElement);
}
_DOMAnchorElement.href=typeof _URL=="string"?_URL:objj_msgSend(_URL,"absoluteString");
var _2e=objj_msgSend(_2c,"bounds");
_DOMAnchorElement.style.width=CGRectGetWidth(_2e)+"px";
_DOMAnchorElement.style.height=CGRectGetHeight(_2e)+"px";
}
var _2f="none";
if(((_themeState===CPThemeStateNormal||_themeState===CPThemeStateSelected)&&(_underlineMask&LPAnchorButtonNormalUnderline))||((_themeState&CPThemeStateHighlighted)&&(_underlineMask&LPAnchorButtonHoverUnderline))){
_2f="underline";
}
var _30=objj_msgSend(_2c,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","content-view",CPWindowAbove,nil);
if(_30){
objj_msgSend(_30,"setText:",_title);
objj_msgSend(_30,"setTextColor:",objj_msgSend(_2c,"currentValueForThemeAttribute:","text-color"));
objj_msgSend(_30,"setFont:",objj_msgSend(_2c,"currentValueForThemeAttribute:","font"));
objj_msgSend(_30,"setAlignment:",objj_msgSend(_2c,"currentValueForThemeAttribute:","alignment"));
objj_msgSend(_30,"setVerticalAlignment:",objj_msgSend(_2c,"currentValueForThemeAttribute:","vertical-alignment"));
objj_msgSend(_30,"setLineBreakMode:",objj_msgSend(_2c,"currentValueForThemeAttribute:","line-break-mode"));
objj_msgSend(_30,"setTextShadowColor:",objj_msgSend(_2c,"currentValueForThemeAttribute:","text-shadow-color"));
objj_msgSend(_30,"setTextShadowOffset:",objj_msgSend(_2c,"currentValueForThemeAttribute:","text-shadow-offset"));
if(_30._DOMTextElement){
_30._DOMTextElement.style.setProperty("text-decoration",_2f,null);
}
if(_30._DOMTextShadowElement){
_30._DOMTextShadowElement.style.setProperty("text-decoration",_2f,null);
}
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("buttonWithTitle:"),function(_31,_32,_33){
with(_31){
var _34=objj_msgSend(objj_msgSend(_31,"alloc"),"init");
objj_msgSend(_34,"setTitle:",_33);
objj_msgSend(_34,"sizeToFit");
return _34;
}
})]);
var _35="LPAnchorButtonUnderlineMaskKey";
var _1=objj_getClass("LPAnchorButton");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"LPAnchorButton\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_36,_37,_38){
with(_36){
if(_36=objj_msgSendSuper({receiver:_36,super_class:objj_getClass("LPAnchorButton").super_class},"initWithCoder:",_38)){
_underlineMask=objj_msgSend(_38,"decodeIntForKey:",_35)||LPAnchorButtonNoUnderline;
}
return _36;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_39,_3a,_3b){
with(_39){
objj_msgSendSuper({receiver:_39,super_class:objj_getClass("LPAnchorButton").super_class},"encodeWithCoder:",_3b);
if(_underlineMask!==LPAnchorButtonNoUnderline){
objj_msgSend(_3b,"encodeInt:forKey:",_underlineMask,_35);
}
}
})]);
p;6;main.jt;267;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.ji;15;AppController.jt;181;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("AppKit/AppKit.j",NO);
objj_executeFile("AppController.j",YES);
main=function(_1,_2){
CPApplicationMain(_1,_2);
};
p;16;MDBuilderPanel.jt;2483;@STATIC;1.0;I;21;Foundation/CPObject.ji;23;MDClickeableImageView.jt;2410;
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
p;23;MDClickeableImageView.jt;352;@STATIC;1.0;t;334;
var _1=objj_allocateClassPair(CPImageView,"MDClickeableImageView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("mouseDown:"),function(_3,_4,_5){
with(_3){
if(objj_msgSend(_5,"clickCount")==1){
objj_msgSend(_3,"sendAction:to:",objj_msgSend(_3,"action"),objj_msgSend(_3,"target"));
}
}
})]);
p;14;URLTextField.jt;1614;@STATIC;1.0;I;20;AppKit/CPTextField.jt;1570;
objj_executeFile("AppKit/CPTextField.j",NO);
var _1=objj_allocateClassPair(CPTextField,"URLTextField"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_link"),new objj_ivar("_DOMAnchorElement")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
return objj_msgSend(_3,"initWithFrame:link:title:",_5,"","");
}
}),new objj_method(sel_getUid("initWithFrame:url:title:"),function(_6,_7,_8,_9,_a){
with(_6){
if(_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("URLTextField").super_class},"initWithFrame:",_8)){
if(!_DOMAnchorElement){
_DOMAnchorElement=document.createElement("a");
_DOMAnchorElement.target="_blank";
_DOMAnchorElement.style.position="absolute";
_DOMAnchorElement.style.zIndex="100";
_6._DOMElement.appendChild(_DOMAnchorElement);
}
_DOMAnchorElement.href=typeof _9=="string"?_9:objj_msgSend(_9,"absoluteString");
var _b=objj_msgSend(_6,"bounds");
_DOMAnchorElement.style.width=CGRectGetWidth(_b)+"px";
_DOMAnchorElement.style.height=CGRectGetHeight(_b)+"px";
console.log(_DOMElement);
}
return _6;
}
}),new objj_method(sel_getUid("setLink:"),function(_c,_d,_e){
with(_c){
_link=_e;
}
}),new objj_method(sel_getUid("getLink"),function(_f,_10){
with(_f){
return _link;
}
}),new objj_method(sel_getUid("setStringValue:"),function(_11,_12,_13){
with(_11){
objj_msgSendSuper({receiver:_11,super_class:objj_getClass("URLTextField").super_class},"setStringValue:",_13);
objj_msgSendSuper({receiver:_11,super_class:objj_getClass("URLTextField").super_class},"sizeToFit");
}
})]);
e;