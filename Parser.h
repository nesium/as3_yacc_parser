//
//  Parser.h
//  AS3_Parser
//
//  Created by Marc Bauer on 27.06.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Node.h"


@interface Parser : NSObject 
{
	NSLock *m_lock;
	NSData *m_data;
	unsigned m_pos;
}

+ (Parser *)sharedParser;
- (Node *)parse:(NSString *)str;
- (int)yyInputToBuffer:(char* )buffer withSize:(int)maxSize;

@end