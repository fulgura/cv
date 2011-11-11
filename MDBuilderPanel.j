/**!


*/

@import <Foundation/CPObject.j>
@import "MDClickeableImageView.j"

/**!
	MDBuilderPanel creates custom panel used in CV project.

		- you can use it
*/
@implementation MDBuilderPanel : CPObject
{
}

/**
	Build a CPPanel instancewith a background image

	- TODO:
*/
+ (CPPanel)buildPanelWithImageBackground:(CGRect)aFrame
{
    var backgroundView = [[CPView alloc] initWithFrame:aFrame];
    [backgroundView setAutoresizingMask:CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin];

    var anImage = [[CPImage alloc]
                initWithContentsOfFile:"Resources/bleh.jpg"
                                  size:CGSizeMake(1000, 200)];
    [backgroundView setBackgroundColor:[CPColor colorWithPatternImage:anImage]];
    return backgroundView;
}
/**
	Build a CPPanel instancewith a background image

	- TODO:
*/
+ (CPPanel)buildPanelWithImageBackgroundWithShadowView:(CGRect)aFrame
{
    var backgroundView = [[CPView alloc] initWithFrame:aFrame];

    // [backgroundView setFrameSize:CGSizeMake(800,1000)];
    [backgroundView setAutoresizingMask:CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin];

    var anImage = [[CPImage alloc]
                initWithContentsOfFile:"Resources/bleh.jpg"
                                  size:CGSizeMake(1000, 200)];

    [backgroundView setBackgroundColor:[CPColor colorWithPatternImage:anImage]];

    var aShadowView = [CPShadowView shadowViewEnclosingView:backgroundView withWeight:CPLightShadow];

    return aShadowView;
}
/**
	Build a CPPanel instancewith a background image

	- TODO:
*/
+ (CPImageView)buildButtonWithImageBackground:(CGRect)aFrame pathForResource:(CPString)aPath size:(CGSize)aSize target:(id)aTarget action:(SEL)aSelector
{
    var mainBundle = [CPBundle mainBundle],
        path = [mainBundle pathForResource:aPath],
        image = [[CPImage alloc] initWithContentsOfFile:path size:aSize],
        imageView = [[MDClickeableImageView alloc] initWithFrame:aFrame];

	[imageView setTarget:aTarget];
	[imageView setAction:aSelector];

    [imageView setHasShadow:NO];
    [imageView setImageScaling:CPScaleProportionally];
    //var imageSize = [image size];
    //[imageView setFrameSize:CGSizeMake(200, 200)];
    [imageView setImage:image];

	return imageView;
}

/*!

*/
+ (void)moveViewWithAnimation:(CPView)aView startFrame:(CGRect)aStartFrame endFrame:(CGRect)anEndFrame
{
    var animation = [CPDictionary dictionaryWithObjects:[aView, aStartFrame, anEndFrame, CPViewAnimationEffectKey]
                                                forKeys:[CPViewAnimationTargetKey, CPViewAnimationStartFrameKey, CPViewAnimationEndFrameKey, CPViewAnimationEffectKey]],
        cpViewAnimation = [[CPViewAnimation alloc] initWithViewAnimations:[animation]];

    [cpViewAnimation startAnimation];
}
@end
