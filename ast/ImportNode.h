//
//  ImportNode.h
//  AS3_Parser
//
//  Created by Marc Bauer on 01.07.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "QualifiedIdentifierNode.h"


@interface ImportNode : Node
{
	QualifiedIdentifierNode *m_value;
}

@property (retain) QualifiedIdentifierNode *value;

@end