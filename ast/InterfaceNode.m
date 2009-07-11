//
//  InterfaceNode.m
//  AS3_Parser
//
//  Created by Marc Bauer on 11.07.09.
//  Copyright 2009 nesiumdotcom. All rights reserved.
//

#import "InterfaceNode.h"


@implementation InterfaceNode

@synthesize attribute=m_attribute;
@synthesize name=m_name;
@synthesize ancestors=m_ancestors;

+ (InterfaceNode *)interfaceNodeWithAttribute:(ClassAttributeNode *)attribute name:(IdentifierNode *)name 
	ancestors:(ListNode *)ancestors;
{
	InterfaceNode *node = [[[InterfaceNode alloc] init] autorelease];
	node.attribute = attribute;
	node.name = name;
	node.ancestors = ancestors;
	return node;
}

- (NSString *)description
{
	return [NSString stringWithFormat:@"[InterfaceNode] attribute: %@, name: %@, ancestors: %@", 
		m_attribute, m_name, m_ancestors];
}


@end