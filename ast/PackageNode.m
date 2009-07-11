//
//  PackageNode.m
//  AS3_Parser
//
//  Created by Marc Bauer on 28.06.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import "PackageNode.h"


@implementation PackageNode

@synthesize identifier=m_identifier;
@synthesize statements=m_statements;

+ (PackageNode *)packageNodeWithIdentifier:(IdentifierNode *)identifier 
	statements:(ListNode *)statements;
{
	PackageNode *node = [[[PackageNode alloc] init] autorelease];
	node.identifier = identifier;
	node.statements = statements;
	return node;
}

- (NSString *)description
{
	return [NSString stringWithFormat:@"[PackageNode] name: %@ statements: %@", 
		m_identifier, m_statements];
}

@end