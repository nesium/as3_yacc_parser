/*
 *  types.h
 *  AS3_Parser
 *
 *  Created by Marc Bauer on 06.07.08.
 *  Copyright 2008 nesiumdotcom. All rights reserved.
 *
 */

typedef enum {
	kUndefinedAccess,
    kPublicAccess,
    kPrivateAccess,
    kProtectedAccess,
	kInternalAccess
} AccessLevel;

typedef enum {
	kDynamicAttribute,
	kFinalAttribute,
	kOverrideAttribute,
	kStaticAttribute
} AttributeType;

typedef enum {
	kClassDynamicAttribute,
	kClassFinalAttribute,
	kClassInternalAttribute,
	kClassPublicAttribute
} ClassAttributeType;