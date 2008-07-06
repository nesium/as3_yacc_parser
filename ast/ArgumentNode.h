//
//  ArgumentNode.h
//  AS3_Parser
//
//  Created by Marc Bauer on 06.07.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Node.h"
#import "IdentifierNode.h"
#import "QualifiedIdentifierNode.h"


@interface ArgumentNode : Node
{
	IdentifierNode *m_name;
	QualifiedIdentifierNode *m_type;
	BOOL m_isRest;
}

@property (retain) IdentifierNode *name;
@property (retain) QualifiedIdentifierNode *type;
@property (assign) BOOL isRest;

+ (ArgumentNode *)argumentNodeWithName:(IdentifierNode *)name type:(QualifiedIdentifierNode *)type;

@end