@STATIC;1.0;t;334;
var _1=objj_allocateClassPair(CPImageView,"MDClickeableImageView"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("mouseDown:"),function(_3,_4,_5){
with(_3){
if(objj_msgSend(_5,"clickCount")==1){
objj_msgSend(_3,"sendAction:to:",objj_msgSend(_3,"action"),objj_msgSend(_3,"target"));
}
}
})]);
