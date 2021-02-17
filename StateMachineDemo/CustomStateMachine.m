//
//  CustomStateMachine.m
//  StateMachineDemo
//
//  Created by Uladzislau Stankevich on 15.02.21.
//

#import "CustomStateMachine.h"
#import "StateMachine.h"
#import "State.h"
#import "Transition.h"
#import "Event.h"

@interface CustomStateMachine ()

@property (nonatomic, strong) StateMachine *stateMachine;

@end

@implementation CustomStateMachine

- (instancetype)init {
    self = [super init];
    if (self) {
        self.stateMachine = [StateMachine new];
        
        State *firstState = [State stateWithName:@"1"];

        [firstState setWillExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"1 WillExitStateBlock");
        }];
        [firstState setDidExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"1 DidExitStateBlock");
        }];
        
        [firstState setWillEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"1 WillEnterStateBlock");
        }];
        [firstState setDidEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"1 DidEnterStateBlock");
        }];
        
        State *secondState = [State stateWithName:@"2"];
        [secondState setWillEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"2 WillEnterStateBlock");
        }];
        [secondState setWillExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"2 WillExitStateBlock");
        }];
        [secondState setDidExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"2 DidExitStateBlock");
        }];
        [secondState setDidEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"2 DidEnterStateBlock");
        }];
        
        State *thirdState = [State stateWithName:@"3"];
        [thirdState setWillEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"3 WillEnterStateBlock");
        }];
        [thirdState setDidEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"3 DidEnterStateBlock");
        }];
        [thirdState setWillExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"3 WillExitStateBlock");
        }];
        [thirdState setDidExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"3 DidExitStateBlock");
        }];
        
        State *fourthState = [State stateWithName:@"4"];
        [fourthState setWillEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"4 WillEnterStateBlock");
        }];
        [fourthState setDidEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"4 DidEnterStateBlock");
        }];
        [fourthState setWillExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"4 WillExitStateBlock");
        }];
        [fourthState setDidExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"4 DidExitStateBlock");
        }];
        
        State *fifthState = [State stateWithName:@"5"];
        [fifthState setWillEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"5 WillEnterStateBlock");
        }];
        [fifthState setDidEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"5 DidEnterStateBlock");
        }];
        [fifthState setWillExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"5 WillExitStateBlock");
        }];
        [fifthState setDidExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"5 DidExitStateBlock");
        }];
        
        State *sixthState = [State stateWithName:@"6"];
        [sixthState setWillEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"6 WillEnterStateBlock");
        }];
        [sixthState setDidEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"6 DidEnterStateBlock");
        }];
        [sixthState setWillExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"6 WillExitStateBlock");
        }];
        [sixthState setDidExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"6 DidExitStateBlock");
        }];
        
        State *seventhState = [State stateWithName:@"7"];
        [seventhState setWillEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"7 WillEnterStateBlock");
        }];
        [seventhState setDidEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"7 DidEnterStateBlock");
        }];
        [seventhState setWillExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"7 WillExitStateBlock");
        }];
        [seventhState setDidExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"7 DidExitStateBlock");
        }];
        
        State *eighthState = [State stateWithName:@"8"];
        [eighthState setWillEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"8 WillEnterStateBlock");
        }];
        [eighthState setDidEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"8 DidEnterStateBlock");
        }];
        [eighthState setWillExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"8 WillExitStateBlock");
        }];
        [eighthState setDidExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"8 DidExitStateBlock");
        }];
        
        State *ninthState = [State stateWithName:@"9"];
        [ninthState setWillEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"9 WillEnterStateBlock");
        }];
        [ninthState setDidEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"9 DidEnterStateBlock");
        }];
        [ninthState setWillExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"9 WillExitStateBlock");
        }];
        [ninthState setDidExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"9 DidExitStateBlock");
        }];
        
        State *tenthState = [State stateWithName:@"10"];
        [tenthState setWillEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"10 WillEnterStateBlock");
        }];
        [tenthState setDidEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"10 DidEnterStateBlock");
        }];
        [tenthState setWillExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"10 WillExitStateBlock");
        }];
        [tenthState setDidExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"10 DidExitStateBlock");
        }];
        
        State *eleventhState = [State stateWithName:@"11"];
        [eleventhState setWillEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"11 WillEnterStateBlock");
        }];
        [eleventhState setDidEnterStateBlock:^(State *state, Transition *transition) {
            NSLog(@"11 DidEnterStateBlock");
        }];
        [eleventhState setWillExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"11 WillExitStateBlock");
        }];
        [eleventhState setDidExitStateBlock:^(State *state, Transition *transition) {
            NSLog(@"11 DidExitStateBlock");
        }];
        
        [self.stateMachine addStates:@[ firstState, secondState, thirdState, fourthState, fifthState, sixthState, seventhState, eighthState, ninthState, tenthState, eleventhState ]];
        
        Event *event1 = [Event eventWithName:@"event1" transitioningFromStates:@[firstState] toState:secondState];
        Event *event2 = [Event eventWithName:@"event2" transitioningFromStates:@[secondState] toState:thirdState];
        Event *event3 = [Event eventWithName:@"event3" transitioningFromStates:@[secondState, thirdState] toState:fourthState];
        Event *event4 = [Event eventWithName:@"event4" transitioningFromStates:@[thirdState, fourthState] toState:fifthState];
        Event *event5 = [Event eventWithName:@"event5" transitioningFromStates:@[secondState, fourthState] toState:sixthState];
        Event *event6 = [Event eventWithName:@"event6" transitioningFromStates:@[fourthState] toState:seventhState];
        Event *event7 = [Event eventWithName:@"event7" transitioningFromStates:@[seventhState] toState:fourthState];
        Event *event8 = [Event eventWithName:@"event8" transitioningFromStates:@[thirdState] toState:fourthState];
        Event *event9 = [Event eventWithName:@"event9" transitioningFromStates:@[ninthState] toState:secondState];
        Event *event10 = [Event eventWithName:@"event10" transitioningFromStates:@[fifthState, ninthState, eleventhState] toState:tenthState];
        Event *event11 = [Event eventWithName:@"event11" transitioningFromStates:@[tenthState] toState:seventhState];
        Event *event12 = [Event eventWithName:@"event12" transitioningFromStates:@[fifthState] toState:ninthState];
        Event *event13 = [Event eventWithName:@"event13" transitioningFromStates:@[sixthState, eighthState] toState:eleventhState];
        Event *event14 = [Event eventWithName:@"event14" transitioningFromStates:@[sixthState] toState:firstState];
        Event *event15 = [Event eventWithName:@"event15" transitioningFromStates:@[sixthState] toState:eighthState];

        [self.stateMachine addEvents:@[event1, event2, event3, event4, event5, event6, event7, event8, event9, event10, event11, event12, event13, event14, event15]];

        [self.stateMachine activate];
        [self.stateMachine fireEvent:event1];
        [self.stateMachine fireEvent:event2];
        [self.stateMachine fireEvent:event8];
        [self.stateMachine fireEvent:event4];
        [self.stateMachine fireEvent:event12];
        [self.stateMachine fireEvent:event9];
        [self.stateMachine fireEvent:event5];
        [self.stateMachine fireEvent:event15];
    }
    
    return self;
}

@end
