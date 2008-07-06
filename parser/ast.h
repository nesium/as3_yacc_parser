/*
 *  ast.h
 *  AS3_Parser
 *
 *  Created by Marc Bauer on 05.07.08.
 *  Copyright 2008 nesiumdotcom. All rights reserved.
 *
 */

#import "Node.h"
#import "ImportNode.h"
#import "QualifiedIdentifierNode.h"
#import "ListNode.h"
#import "IdentifierNode.h"
#import "FunctionNode.h"
#import "AccessLevelNode.h"
#import "AttributeNode.h"
#import "ListNode.h"
#import "VariableNode.h"
#import "ArgumentNode.h"

Node* makeImport(Node *package);
Node* makeFunction(Node *accessLevel, Node *attribute, Node *ident, Node *arguments, 
	Node *returnType, BOOL isSetter, BOOL isGetter);
Node* makeAccessLevel(AccessLevel level);
Node* makeAttribute(AttributeType type);
Node* makeList(Node *node, ...);
Node* makeVariable(Node *name, Node *type, Node *accessLevel, BOOL isStatic);
Node* makeArgument(Node *name, Node *type, BOOL isRest);