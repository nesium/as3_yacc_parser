//
//  Parser.m
//  AS3_Parser
//
//  Created by Marc Bauer on 27.06.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import "Parser.h"

extern Node *yyLastParsedNode;

void yyparse();
void yyrestart();
void yyreset_state();

int yyYYINPUT(char* buffer,int maxSize)
{
	return [[Parser sharedParser] yyInputToBuffer:buffer withSize:maxSize];
}

@interface Parser (Private)
- (void)setString:(NSString *)str;
@end

static Parser *g_sharedInstance;


@implementation Parser

#pragma mark -
#pragma mark Initialization & Deallocation

- (id)init
{
	if (g_sharedInstance)
	{
		[self release];
	}
	else if (self = g_sharedInstance = [[super init] retain])
	{
		m_lock = [[NSLock alloc] init];
	}
	return self;
}

- (void)dealloc
{
	[m_lock release];
	[super dealloc];
}

+ (Parser *)sharedParser
{
	return g_sharedInstance ?: [[self new] autorelease];
}



#pragma mark -
#pragma mark Public methods

- (Node *)parse:(NSString *)str
{
	[m_lock lock];
	@try
	{
		yyreset_state();
		yyrestart(NULL);
		[self setString:str];
		yyparse();
	}
	@catch (NSException *exception) 
	{
		yyLastParsedNode = nil;
		@throw(exception);
	}
	@finally 
	{
		[m_lock unlock];
	}
	return yyLastParsedNode;
}

- (int)yyInputToBuffer:(char* )buffer withSize:(int)maxSize
{
	int bytesRemaining = ([m_data length] - m_pos);
	int copySize = maxSize < bytesRemaining ? maxSize : bytesRemaining;
	[m_data getBytes:buffer range:NSMakeRange(m_pos, copySize)];  
	m_pos = m_pos + copySize;
	return copySize;
}



#pragma mark -
#pragma mark Private methods

- (void)setString:(NSString *)str
{
	NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
	[data retain];
	[data release];
	m_data = data;
	m_pos = 0;
}

@end