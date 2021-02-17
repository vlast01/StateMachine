//
//  Event.h
//  StateMachineDemo
//
//  Created by Uladzislau Stankevich on 14.02.21.
//

#import <Foundation/Foundation.h>
#import "State.h"
#import "Transition.h"

NS_ASSUME_NONNULL_BEGIN

@interface Event : NSObject

+ (instancetype)eventWithName:(NSString *)name transitioningFromStates:(NSArray *)sourceStates toState:(State *)destinationState;
@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, copy, readonly) NSArray *sourceStates;
@property (nonatomic, strong, readonly) State *destinationState;

@end

NS_ASSUME_NONNULL_END
