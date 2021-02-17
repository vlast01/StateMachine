//
//  Transition.h
//  StateMachineDemo
//
//  Created by Uladzislau Stankevich on 15.02.21.
//

#import <Foundation/Foundation.h>
#import "Event.h"
#import "State.h"
#import "StateMachine.h"

@class State, Event;

NS_ASSUME_NONNULL_BEGIN

@interface Transition : NSObject

+ (instancetype)transitionForEvent:(Event *)event fromState:(State *)sourceState inStateMachine:(StateMachine *)stateMachine;

@property (nonatomic, strong, readonly) Event *event;
@property (nonatomic, strong, readonly) State *sourceState;
@property (nonatomic, strong, readonly) State *destinationState;
@property (nonatomic, strong, readonly) StateMachine *stateMachine;

@end

NS_ASSUME_NONNULL_END
