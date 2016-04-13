//
//  MixpanelTracker.m
//  AcidMaps
//
//  Created by Pablo Branchi on 8/14/13.
//  Copyright (c) 2013 Acid. All rights reserved.
//

#import "MixpanelTracker.h"
#import "Mixpanel.h"
#import "AppDelegate.h"

@implementation MixpanelTracker

+ (NSMutableDictionary *)getSuperPropertyDictionary
{
    NSInteger userId = [[[AppDelegate sharedAppdelegate] currentUser] idUser];
    
    // crear diccionario 
    NSMutableDictionary *superPropDict =
        [NSMutableDictionary dictionaryWithDictionary:@{
                                              USER_ID:[NSNumber numberWithInt:userId],
                                            USER_NAME:[[[AppDelegate sharedAppdelegate] currentUser] name],
                                           USER_EMAIL:[[[AppDelegate sharedAppdelegate] currentUser] email]}];
    
    return superPropDict;
}

+ (void)trackEvent:(NSString *)eventString
{
    Mixpanel *mixpanel = [Mixpanel sharedInstance];
    
    // traer properties generales
    NSMutableDictionary *propDict = [MixpanelTracker getSuperPropertyDictionary];
    
    [mixpanel track:eventString
         properties:propDict];
}

+ (void)trackEvent:(NSString *)eventString
    withDictionary:(NSDictionary *)specDictionary
{
    Mixpanel *mixpanel = [Mixpanel sharedInstance];
    
    // traer properties generales
    NSMutableDictionary *propDict = [MixpanelTracker getSuperPropertyDictionary];
    
    // agregar properties específicos
    [propDict addEntriesFromDictionary:specDictionary];
    
    [mixpanel track:eventString
         properties:propDict];
    
    //DLog(@"TRACKEANDO: %@ \n%@", eventString, propDict);
}

@end
