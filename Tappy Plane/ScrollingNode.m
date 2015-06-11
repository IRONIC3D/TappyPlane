//
//  ScrollingNode.m
//  Tappy Plane
//
//  Created by Iyad Horani on 11/06/2015.
//  Copyright (c) 2015 IRONIC3D. All rights reserved.
//

#import "ScrollingNode.h"

@implementation ScrollingNode

-(void)updateWithTimeElapsed:(NSTimeInterval)timeElapsed {
    self.position = CGPointMake(self.position.y + (self.horizontalScrollSpeed * timeElapsed), self.position.y);
}

@end
