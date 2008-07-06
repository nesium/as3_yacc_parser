//
//  AttributeNode.m
//  AS3_Parser
//
//  Created by Marc Bauer on 05.07.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import "AttributeNode.h"


@implementation AttributeNode

@synthesize type=m_type;

+ (AttributeNode *)attributeNodeWithType:(AttributeType)type
{
	AttributeNode *node = [[[AttributeNode alloc] init] autorelease];
	node.type = type;
	return node;
}

- (NSString *)stringValue
{
	switch (m_type)
	{
		case kDynamicAttribute:
			return @"dynamic";
		case kFinalAttribute:
			return @"final";
		case kOverrideAttribute:
			return @"override";
		case kStaticAttribute:
			return @"static";
		default:
			return @"undefined";
	}
}

@end