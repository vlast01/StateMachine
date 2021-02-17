//
//  State.h
//  StateMachineDemo
//
//  Created by Uladzislau Stankevich on 14.02.21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Transition;

@interface State : NSObject 

+ (instancetype)stateWithName:(NSString *)name;
@property (nonatomic, copy, readonly) NSString *name;

- (void)setWillEnterStateBlock:(void (^)(State *state, Transition *transition))block;
- (void)setDidEnterStateBlock:(void (^)(State *state, Transition *transition))block;
- (void)setWillExitStateBlock:(void (^)(State *state, Transition *transition))block;
- (void)setDidExitStateBlock:(void (^)(State *state, Transition *transition))block;

@end

NS_ASSUME_NONNULL_END
