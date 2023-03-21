//
//

#import "P+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface P (CoreDataProperties)

+ (NSFetchRequest<P *> *)fetchRequest NS_SWIFT_NAME(fetchRequest());

@property (nonatomic) int16_t coin;
@property (nullable, nonatomic, copy) NSString *cusmianzi;
@property (nullable, nonatomic, copy) NSString *dec;
@property (nonatomic) int16_t fangyu;
@property (nonatomic) int16_t gongji;
@property (nonatomic) int16_t index;
@property (nonatomic) BOOL isBoss;
@property (nonatomic) BOOL isZR;
@property (nonatomic) int16_t lv;
@property (nullable, nonatomic, copy) NSString *mingzi;
@property (nonatomic) BOOL selected;
@property (nonatomic) int16_t shengming;
@property (nonatomic) int16_t stats;
@property (nullable, nonatomic, copy) NSString *zhandou_headView;
@property (nullable, nonatomic, copy) NSString *zhucheng_bgImageView;
@property (nullable, nonatomic, copy) NSString *zhucheng_headImageView;
@property (nullable, nonatomic, copy) NSString *zr_kaipai;
@property (nullable, nonatomic, copy) NSString *zr_noimage;
@property (nonatomic) BOOL zr_seleced;
@property (nullable, nonatomic, copy) NSString *zr_selImage;
@property (nonatomic) int16_t zuidashengming;
@property (nonatomic) BOOL male;

@end

NS_ASSUME_NONNULL_END
