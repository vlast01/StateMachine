//
//  State.m
//  StateMachineDemo
//
//  Created by Uladzislau Stankevich on 14.02.21.
//

#import "State.h"

@interface State ()
@property (nonatomic, copy, readwrite) NSString *name;
@property (nonatomic, copy) void (^willEnterStateBlock)(State *, Transition *);
@property (nonatomic, copy) void (^didEnterStateBlock)(State *, Transition *);
@property (nonatomic, copy) void (^willExitStateBlock)(State *, Transition *);
@property (nonatomic, copy) void (^didExitStateBlock)(State *, Transition *);
@end

@implementation State

+ (instancetype)stateWithName:(NSString *)name {
    State *state = [State new];
    state.name = name;
    return state;
}


@end
