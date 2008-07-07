//
//  PackageNode.h
//  AS3_Parser
//
//  Created by Marc Bauer on 28.06.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Node.h"
#import "IdentifierNode.h"


@interface PackageNode : Node
{
	IdentifierNode *m_identifier;
}

@property (retain) IdentifierNode *identifier;

+ (PackageNode *)packageNodeWithIdentifier:(IdentifierNode *)identifier;

@end