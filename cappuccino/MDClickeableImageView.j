/**!


*/

@implementation MDClickeableImageView : CPImageView
{

}
- (void)mouseDown:(CPEvent)anEvent
{
    if ([anEvent clickCount] == 1)
    {
        [self sendAction:[self action] to:[self target]];
    }
}
@end
