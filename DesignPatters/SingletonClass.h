//
//  SingletonClass.h
//  DesignPatters
//
//  Created by Ashwini Tangade on 3/9/16.
//  Copyright © 2016 myCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonClass : NSObject
+(SingletonClass*)sharedInstance;
-(NSString*)reverseString:(NSMutableString*)inputString;
-(NSArray*)reverseArray:(NSMutableArray*)inputArray;
-(NSArray*)fibonacciSeries:(int)count;
-(NSArray*)sortedArray:(NSMutableArray*)inputArray;
@end
