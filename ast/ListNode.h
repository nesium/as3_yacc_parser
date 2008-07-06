//
//  ListNode.h
//  AS3_Parser
//
//  Created by Marc Bauer on 05.07.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Node.h"


@interface ListNode : Node
{
	NSMutableArray *m_nodes;
}

@property (retain, readonly) NSArray *nodes;

- (void)addNode:(Node *)node;
- (void)addNodes:(NSArray *)nodes;
+ (ListNode *)listNodeWithNodes:(NSArray *)nodes;
+ (ListNode *)listNodeWithNodesv:(Node *)node, ...;

@end