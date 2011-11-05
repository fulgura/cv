/**
*
*
*/
@import <Foundation/CPObject.j>

/**!
	MDBuilderPanel creates custom panel used in CV project.

		- you can use it
*/
@implementation MDBuilderPanel : CPObject
{
}

- (id)init
{
	self = [super init]

	if (self)
	{

	}

	return self;
}
/**
	Build a CPPanel instancewith a background image

	- TODO:
*/
+ (CPPanel)buildPanelWithImageBackground:(CGRect)aFrame
{
    var backgroundView = [[CPView alloc] initWithFrame:CGRectMake(100, 0, 1000, 1000)];

    // [backgroundView setFrameSize:CGSizeMake(800,1000)];
    [backgroundView setAutoresizingMask:CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin];

    var anImage = [[CPImage alloc]
                initWithContentsOfFile:"Resources/bleh.jpg"
                                  size:CGSizeMake(1000, 200)];

    [backgroundView setBackgroundColor:[CPColor colorWithPatternImage:anImage]];

    var aShadowView = [CPShadowView shadowViewEnclosingView:backgroundView withWeight:CPLightShadow];

    return aShadowView;
}

@end
