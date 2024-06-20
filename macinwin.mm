#include <cocoa/cocoa.h>
#include "Macinwin.hpp"

//I actuall dont know Objective-C im just kinda copying from resources
//and hopefully somethings will result in a window and then I can just write
//everything else in C++

Macinwin::Macinwin(const int width, const int height, const int x, const int y) {
    //somesort of autorelease pool
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    [NSApplication sharedApplication];

    //window styling
    NSUInteger windowStyle = NSTitledWindowMask | NSClosableWindowMask | NSResizableWindowMask;

    //create le window
    NSRect windowRect = NSMakeRect(x, y, width, height);
    NSWindow *win = [[NSWindow alloc] initWithContentRect:windowRect
                                          styleMask:windowStyle
                                          backing:NSBackingStoreBuffered
                                          defer:NO];
    [win autorelease];

    //create a window contorller thing
    NSWindowController * windowController = [[NSWindowController alloc] initWithWindow:window];
    [windowController autorelease];

    //idk what this does
    [window orderFrontRegardless];
    [NSApp run];

    [pool drain];
}