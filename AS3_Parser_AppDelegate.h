//
//  AS3_Parser_AppDelegate.h
//  AS3_Parser
//
//  Created by Marc Bauer on 23.06.08.
//  Copyright nesiumdotcom 2008 . All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AS3_Parser_AppDelegate : NSObject 
{
    IBOutlet NSWindow *window;
    
    NSPersistentStoreCoordinator *persistentStoreCoordinator;
    NSManagedObjectModel *managedObjectModel;
    NSManagedObjectContext *managedObjectContext;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator;
- (NSManagedObjectModel *)managedObjectModel;
- (NSManagedObjectContext *)managedObjectContext;

- (IBAction)saveAction:sender;

@end
