//
//  VariableNode.h
//  AS3_Parser
//
//  Created by Marc Bauer on 06.07.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Node.h"
#import "IdentifierNode.h"
#import "QualifiedIdentifierNode.h"
#import "AccessLevelNode.h"


@interface VariableNode : Node
{
	IdentifierNode *m_name;
	QualifiedIdentifierNode *m_type;
	AccessLevelNode *m_accessLevel;
	BOOL m_isStatic;
}

@property (retain) IdentifierNode *name;
@property (retain) QualifiedIdentifierNode *type;
@property (retain) AccessLevelNode *accessLevel;
@property (assign) BOOL isStatic;

+ (VariableNode *)variableNodeWithName:(IdentifierNode *)name type:(QualifiedIdentifierNode *)type
	accessLevel:(AccessLevelNode *)accessLevel;

@end