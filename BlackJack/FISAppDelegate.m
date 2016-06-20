//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISBlackjackPlayer.h"
#import "FISCardDeck.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    FISBlackjackPlayer *newPlaya = [[FISBlackjackPlayer alloc] initWithName:@"Hank"];
    FISCardDeck *deck = [[FISCardDeck alloc] init];
    FISCard *card = [deck drawNextCard];
    [newPlaya acceptCard:card];
    NSLog(@"%@", newPlaya);
    card = [deck drawNextCard];
    [newPlaya acceptCard:card];
    NSLog(@"%@", newPlaya);

    return YES;
}

@end
