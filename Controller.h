//
//  Controller.h
//  AS3_Parser
//
//  Created by Marc Bauer on 27.06.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Parser.h"

@interface Controller : NSObject 
{

}

- (IBAction)openFile:(id)sender;
- (void)parseFile:(NSString *)filename;

@end