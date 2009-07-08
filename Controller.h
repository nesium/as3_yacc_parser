//
//  Controller.h
//  AS3_Parser
//
//  Created by Marc Bauer on 27.06.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Parser.h"
#import "LNCStopwatch.h"
#import "DropView.h"

@interface Controller : NSObject 
{
	IBOutlet NSTextField *m_label;
	IBOutlet DropView *m_dropView;
}

- (IBAction)openFile:(id)sender;
- (IBAction)dropView_change:(id)sender;
- (void)parseFile:(NSString *)filename;
- (IBAction)reload:(id)sender;

@end