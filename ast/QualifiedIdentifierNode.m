//
//  QualifiedIdentifierNode.m
//  AS3_Parser
//
//  Created by Marc Bauer on 30.06.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import "QualifiedIdentifierNode.h"


@implementation QualifiedIdentifierNode

+ (QualifiedIdentifierNode *)qualifiedIdentifierNodeWithIdentifierNodes:(IdentifierNode *)node, ...
{
	QualifiedIdentifierNode *qNode = [[[QualifiedIdentifierNode alloc] init] autorelease];
	if (!node)
	{
		return qNode;
	}
	
	id eachObject;
	va_list argumentList;
	[[qNode valueForKey:@"m_value"] appendString:[node string]];
	va_start(argumentList, node);		// Start scanning for arguments after firstObject.
	while (eachObject = va_arg(argumentList, id)) // As many times as we can get an argument of type "id"
	{
		[[qNode valueForKey:@"m_value"] appendFormat:@".%@", [(IdentifierNode *)eachObject string]]; // that isn't nil, add it to self's contents.
	}
	va_end(argumentList);
	return qNode;
}

@end