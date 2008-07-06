//
//  ClassAttributeNode.m
//  AS3_Parser
//
//  Created by Marc Bauer on 06.07.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import "ClassAttributeNode.h"


@implementation ClassAttributeNode

@synthesize type=m_type;

+ (ClassAttributeNode *)classAttributeNodeWithType:(ClassAttributeType)type
{
	ClassAttributeNode *node = [[[ClassAttributeNode alloc] init] autorelease];
	node.type = type;
	return node;
}

- (NSString *)stringValue
{
	switch (m_type)
	{
		case kClassPublicAttribute:
			return @"public";
		case kClassFinalAttribute:
			return @"final";
		case kClassInternalAttribute:
			return @"internal";
		case kClassDynamicAttribute:
			return @"dynamic";
		default:
			return @"unknown";
	}
}

- (NSString *)description
{
	return [NSString stringWithFormat:@"[ClassAttributeNode] type: %@", [self stringValue]];
}

@end