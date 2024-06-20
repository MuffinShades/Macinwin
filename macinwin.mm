#include <cocoa/cocoa.h>
#include "Macinwin.hpp"

//I actuall dont know Objective-C im just kinda copying from resources
//and hopefully somethings will result in a window and then I can just write
//everything else in C++

Macinwin::Macinwin(const int width, const int height, const int x, const int y) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    [NSApplication sharedApplication];

    //window styling
    NSUInteger windowStyle = NSTitledWindowMask | NSClosableWindowMask | NSResizableWindowMask;

    //
    NSRect windowRect = NSMakeRect(x, y, width, height);
    NSWindow * window = [[NSWindow alloc] initWithContentRect:windowRect
                                          styleMask:windowStyle
                                          backing:NSBackingStoreBuffered
                                          defer:NO];
}