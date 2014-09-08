//
//  PointBuilder.h
//  gimmeACompany
//
//  Created by Joan Barrull Ribalta on 07/09/14.
//  Copyright (c) 2014 Joan Barrull Ribalta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MailPoint.h"

@interface PointBuilder : NSObject

+ (NSArray *)groupsFromJSON:(NSData *)data error:(NSError **)error;

@end
