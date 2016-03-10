//
//  DelegateClass.h
//  DesignPatters
//
//  Created by Ashwini Tangade on 3/9/16.
//  Copyright © 2016 myCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Delegate <NSObject>
-(void)processComplete;
@end

@interface DelegateClass : NSObject
@property (nonatomic,strong) id delegate;
-(void)startSampleProcess;
@end
