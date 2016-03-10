//
//  ObserverClass.m
//  DesignPatters
//
//  Created by Ashwini Tangade on 3/9/16.
//  Copyright © 2016 myCompany. All rights reserved.
//

#import "ObserverClass.h"

@implementation ObserverClass
@synthesize dict=_dict;
- (id)init
{
    self = [super init];
    if (self)
    {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(observerApiCalled:) name:@"observingObject" object:nil];
        self.dict = [[NSMutableDictionary alloc]init];
        [self.dict addObserver:self forKeyPath:@"nameChanged" options:0 context:nil];

    }
    return self;
}
-(void)observerApiCalled:(NSNotification*)info
{
    NSLog(@"%@",info.userInfo[@"string"]);
}
- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [self.dict removeObserver:self forKeyPath:@"nameChanged"];
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"nameChanged"])
    {
        NSLog(@"The new value for key %@ is %@",keyPath,[self.dict objectForKey:@"nameChanged"]);
    }
}

@end
