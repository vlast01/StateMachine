//
//  StateMachine.m
//  StateMachineDemo
//
//  Created by Uladzislau Stankevich on 14.02.21.
//

#import "StateMachine.h"
#import "State.h"
#import "Event.h"
#import "Transition.h"

@interface State ()
@property (nonatomic, copy) void (^willEnterStateBlock)(State *, Transition *);
@property (nonatomic, copy) void (^didEnterStateBlock)(State *, Transition *);
@property (nonatomic, copy) void (^willExitStateBlock)(State *, Transition *);
@property (nonatomic, copy) void (^didExitStateBlock)(State *, Transition *);
@end

@interface StateMachine ()
@property (nonatomic, strong) NSMutableSet *mutableStates;
@property (nonatomic, strong) NSMutableSet *mutableEvents;
@property (nonatomic, assign, getter = isActive) BOOL active;
@property (nonatomic, strong, readwrite) State *currentState;
@property (nonatomic, strong) NSRecursiveLock *lock;
@end

#define RaiseIfActive() \
    if ([self isActive]) [NSException raise:@"StateMachineIsImmutableException" format:@"Unable to modify state machine: The state machine has already been activated."];

@implementation StateMachine

- (id)init {
    self = [super init];
    if (self) {
        self.mutableStates = [NSMutableSet set];
        self.mutableEvents = [NSMutableSet set];
        self.lock = [NSRecursiveLock new];
    }
    return self;
}

- (void)setInitialState:(State *)initialState {
    RaiseIfActive();
    _initialState = initialState;
}

- (void)addState:(State *)state {
    RaiseIfActive();

    if (self.initialState == nil) self.initialState = state;
    [self.mutableStates addObject:state];
}

- (void)addStates:(NSArray *)arrayOfStates {
    RaiseIfActive();
    for (State *state in arrayOfStates) {
        [self addState:state];
    }
}

- (void)addEvent:(Event *)event {
    RaiseIfActive();
    if (event.sourceStates) {
        for (State *state in event.sourceStates) {
            if (! [self.mutableStates containsObject:state]) {
                [NSException raise:NSInternalInconsistencyException format:@"Cannot add event '%@' to the state machine: the event references a state '%@', which has not been added to the state machine.", event.name, state.name];
            }
        }
    }
    if (! [self.mutableStates containsObject:event.destinationState]) [NSException raise:NSInternalInconsistencyException format:@"Cannot add event '%@' to the state machine: the event references a state '%@', which has not been added to the state machine.", event.name, event.destinationState.name];
    [self.mutableEvents addObject:event];
}

- (void)addEvents:(NSArray *)arrayOfEvents {
    RaiseIfActive();
    for (Event *event in arrayOfEvents) {
        [self addEvent:event];
    }
}

- (void)activate {
    if (self.isActive) [NSException raise:NSInternalInconsistencyException format:@"The state machine has already been activated."];
    [self.lock lock];
    self.active = YES;
    if (self.initialState.willEnterStateBlock) self.initialState.willEnterStateBlock(self.initialState, nil);
    self.currentState = self.initialState;
    if (self.initialState.didEnterStateBlock) self.initialState.didEnterStateBlock(self.initialState, nil);
    [self.lock unlock];
}

- (BOOL)fireEvent:(Event *)event {
    [self.lock lock];
    if (! self.isActive) [self activate];

    if (event.sourceStates != nil && ![event.sourceStates containsObject:self.currentState]) {
        [self.lock unlock];
        return NO;
    }

    Transition *transition = [Transition transitionForEvent:event fromState:self.currentState inStateMachine:self];

    State *oldState = self.currentState;
    State *newState = event.destinationState;
    
    if (oldState.willExitStateBlock) oldState.willExitStateBlock(oldState, transition);
    if (newState.willEnterStateBlock) newState.willEnterStateBlock(newState, transition);
    self.currentState = newState;
    if (oldState.didExitStateBlock) oldState.didExitStateBlock(oldState, transition);
    if (newState.didEnterStateBlock) newState.didEnterStateBlock(newState, transition);

    [self.lock unlock];

    
    return YES;
}


@end
