//
//  ClassAttributeNode.h
//  AS3_Parser
//
//  Created by Marc Bauer on 06.07.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Node.h"
#import "types.h"


@interface ClassAttributeNode : Node 
{
	ClassAttributeType m_type;
}

@property (assign) ClassAttributeType type;

- (NSString *)stringValue;
+ (ClassAttributeNode *)classAttributeNodeWithType:(ClassAttributeType)type;

@end