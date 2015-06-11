//
//  Plane.h
//  Tappy Plane
//
//  Created by Iyad Horani on 25/05/2015.
//  Copyright (c) 2015 IRONIC3D. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface Plane : SKSpriteNode

@property (nonatomic) BOOL engineRunning;
@property (nonatomic) BOOL accelerating;

-(void)setRandomColour;
-(void)update;

@end
