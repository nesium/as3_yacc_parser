//
//  VariableNode.m
//  AS3_Parser
//
//  Created by Marc Bauer on 06.07.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import "VariableNode.h"


@implementation VariableNode

@synthesize name=m_name;
@synthesize type=m_type;
@synthesize accessLevel=m_accessLevel;
@synthesize isStatic=m_isStatic;
@synthesize isConst=m_isConst;

+ (VariableNode *)variableNodeWithName:(IdentifierNode *)name type:(QualifiedIdentifierNode *)type
	accessLevel:(AccessLevelNode *)accessLevel
{
	VariableNode *node = [[[VariableNode alloc] init] autorelease];
	node.name = name;
	node.type = type;
	node.accessLevel = accessLevel;
	return node;
}

@end