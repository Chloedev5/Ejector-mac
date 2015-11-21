//
//  NSUserDefaults+EJESuite.m
//  Ejector
//
//  Created by Chris Lundie on 20/Nov/2015.
//  Copyright © 2015 Chris Lundie. All rights reserved.
//

#import "NSUserDefaults+EJESuite.h"

static NSUserDefaults *_sharedInstance;

@implementation NSUserDefaults (EJESuite)

+ (instancetype)eje_sharedSuite
{
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    _sharedInstance = [[NSUserDefaults alloc] initWithSuiteName:@"LFZPMJ2CPK.ca.lundie.Ejector"];
  });
  return _sharedInstance;
}

@end
