//
//  WXDailyForcast.m
//  SimpleWeather
//
//  Created by Michael Davidson on 1/12/15.
//  Copyright (c) 2015 Michael Davidson. All rights reserved.
//

#import "WXDailyForcast.h"

@implementation WXDailyForcast

+(NSDictionary *)JSONKeyPathsByPropertyKey
{
    NSMutableDictionary *paths = [[super JSONKeyPathsByPropertyKey] mutableCopy];

    paths[@"tempHigh"] = @"temp.max";
    paths[@"tempLow"] = @"temp.min";

    return paths;
}

@end
