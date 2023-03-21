//
//

#import "P+CoreDataProperties.h"

@implementation P (CoreDataProperties)

+ (NSFetchRequest<P *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"P"];
}

@dynamic coin;
@dynamic cusmianzi;
@dynamic dec;
@dynamic fangyu;
@dynamic gongji;
@dynamic index;
@dynamic isBoss;
@dynamic isZR;
@dynamic lv;
@dynamic mingzi;
@dynamic selected;
@dynamic shengming;
@dynamic stats;
@dynamic zhandou_headView;
@dynamic zhucheng_bgImageView;
@dynamic zhucheng_headImageView;
@dynamic zr_kaipai;
@dynamic zr_noimage;
@dynamic zr_seleced;
@dynamic zr_selImage;
@dynamic zuidashengming;
@dynamic male;

@end
