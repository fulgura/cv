@STATIC;1.0;t;491;
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
