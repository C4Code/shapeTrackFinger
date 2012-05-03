//
//  C4WorkSpace.m
//  shapeTrackFinger
//
//  Created by Travis Kirton on 12-05-02.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "C4WorkSpace.h"
#import "MyShape.h"

@implementation C4WorkSpace {
    MyShape *rect;
}

-(void)setup {
    rect = [MyShape new];
    [rect ellipse:CGRectMake(200, 200, 368, 100)];
    [self.canvas addShape:rect];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
        for(UITouch *t in touches) {
            [rect checkTouch:t];
        }
}
@end
