//
//  ClassNode.m
//  AS3_Parser
//
//  Created by Marc Bauer on 28.06.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import "ClassNode.h"


@implementation ClassNode

+ (ClassNode *)classNodeWithIdentifier:(IdentifierNode *)identifier
{
	ClassNode *node = [[[ClassNode alloc] init] autorelease];
	[node setValue:[identifier string] forKey:@"m_value"];
	NSLog(@"%@", node);
	return node;
}

@end
