//
//  MainTests.m
//  AS3_Parser
//
//  Created by Marc Bauer on 11.07.09.
//  Copyright 2009 nesiumdotcom. All rights reserved.
//

#import "MainTests.h"

#define TEST_DATA_PATH @"../../test"

@interface MainTests (Private)
- (Node *)_parseFile:(NSString *)filename;
@end

@implementation MainTests

- (Node *)_parseFile:(NSString *)filename
{
	NSError *error = nil;
	
	NSString *path = [[[[NSBundle bundleForClass:[self class]] bundlePath] 
		stringByDeletingLastPathComponent] stringByAppendingPathComponent:
		[TEST_DATA_PATH stringByAppendingPathComponent:filename]];
	
	NSString *str = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding 
		error:&error];
	STAssertNil(error, @"Could not open file %@", error);
	return [[Parser sharedParser] parse:str];
}

- (void)testClass
{
	Node *node;
	STAssertNoThrow(node = [self _parseFile:@"1_Class.as"], @"Parsing test failed");
	NSLog(@"NODE: %@", node);
}

@end