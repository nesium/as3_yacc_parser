//
//  StringNode.m
//  AS3_Parser
//
//  Created by Marc Bauer on 27.06.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import "StringNode.h"


@implementation StringNode

- (id)init
{
	self = [super init];
	m_value = [[NSMutableString alloc] init];
	return self;
}

- (id)initWithCString:(const char *)cString 
{
	self = [super init];
	m_value = [[NSMutableString alloc] initWithCString:cString];
	return self;
}

- (id)initWithString:(NSString *)string
{
	self = [super init];
	m_value = [string mutableCopy];
	return self;
}

- (id)initWithQuotedCString:(const char *)cString
{
	self = [super init];
	if (self) 
	{
		m_value = [[NSMutableString alloc] initWithCString:cString];
		[(NSMutableString *)m_value deleteCharactersInRange:NSMakeRange(0, 1)];
		[(NSMutableString *)m_value deleteCharactersInRange:NSMakeRange([m_value length] - 1, 1)];
	}
	return self;
}

- (void)appendString:(NSString *)string
{
	[m_value appendString:string];
}

- (void)dealloc 
{
	[m_value release];
	[super dealloc];
}

- (NSString *)string
{
	return m_value;
}

+ (StringNode *)stringNodeWithCString:(const char *)cString 
{
	return [[[StringNode alloc] initWithCString:cString] autorelease];
}

+ (StringNode *)stringNodeWithQuotedCString:(const char *)cString 
{
	return [[[StringNode alloc] initWithQuotedCString:cString] autorelease];
}

- (NSString *)description
{
	return [NSString stringWithFormat:@"[%@] value: %@", [self className], m_value];
}

@end