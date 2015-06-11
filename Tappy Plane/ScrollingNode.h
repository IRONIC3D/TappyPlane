//
//  ScrollingNode.h
//  Tappy Plane
//
//  Created by Iyad Horani on 11/06/2015.
//  Copyright (c) 2015 IRONIC3D. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface ScrollingNode : SKNode

@property (nonatomic) CGFloat horizontalScrollSpeed;    // Distance to scroll per second.
@property (nonatomic) BOOL scrolling;

-(void)updateWithTimeElapsed:(NSTimeInterval)timeElapsed;

@end
