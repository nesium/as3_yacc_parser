//
//  DropView.h
//  AS3_Parser
//
//  Created by Marc Bauer on 01.07.08.
//  Copyright 2008 nesiumdotcom. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface DropView : NSView 
{
	float m_phase;
	float m_maxPhase;
	float m_overColor;
	float m_upColor;
	float m_color;
	NSTimer *m_animationTimer;
}

@end