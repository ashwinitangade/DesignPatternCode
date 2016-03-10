//
//  DelegateClass.m
//  DesignPatters
//
//  Created by Ashwini Tangade on 3/9/16.
//  Copyright © 2016 myCompany. All rights reserved.
//

#import "DelegateClass.h"

@implementation DelegateClass
-(void)startSampleProcess{
    
    [NSTimer scheduledTimerWithTimeInterval:3.0 target:self.delegate
                                   selector:@selector(processComplete) userInfo:nil repeats:NO];
    NSLog(@" start sample process");
}
@end
