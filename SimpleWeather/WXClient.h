//
//  WXClient.h
//  SimpleWeather
//
//  Created by Michael Davidson on 1/12/15.
//  Copyright (c) 2015 Michael Davidson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveCocoa/ReactiveCocoa/ReactiveCocoa.h>
@import CoreLocation;

@interface WXClient : NSObject

-(RACSignal *)fetchJSONFromURL:(NSURL *)url;
-(RACSignal *)fetchCurrentConditionsForLocation:(CLLocationCoordinate2D)coordinate;
-(RACSignal *)fetchHourlyForecastForLocation:(CLLocationCoordinate2D)coordinate;
-(RACSignal *)fetchDailyForecastForLocation:(CLLocationCoordinate2D)coordinate;

@end
