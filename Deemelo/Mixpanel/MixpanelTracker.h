//
//  MixpanelTracker.h
//  AcidMaps
//
//  Created by Pablo Branchi on 8/14/13.
//  Copyright (c) 2013 Acid. All rights reserved.
//

#import <Foundation/Foundation.h>

#define USER_OPEN_APP @"Usuario abre la aplicacion"
#define USER_ID @"Identificador de usuario"
#define USER_NAME @"Nombre de usuario"
#define USER_EMAIL @"Email de usuario"

@interface MixpanelTracker : NSObject

+ (NSMutableDictionary *)getSuperPropertyDictionary;

+ (void)trackEvent:(NSString *)eventString;

+ (void)trackEvent:(NSString *)eventString
    withDictionary:(NSDictionary *)specDictionary;

@end
