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
#import "ListNode.h"


@interface PackageNode : Node
{
	IdentifierNode *m_identifier;
	ListNode *m_statements;
}
@property (retain) IdentifierNode *identifier;
@property (retain) ListNode *statements;

+ (PackageNode *)packageNodeWithIdentifier:(IdentifierNode *)identifier 
	statements:(ListNode *)statements;
@end