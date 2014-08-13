//
//  Created by Yin Tan on 8/13/14.
//  Copyright (c) 2014 Yin Tan. All rights reserved.
//

#import "IDEOpenQuicklyTableView+CtrlNP.h"
#import "NSObject+Swizzle.h"

@implementation IDEOpenQuicklyTableView (CtrlNP)

// copied from:
// /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/
// HIToolbox.framework/Versions/A/Headers/Events.h
static NSUInteger kKeyCodeN = 0x2D; // decimal: 45
static NSUInteger kKeyCodeP = 0x23; // decimal: 35

+ (void)load
{
    [self _ty_swizzleInstanceMethod:@selector(keyDown:) withNewMethod:@selector(_cnp_keyDown:)];
}

/**
 * Simply check the key code and perform up/down navigation.
 */
- (void)_cnp_keyDown:(NSEvent *)theEvent
{
    BOOL controlKeyPressed = (theEvent.modifierFlags & NSControlKeyMask) != 0;
    if (controlKeyPressed && theEvent.keyCode == kKeyCodeN) {
        NSUInteger nextRow =
            self.selectedRow == self.numberOfRows ? self.selectedRow : self.selectedRow + 1;
        NSIndexSet *newRowIndexes = [NSIndexSet indexSetWithIndex:nextRow];
        [self selectRowIndexes:newRowIndexes byExtendingSelection:NO];
        [self scrollRowToVisible:nextRow];
    } else if (controlKeyPressed && theEvent.keyCode == kKeyCodeP) {
        NSUInteger prevRow = self.selectedRow == 0 ? 0 : self.selectedRow - 1;
        NSIndexSet *newRowIndexes = [NSIndexSet indexSetWithIndex:prevRow];
        [self selectRowIndexes:newRowIndexes byExtendingSelection:NO];
        [self scrollRowToVisible:prevRow];
    } else {
        [self _cnp_keyDown:theEvent];
    }
}

@end
