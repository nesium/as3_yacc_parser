//
//  InterfaceNode.h
//  AS3_Parser
//
//  Created by Marc Bauer on 11.07.09.
//  Copyright 2009 nesiumdotcom. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "StringNode.h"
#import "IdentifierNode.h"
#import "ListNode.h"
#import "ClassAttributeNode.h"

@interface InterfaceNode : StringNode 
{
	ClassAttributeNode *m_attribute;
	IdentifierNode *m_name;
	ListNode *m_ancestors;
}
@property (retain) ClassAttributeNode *attribute;
@property (retain) IdentifierNode *name;
@property (retain) ListNode *ancestors;

+ (InterfaceNode *)interfaceNodeWithAttribute:(ClassAttributeNode *)attribute name:(IdentifierNode *)name 
	ancestors:(ListNode *)ancestors;
@end