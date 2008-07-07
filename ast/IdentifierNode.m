//
//  IdentifierNode.m
//  AS3_Parser
//
//  Created by Marc Bauer on 28.06.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import "IdentifierNode.h"


@implementation IdentifierNode

- (void)addIdentifier:(IdentifierNode *)ident
{
	[m_value appendString:[ident string]];
}

+ (IdentifierNode *)identifierNodeWithCString:(const char *)cString
{
	return [[[IdentifierNode alloc] initWithCString:cString] autorelease];
}

+ (IdentifierNode *)identifierNodeWithQuotedCString:(const char *)cString
{
	return [[[IdentifierNode alloc] initWithQuotedCString:cString] autorelease];
}

@end