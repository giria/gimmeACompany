//
//  PointBuilder.m
//  gimmeACompany
//
//  Created by Joan Barrull Ribalta on 07/09/14.
//  Copyright (c) 2014 Joan Barrull Ribalta. All rights reserved.
//

#import "PointBuilder.h"

@implementation PointBuilder

+ (NSArray *)groupsFromJSON:(NSData *)data error:(NSError **)error {
    
    
    NSError *localError = nil;
    NSDictionary *parsedObject = [NSJSONSerialization JSONObjectWithData:data options:0 error:&localError];
    
    if (localError != nil) {
        *error = localError;
        return nil;
    }
    NSMutableArray *groups = [[NSMutableArray alloc] init];
    NSArray *results = [parsedObject valueForKey:@"results"];
    NSLog(@"Count %d", results.count);
    
    for (NSDictionary *groupDic in results) {
        
        MailPoint *mailPoint = [[MailPoint alloc] init];
        [mailPoint setName: [groupDic valueForKey: @"name"]];
        [mailPoint setVicinity: [groupDic valueForKey: @"vicinity"] ];
        NSDictionary * geometry = [groupDic valueForKeyPath:@"geometry"];
        NSDictionary *location = geometry[@"location"];
        CLLocationCoordinate2D coordinate2D;
        coordinate2D.latitude = [location[@"lat"] doubleValue];
        coordinate2D.longitude = [location[@"lng"] doubleValue];
        
        
        [mailPoint setCoordinate: coordinate2D];
        
        
        
        [groups addObject: mailPoint];
    }
    
    
    return groups;
}

@end
