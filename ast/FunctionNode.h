//
//  FunctionNode.h
//  AS3_Parser
//
//  Created by Marc Bauer on 05.07.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Node.h"
#import "ListNode.h"
#import "AccessLevelNode.h"
#import "AttributeNode.h"
#import "ast.h"


@interface FunctionNode : Node
{
	AccessLevelNode *m_accessLevel;
	AttributeNode *m_attribute;
	IdentifierNode *m_identifier;
	ListNode *m_arguments;
	IdentifierNode *m_returnType;
	BOOL m_isSetter;
	BOOL m_isGetter;
}

@property (retain) AccessLevelNode *accessLevel;
@property (retain) AttributeNode *attribute;
@property (retain) IdentifierNode *identifier;
@property (retain) ListNode *arguments;
@property (retain) IdentifierNode *returnType;
@property (assign) BOOL isSetter;
@property (assign) BOOL isGetter;

+ (FunctionNode *)functionNodeWithIdentifier:(IdentifierNode *)ident 
	accessLevel:(AccessLevelNode *)level
	attribute:(AttributeNode *)attribute
	arguments:(ListNode *)arguments
	returnType:(IdentifierNode *)returnType;

@end