@STATIC;1.0;I;21;Foundation/CPObject.ji;16;MDBuilderPanel.ji;9;DCColor.ji;14;URLTextField.ji;16;LPAnchorButton.jt;6360;
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
