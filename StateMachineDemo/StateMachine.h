//
//  StateMachine.h
//  StateMachineDemo
//
//  Created by Uladzislau Stankevich on 14.02.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Event, State;

@interface StateMachine : NSObject

@property (nonatomic, readonly) NSSet *states;
@property (nonatomic, strong) State *initialState;
@property (nonatomic, strong, readonly) State *currentState;
- (void)addState:(State *)state;
- (void)addStates:(NSArray *)arrayOfStates;

@property (nonatomic, readonly) NSSet *events;
- (void)addEvent:(Event *)event;
- (void)addEvents:(NSArray *)arrayOfEvents;
- (void)activate;
- (BOOL)isActive;
- (BOOL)fireEvent:(Event *)event;

@end

NS_ASSUME_NONNULL_END
