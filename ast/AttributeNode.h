//
//  AttributeNode.h
//  AS3_Parser
//
//  Created by Marc Bauer on 05.07.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Node.h"
#import "types.h"


@interface AttributeNode : Node
{
	AttributeType m_type;
}

@property (assign) AttributeType type;

+ (AttributeNode *)attributeNodeWithType:(AttributeType)type;
- (NSString *)stringValue;

@end