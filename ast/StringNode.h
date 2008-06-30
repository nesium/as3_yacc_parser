//
//  StringNode.h
//  AS3_Parser
//
//  Created by Marc Bauer on 27.06.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Node.h"


@interface StringNode : Node 
{
	NSMutableString *m_value;
}

- (NSString *)string;
- (id)initWithCString:(const char *)cString;
- (id)initWithQuotedCString:(const char *)cString;
+ (StringNode *)stringNodeWithCString:(const char *)cString;
+ (StringNode *)stringNodeWithQuotedCString:(const char *)cString;

@end