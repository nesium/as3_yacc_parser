//
//  PackageNode.m
//  AS3_Parser
//
//  Created by Marc Bauer on 28.06.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import "PackageNode.h"


@implementation PackageNode

+ (PackageNode *)packageNodeWithIdentifier:(IdentifierNode *)identifier
{
	PackageNode *node = [[[PackageNode alloc] init] autorelease];
	[node setValue:identifier forKey:@"m_value"];
	return node;
}

@end