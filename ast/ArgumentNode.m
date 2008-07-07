//
//  ArgumentNode.m
//  AS3_Parser
//
//  Created by Marc Bauer on 06.07.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import "ArgumentNode.h"


@implementation ArgumentNode

@synthesize name=m_name;
@synthesize type=m_type;
@synthesize isRest=m_isRest;

+ (ArgumentNode *)argumentNodeWithName:(IdentifierNode *)name type:(QualifiedIdentifierNode *)type
{
	ArgumentNode *node = [[[ArgumentNode alloc] init] autorelease];
	node.name = name;
	node.type = type;
	return node;
}

- (NSString *)description
{
	return [NSString stringWithFormat:@"[ArgumentNode] name: %@, type: %@",
		[m_name string], [m_type string]];
}

@end