//
//  QualifiedIdentifierNode.h
//  AS3_Parser
//
//  Created by Marc Bauer on 30.06.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "IdentifierNode.h"


@interface QualifiedIdentifierNode : IdentifierNode
{

}

+ (QualifiedIdentifierNode *)qualifiedIdentifierNodeWithIdentifierNodes:(IdentifierNode *)node, ...;

@end