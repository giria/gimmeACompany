//
//  MapPoint.m
//  CompanyDB
//
//  Created by Joan Barrull Ribalta on 5/14/14.
//  Copyright (c) 2014 Joan Barrull Ribalta. All rights reserved.
//

#import "MapPoint.h"

@implementation MapPoint


-(id)initWithName:(NSString*)name address:(NSString*)address coordinate:(CLLocationCoordinate2D)coordinate  {
    if ((self = [super init])) {
        _name = [name copy];
        _address = [address copy];
        _coordinate = coordinate;
        
    }
    return self;
}

-(NSString *)title {
    if ([_name isKindOfClass:[NSNull class]])
        return @"Unknown charge";
    else
        return _name;
}

-(NSString *)subtitle {
    return _address;
}

@end
