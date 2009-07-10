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
	//[self parseFile:@"../../test/UIComponent.as"];
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
	LNCStopwatch *stopwatch = [[LNCStopwatch alloc] init];
	NSString *str = [NSString stringWithContentsOfFile:filename];
	[stopwatch start];
	@try
	{
		Node *ast = [[Parser sharedParser] parse:str];
		//NSLog(@"%@", ast);
	}
	@catch(NSException *exception)
	{
		NSLog(@"[%@]\n%@", filename, [exception reason]);
	}
	[stopwatch stop];
	//NSLog(@"---> parsing of file %@ took %f seconds", [filename lastPathComponent], 
	//	[stopwatch elapsedSeconds]);
	[stopwatch release];
}

- (IBAction)dropView_change:(id)sender
{
	NSString *path = [sender path];
	[m_label setStringValue:[path lastPathComponent]];
	NSFileManager *fm = [NSFileManager defaultManager];
	
	BOOL isDir;
	if ([fm fileExistsAtPath:path isDirectory:&isDir] && !isDir)
	{
		if (![[path pathExtension] isEqualToString:@"as"])
			return;
		[self parseFile:path];
		return;
	}
	
	NSArray *files = [fm subpathsAtPath:path];
	NSString *file;
	for (file in files)
	{
		if (![[file pathExtension] isEqualToString:@"as"])
		{
			continue;
		}
		[self parseFile:[path stringByAppendingPathComponent:file]];
	}
}

- (IBAction)reload:(id)sender
{
	if ([m_dropView path] == nil)
		return;
	[self dropView_change:m_dropView];
}

@end