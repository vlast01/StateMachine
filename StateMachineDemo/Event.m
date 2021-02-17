//
//  Event.m
//  StateMachineDemo
//
//  Created by Uladzislau Stankevich on 14.02.21.
//

#import "Event.h"
#import "Transition.h"
#import "State.h"

@interface Event ()

@property (nonatomic, copy, readwrite) NSString *name;
@property (nonatomic, copy, readwrite) NSArray *sourceStates;
@property (nonatomic, strong, readwrite) State *destinationState;

@end

@implementation Event

+ (instancetype)eventWithName:(NSString *)name transitioningFromStates:(NSArray *)sourceStates toState:(State *)destinationState {
    Event *event = [self new];
    event.name = name;
    event.sourceStates = sourceStates;
    event.destinationState = destinationState;
    return event;
}

@end
