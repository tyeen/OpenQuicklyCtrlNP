#ifndef OpenQuicklyCtrlNP_IDEOpenQuicklyTableView_h
#define OpenQuicklyCtrlNP_IDEOpenQuicklyTableView_h

#import "DVTTableView.h"

@interface IDEOpenQuicklyTableView : DVTTableView
{
    id _becomeKeyNotificationObserver;
    id _resignKeyNotificationObserver;
}

- (void)drawRect:(struct CGRect)arg1;
- (void)highlightSelectionInClipRect:(struct CGRect)arg1;
- (BOOL)acceptsFirstResponder;
- (void)viewWillMoveToWindow:(id)arg1;

@end

#endif
