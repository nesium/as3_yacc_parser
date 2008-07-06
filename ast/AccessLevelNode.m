//
//  AccessLevelNode.m
//  AS3_Parser
//
//  Created by Marc Bauer on 05.07.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import "AccessLevelNode.h"


@implementation AccessLevelNode

@synthesize type=m_type;

+ (AccessLevelNode *)accessLevelNodeWithType:(AccessLevel)type
{
	AccessLevelNode *node = [[[AccessLevelNode alloc] init] autorelease];
	node.type = type;
	return node;
}

- (NSString *)stringValue
{
	switch (m_type)
	{
		case kPrivateAccess:
			return @"private";
		case kPublicAccess:
			return @"public";
		case kProtectedAccess:
			return @"protected";
		case kInternalAccess:
			return @"internal";
		default:
			return @"undefined";
	}
}

@end