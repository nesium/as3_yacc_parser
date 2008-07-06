/*
 *  ast.c
 *  AS3_Parser
 *
 *  Created by Marc Bauer on 05.07.08.
 *  Copyright 2008 nesiumdotcom. All rights reserved.
 *
 */

#include "ast.h"

Node* makeImport(Node *package)
{
	return [ImportNode importNodeWithQualifiedIdentifierNode:(QualifiedIdentifierNode *)package];
}

Node* makeFunction(Node *accessLevel, Node *attribute, Node *ident, Node *arguments, 
	Node *returnType, BOOL isSetter, BOOL isGetter)
{
	FunctionNode *node = [FunctionNode functionNodeWithIdentifier:(IdentifierNode *)ident 
		accessLevel:(AccessLevelNode *)accessLevel 
		attribute:(AttributeNode *)attribute
		arguments:(ListNode *)arguments 
		returnType:(IdentifierNode *)returnType];
	node.isSetter = isSetter;
	node.isGetter = isGetter;
	return node;
}

Node* makeAccessLevel(AccessLevel level)
{
	return [AccessLevelNode accessLevelNodeWithType:level];
}

Node* makeAttribute(AttributeType type)
{
	return [AttributeNode attributeNodeWithType:type];
}

Node* makeList(Node *node, ...)
{
	if (!node) return [[[ListNode alloc] init] autorelease];
	va_list arguments;
	Node *obj;
	va_start(arguments, node);
	NSMutableArray *nodes = [[NSMutableArray alloc] init];
	[nodes addObject:node];
	while (obj = va_arg(arguments, id)) 
	{
		[nodes addObject:obj];
	}
	va_end(arguments);
	if (![node isKindOfClass:[ListNode class]])
	{
		node = [ListNode listNodeWithNodes:nodes];
	}
	else
	{
		[(ListNode *)node addNodes:[nodes subarrayWithRange:NSMakeRange(1, [nodes count] - 2)]];
	}
	[nodes release];
	return node;
}

Node* makeVariable(Node *name, Node *type, Node *accessLevel, BOOL isStatic)
{
	VariableNode *node = [VariableNode variableNodeWithName:(IdentifierNode *)name 
		type:(QualifiedIdentifierNode *)type 
		accessLevel:(AccessLevelNode *)accessLevel];
	node.isStatic = isStatic;
	return node;
}

Node* makeArgument(Node *name, Node *type, BOOL isRest)
{
	ArgumentNode *node = [ArgumentNode argumentNodeWithName:(IdentifierNode *)name 
		type:(QualifiedIdentifierNode *)type];
	node.isRest = isRest;
	return node;
}