//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NZ_baseTabBar : UITabBarController
@property (nonatomic,copy)NSMutableArray *dictarrayArray;
@property (nonatomic,copy)NSMutableArray *vcarray;
@property (nonatomic,copy)NSMutableArray *itemButtons;

- (void)initWithImages:(NSArray *)dictarray vc:(NSArray *)vc;
- (void)clickbtnClick:(UIButton *)sender;
@end

NS_ASSUME_NONNULL_END
