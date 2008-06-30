//
//  Controller.m
//  AS3_Parser
//
//  Created by Marc Bauer on 27.06.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import "Controller.h"


@implementation Controller

- (void)awakeFromNib
{
	[self parseFile:@"../../test/UIComponent.as"];
}

- (IBAction)openFile:(id)sender
{
	int result;
    NSArray *fileTypes = [NSArray arrayWithObject:@"as"];
    NSOpenPanel *oPanel = [NSOpenPanel openPanel];
 
    [oPanel setAllowsMultipleSelection:NO];
    result = [oPanel runModalForDirectory:NSHomeDirectory()
				file:nil types:fileTypes];
    if (result != NSOKButton) 
	{
		return;
	}
	[self parseFile:[oPanel filename]];
}

- (void)parseFile:(NSString *)filename
{
	NSString *str = [NSString stringWithContentsOfFile:filename];
	@try
	{
		Node *ast = [[Parser sharedParser] parse:str];
		NSLog(@"%@", ast);
	}
	@catch(NSException* exception)
	{
		NSLog(@"An error occured while parsing");
	}	
}

@end