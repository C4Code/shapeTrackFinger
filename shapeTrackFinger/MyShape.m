//
//  MyShape.m
//  shapeTrackFinger
//
//  Created by Travis Kirton on 12-05-02.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "MyShape.h"

@implementation MyShape {
    int i;
    BOOL beingTouched;
}

-(id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self != nil) {
        self.userInteractionEnabled = NO;
    }
    return self;
}

-(void)checkTouch:(UITouch *)aTouch {
    CGPoint p = [aTouch locationInView:self];
    if([self pointInside:p withEvent:nil]) {
        if(beingTouched == NO) {
            C4Log(@"entered");
            beingTouched = YES;
        }
    } else {
        if(beingTouched == YES) {
            C4Log(@"exited");
            beingTouched = NO;
        }
    }
}

-(void)changeColor1 {
    C4Log(@"change to color1");
}

-(void)changeColor2 {
    C4Log(@"change to color2");
}

@end
