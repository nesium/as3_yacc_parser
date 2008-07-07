//
//  ClassNode.m
//  AS3_Parser
//
//  Created by Marc Bauer on 28.06.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import "ClassNode.h"


@implementation ClassNode

@synthesize attribute=m_attribute;
@synthesize name=m_name;
@synthesize ancestor=m_ancestor;
@synthesize interfaces=m_interfaces;

+ (ClassNode *)classNodeWithAttribute:(ClassAttributeNode *)attribute name:(IdentifierNode *)name 
	ancestor:(IdentifierNode *)ancestor interfaces:(ListNode *)interfaces;
{
	ClassNode *node = [[[ClassNode alloc] init] autorelease];
	node.attribute = attribute;
	node.name = name;
	node.ancestor = ancestor;
	node.interfaces = interfaces;
	return node;
}

- (NSString *)description
{
	return [NSString stringWithFormat:@"[ClassNode] attribute: %@, name: %@, ancestor: %@, \
interfaces: %@", m_attribute, m_name, m_ancestor, m_interfaces];
}

@end