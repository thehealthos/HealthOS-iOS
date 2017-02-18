//
//  FoodItemsByRestaurantResponse.h
//  HealthOS
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ) on 02/18/2017
//
#ifndef APIMATIC_FOODITEMSBYRESTAURANTRESPONSE
#define APIMATIC_FOODITEMSBYRESTAURANTRESPONSE

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol FoodItemsByRestaurantResponse
@end

@interface FoodItemsByRestaurantResponse : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSString* itemName;

/**
* TODO: Write general description for this field
*/
@property int calories;

/**
* TODO: Write general description for this field
*/
@property double servingQty;

/**
* TODO: Write general description for this field
*/
@property NSString* servingUnit;

/**
* TODO: Write general description for this field
*/
@property NSString* foodItemId;

/**
* TODO: Write general description for this field
*/
@property NSString* foodBrandId;


/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap;

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper;

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName;

@end
#endif