//
//  Transition.m
//  StateMachineDemo
//
//  Created by Uladzislau Stankevich on 15.02.21.
//

#import "Transition.h"

@interface Transition ()

@property (nonatomic, strong, readwrite) Event *event;
@property (nonatomic, strong, readwrite) State *sourceState;
@property (nonatomic, strong, readwrite) StateMachine *stateMachine;

@end

@implementation Transition

+ (instancetype)transitionForEvent:(Event *)event fromState:(State *)sourceState inStateMachine:(StateMachine *)stateMachine {
    Transition *transition = [self new];
    transition.event = event;
    transition.sourceState = sourceState;
    transition.stateMachine = stateMachine;
    return transition;
}

- (State *)destinationState {
    return self.event.destinationState;
}


@end
