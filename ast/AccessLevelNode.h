//
//  AccessLevelNode.h
//  AS3_Parser
//
//  Created by Marc Bauer on 05.07.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Node.h"
#import "types.h"


@interface AccessLevelNode : Node
{
	AccessLevel m_type;
}

@property (assign) AccessLevel type;

+ (AccessLevelNode *)accessLevelNodeWithType:(AccessLevel)type;
- (NSString *)stringValue;

@end