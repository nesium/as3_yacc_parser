//
//  IdentifierNode.h
//  AS3_Parser
//
//  Created by Marc Bauer on 28.06.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "StringNode.h"

@interface IdentifierNode : StringNode 
{

}

- (void)addIdentifier:(IdentifierNode *)ident;
+ (IdentifierNode *)identifierNodeWithCString:(const char *)cString;
+ (IdentifierNode *)identifierNodeWithQuotedCString:(const char *)cString;

@end