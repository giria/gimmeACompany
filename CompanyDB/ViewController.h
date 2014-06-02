//
//  ViewController.h
//  CompanyDB
//
//  Created by Joan Barrull Ribalta on 5/13/14.
//  Copyright (c) 2014 Joan Barrull Ribalta. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "MapPoint.h"
#import <sqlite3.h>
#import <MessageUI/MFMailComposeViewController.h>

#define kGOOGLE_API_KEY @"AIzaSyAGoyMvg5SbEKujjD-hKdg_xG52bbFmTTs"
#define kBgQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)

@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate,MFMailComposeViewControllerDelegate>
{
    CLLocationManager *locationManager;
    CLLocationCoordinate2D currentCentre;
    int currenDist;
    BOOL firstLaunch;
    sqlite3 *companyDB;
    NSString  *databasePath;
}
- (IBAction)savePlaces:(UIButton *)sender;
- (IBAction)startButton:(id)sender;
@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@end
