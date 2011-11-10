@STATIC;1.0;I;20;AppKit/CPTextField.jt;1570;
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
