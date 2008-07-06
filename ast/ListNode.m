//
//  ListNode.m
//  AS3_Parser
//
//  Created by Marc Bauer on 05.07.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import "ListNode.h"


@implementation ListNode

@synthesize nodes=m_nodes;

- (id)init
{
	self = [super init];
	m_nodes = [[NSMutableArray alloc] init];
	return self;
}

- (void)addNode:(Node *)node
{
	[m_nodes addObject:node];
}

- (void)addNodes:(NSArray *)nodes
{
	[m_nodes addObjectsFromArray:nodes];
}

+ (ListNode *)listNodeWithNodes:(NSArray *)nodes
{
	ListNode *node = [[[ListNode alloc] init] autorelease];
	[node addNodes:nodes];
	return node;
}

+ (ListNode *)listNodeWithNodesv:(Node *)aNode, ...
{
	ListNode *node = [[[ListNode alloc] init] autorelease];
	if (!aNode)
	{
		return node;
	}
	else
	{
		[node addNode:aNode];
	}
	va_list arguments;
	Node *obj;
	va_start(arguments, aNode);
	while (obj = va_arg(arguments, id)) [node addNode:obj];
	va_end(arguments);
	return node;
}

- (NSString *)description
{
	return [NSString stringWithFormat:@"[ListNode] %@", m_nodes];
}

@end