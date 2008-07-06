//
//  ClassNode.h
//  AS3_Parser
//
//  Created by Marc Bauer on 28.06.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "StringNode.h"
#import "IdentifierNode.h"
#import "ListNode.h"
#import "ClassAttributeNode.h"


@interface ClassNode : StringNode 
{
	ClassAttributeNode *m_attribute;
	IdentifierNode *m_name;
	IdentifierNode *m_ancestor;
	ListNode *m_interfaces;
}

@property (retain) ClassAttributeNode *attribute;
@property (retain) IdentifierNode *name;
@property (retain) IdentifierNode *ancestor;
@property (retain) ListNode *interfaces;

+ (ClassNode *)classNodeWithAttribute:(ClassAttributeNode *)attribute name:(IdentifierNode *)name 
	ancestor:(IdentifierNode *)ancestor interfaces:(ListNode *)interfaces;

@end