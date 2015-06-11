//
//  ScrollingLayer.m
//  Tappy Plane
//
//  Created by Iyad Horani on 11/06/2015.
//  Copyright (c) 2015 IRONIC3D. All rights reserved.
//

#import "ScrollingLayer.h"

@interface ScrollingLayer()

@property (nonatomic) SKSpriteNode *rightmostTile;

@end

@implementation ScrollingLayer

-(instancetype)initWithTiles:(NSArray *)tileSpriteNodes {
    if (self = [super init]) {
        for (SKSpriteNode *tile in tileSpriteNodes) {
            tile.anchorPoint = CGPointZero;
            tile.name = @"Tile";
            [self addChild:tile];
            [self layoutTiles];
        }
    }
    
    return self;
}

- (void)layoutTiles {
    self.rightmostTile = nil;
    [self enumerateChildNodesWithName:@"Tile" usingBlock:^(SKNode *node, BOOL *stop) {
        node.position = CGPointMake(self.rightmostTile.position.x +
                                    self.rightmostTile.size.width, node.position.y);
        self.rightmostTile = (SKSpriteNode *)node;
    }];
}

-(void)updateWithTimeElapsed:(NSTimeInterval)timeElapsed {
    [super updateWithTimeElapsed:timeElapsed];
}

@end
