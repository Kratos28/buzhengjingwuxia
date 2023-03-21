//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <UIKit/UIKit.h>
#import "P+CoreDataClass.h"
#define X(x) RpxX(x)
#define Y(x) RpxY(x)

#define saveCoreDataContext \
({\
CDM *app =  [CDM sharedInstance];\
[app saveContext];\
})\


#define appDelegate \
({\
CoreDataBuild *app =  [CDM sharedInstance];\
(app);\
})\


#define CoreDatacontext \
({\
CDM *app =  [CDM sharedInstance];\
([app managedObjectContext]);\
})\

NS_ASSUME_NONNULL_BEGIN

@interface CDM : NSObject

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (NSArray *)setupP;
+ (instancetype)sharedInstance;
- (void)saveContext;
@end

NS_ASSUME_NONNULL_END

static inline CGFloat RpxX(int defaultLength)
{
        double standardSize = 1179; //按照iphone 14 pro寸做标准 竖屏
    double sss = (double)([UIScreen mainScreen].bounds.size.width) / standardSize;
    double  rpx =  (1.0 *  sss);
    
    return rpx * defaultLength;
}

static inline CGFloat RpxY(CGFloat defaultLength)
{
    
    CGFloat standardSize = 2556 ; ///按照iphone 14 pro寸做标准 竖屏
    

    double sss = (double)([UIScreen mainScreen].bounds.size.height) / standardSize;
    double  rpx =  (1.0 *  sss);
    
    return rpx * defaultLength;
}


static inline CGFloat RpxW(CGFloat defaultLength)
{
    return RpxX(defaultLength);
}

static inline CGFloat RpxH(CGFloat defaultLength)
{
    return RpxY(defaultLength);
}
static inline int rand_num(int min, int max)
{
    return min + arc4random()%(max - min + 1);

}

