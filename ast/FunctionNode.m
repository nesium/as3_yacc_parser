//
//  FunctionNode.m
//  AS3_Parser
//
//  Created by Marc Bauer on 05.07.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import "FunctionNode.h"


@implementation FunctionNode

@synthesize accessLevel=m_accessLevel;
@synthesize attribute=m_attribute;
@synthesize identifier=m_identifier;
@synthesize arguments=m_arguments;
@synthesize returnType=m_returnType;
@synthesize isSetter=m_isSetter;
@synthesize isGetter=m_isGetter;

+ (FunctionNode *)functionNodeWithIdentifier:(IdentifierNode *)ident 
	accessLevel:(AccessLevelNode *)level
	attribute:(AttributeNode *)attribute
	arguments:(ListNode *)arguments
	returnType:(IdentifierNode *)returnType;
{
	FunctionNode *node = [[[FunctionNode alloc] init] autorelease];
	node.accessLevel = level;
	node.attribute = attribute;
	node.identifier = ident;
	node.arguments = arguments;
	node.returnType = returnType;
	NSLog(@"%@", node);
	return node;
}

- (NSString *)description
{
	return [NSString stringWithFormat:@"[FunctionNode] accessLevel: %@, attribute: %@, name: %@,\
returnType: %@", [m_accessLevel stringValue], [m_attribute stringValue], 
		[m_identifier string], [m_returnType string]];
}

@end