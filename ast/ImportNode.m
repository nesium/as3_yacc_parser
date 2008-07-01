//
//  ImportNode.m
//  AS3_Parser
//
//  Created by Marc Bauer on 01.07.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import "ImportNode.h"


@implementation ImportNode

@synthesize value = m_value;


+ (ImportNode *)importNodeWithQualifiedIdentifierNode:(QualifiedIdentifierNode *)node
{
	ImportNode *importNode = [[[ImportNode alloc] init] autorelease];
	[importNode setValue:node];
	NSLog(@"%@", importNode);
	return importNode;
}

- (NSString *)description
{
	return [NSString stringWithFormat:@"[ImportNode] value: %@", [m_value string]];
}

@end