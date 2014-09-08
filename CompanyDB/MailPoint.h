//
//  MailPoint.h
//  gimmeACompany
//
//  Created by Joan Barrull Ribalta on 07/09/14.
//  Copyright (c) 2014 Joan Barrull Ribalta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MailPoint : NSObject

@property (strong, nonatomic) NSString * name;
@property (strong, nonatomic) NSString * vicinity;
@property (nonatomic ) CLLocationCoordinate2D coordinate;

@end
