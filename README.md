# Getting started

## How to Build


The generated code has dependencies over external libraries like UniRest. These dependencies are defined in the ```PodFile``` file that comes with the SDK. 
To resolve these dependencies, we use the Cocoapods package manager.
Visit https://guides.cocoapods.org/using/getting-started.html to setup Cocoapods on your system.
Open command prompt and type ```pod --version```. This should display the current version of Cocoapods installed if the installation was successful.

Using command line, navigate to the directory containing the generated files (including ```PodFile```) for the SDK. 
Run the command ```pod install```. This should install all the required dependencies and create the ```pods``` directory in your project directory.

![Installing dependencies using Cocoapods](https://apidocs.io/illustration/objc?step=AddDependencies&workspaceFolder=HealthOS-ObjC&workspaceName=HealthOS&projectName=HealthOS&rootNamespace=HealthOS)

Open the project workspace using the (HealthOS.xcworkspace) file. Invoke the build process using `Command(⌘)+B` shortcut key or using the `Build` menu as shown below.

![Building SDK using Xcode](https://apidocs.io/illustration/objc?step=BuildSDK&workspaceFolder=HealthOS-ObjC&workspaceName=HealthOS&projectName=HealthOS&rootNamespace=HealthOS)


## How to Use

The generated code is a Cocoa Touch Static Library which can be used in any iOS project. The support for these generated libraries go all the way back to iOS 6.

The following section explains how to use the HealthOS library in a new iOS project.     
### 1. Starting a new project
To start a new project, left-click on the ```Create a new Xcode project```.
![Create Test Project - Step 1](https://apidocs.io/illustration/objc?step=Test1&workspaceFolder=HealthOS-ObjC&workspaceName=HealthOS&projectName=HealthOS&rootNamespace=HealthOS)

Next, choose **Single View Application** and click ```Next```.
![Create Test Project - Step 2](https://apidocs.io/illustration/objc?step=Test2&workspaceFolder=HealthOS-ObjC&workspaceName=HealthOS&projectName=HealthOS&rootNamespace=HealthOS)

Provide **Test-Project** as the product name click ```Next```.
![Create Test Project - Step 3](https://apidocs.io/illustration/objc?step=Test3&workspaceFolder=HealthOS-ObjC&workspaceName=HealthOS&projectName=HealthOS&rootNamespace=HealthOS)

Choose the desired location of your project folder and click ```Create```.
![Create Test Project - Step 4](https://apidocs.io/illustration/objc?step=Test4&workspaceFolder=HealthOS-ObjC&workspaceName=HealthOS&projectName=HealthOS&rootNamespace=HealthOS)

### 2. Adding the static library dependency
To add this dependency open a terminal and navigate to your project folder. Next, input ```pod init``` and press enter.
![Add dependency - Step 1](https://apidocs.io/illustration/objc?step=Add0&workspaceFolder=HealthOS-ObjC&workspaceName=HealthOS&projectName=HealthOS&rootNamespace=HealthOS)

Next, open the newly created ```PodFile``` in your favourite text editor. Add the following line : pod 'HealthOS', :path => 'Vendor/HealthOS'
![Add dependency - Step 2](https://apidocs.io/illustration/objc?step=Add1&workspaceFolder=HealthOS-ObjC&workspaceName=HealthOS&projectName=HealthOS&rootNamespace=HealthOS)

Execute `pod install` from terminal to install the dependecy in your project. This would add the dependency to the newly created test project.
![Add dependency - Step 3](https://apidocs.io/illustration/objc?step=Add2&workspaceFolder=HealthOS-ObjC&workspaceName=HealthOS&projectName=HealthOS&rootNamespace=HealthOS)


## How to Test

Unit tests in this SDK can be run using Xcode. 

First build the SDK as shown in the steps above and naivgate to the project directory and open the HealthOS.xcworkspace file.

Go to the test explorer in Xcode as shown in the picture below and click on `run tests` from the menu. 
![Run tests](https://apidocs.io/illustration/objc?step=RunTests&workspaceFolder=HealthOS-ObjC&workspaceName=HealthOS&projectName=HealthOS&rootNamespace=HealthOS)


## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| host | TODO: add a description |
| oAuthAccessToken | The OAuth 2.0 access token to be set before API calls |



Configuration variables can be set as following.
```Objc
// Configuration parameters and credentials
Configuration_Host = "Configuration_Host";
Configuration_OAuthAccessToken = "Configuration_OAuthAccessToken"; // The OAuth 2.0 access token to be set before API calls

```

## Class Reference

### <a name="list_of_controllers"></a>List of Controllers

* [medicines](#medicines)
* [labtests](#labtests)
* [generics](#generics)
* [food](#food)
* [exercises](#exercises)
* [druginteractions](#druginteractions)
* [diseases](#diseases)
* [chat](#chat)
* [autocomplete](#autocomplete)
* [authentication](#authentication)

### <a name="medicines"></a>![Class: ](https://apidocs.io/img/class.png ".medicines") medicines

#### Get singleton instance
```objc
Medicines* medicines = [[Medicines alloc]init] ;
```

#### <a name="get_manufacturer_async_with_manufacturer_id"></a>![Method: ](https://apidocs.io/img/method.png ".medicines.getManufacturerAsyncWithManufacturerId") getManufacturerAsyncWithManufacturerId

> Get a manufacturer by its id


```objc
function getManufacturerAsyncWithManufacturerId:(NSString*) manufacturerId
                completionBlock:(CompletedGetManufacturer) onCompleted(manufacturerId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| manufacturerId |  ``` Required ```  | Id of the manufacturer |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* manufacturerId = @"manufacturer_id";

    [self.medicines getManufacturerAsyncWithManufacturerId: manufacturerId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="search_manufacturers_async_with_manufacturer_query"></a>![Method: ](https://apidocs.io/img/method.png ".medicines.searchManufacturersAsyncWithManufacturerQuery") searchManufacturersAsyncWithManufacturerQuery

> Search a manufacturer by its name


```objc
function searchManufacturersAsyncWithManufacturerQuery:(NSString*) manufacturerQuery
                completionBlock:(CompletedGetSearchManufacturers) onCompleted(manufacturerQuery)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| manufacturerQuery |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* manufacturerQuery = @"manufacturer_query";

    [self.medicines searchManufacturersAsyncWithManufacturerQuery: manufacturerQuery  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_common_side_effects_async_with_medicine_id"></a>![Method: ](https://apidocs.io/img/method.png ".medicines.getCommonSideEffectsAsyncWithMedicineId") getCommonSideEffectsAsyncWithMedicineId

> Get common side effects of a medicine


```objc
function getCommonSideEffectsAsyncWithMedicineId:(NSString*) medicineId
                completionBlock:(CompletedGetCommonSideEffects) onCompleted(medicineId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| medicineId |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* medicineId = @"medicine_id";

    [self.medicines getCommonSideEffectsAsyncWithMedicineId: medicineId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_popular_usage_async_with_medicine_id"></a>![Method: ](https://apidocs.io/img/method.png ".medicines.getPopularUsageAsyncWithMedicineId") getPopularUsageAsyncWithMedicineId

> Get popular usages of a medicine


```objc
function getPopularUsageAsyncWithMedicineId:(NSString*) medicineId
                completionBlock:(CompletedGetPopularUsage) onCompleted(medicineId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| medicineId |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* medicineId = @"medicine_id";

    [self.medicines getPopularUsageAsyncWithMedicineId: medicineId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_medicines_by_manufacturer_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".medicines.getMedicinesByManufacturerAsyncWithPage") getMedicinesByManufacturerAsyncWithPage

> Get medicines by a manufacturer


```objc
function getMedicinesByManufacturerAsyncWithPage:(int) page
                size:(int) size
                manufacturerId:(NSString*) manufacturerId
                completionBlock:(CompletedGetMedicinesByManufacturer) onCompleted(page size : size manufacturerId : manufacturerId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |
| manufacturerId |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    int page = 125;
    int size = 125;
    NSString* manufacturerId = @"manufacturer_id";

    [self.medicines getMedicinesByManufacturerAsyncWithPage: page size : size manufacturerId : manufacturerId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_similar_medicines_async_with_medicine_id"></a>![Method: ](https://apidocs.io/img/method.png ".medicines.getSimilarMedicinesAsyncWithMedicineId") getSimilarMedicinesAsyncWithMedicineId

> Get similar medicines


```objc
function getSimilarMedicinesAsyncWithMedicineId:(NSString*) medicineId
                completionBlock:(CompletedGetSimilarMedicines) onCompleted(medicineId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| medicineId |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* medicineId = @"medicine_id";

    [self.medicines getSimilarMedicinesAsyncWithMedicineId: medicineId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_medicine_async_with_medicine_id"></a>![Method: ](https://apidocs.io/img/method.png ".medicines.getMedicineAsyncWithMedicineId") getMedicineAsyncWithMedicineId

> Get a medicine


```objc
function getMedicineAsyncWithMedicineId:(NSString*) medicineId
                completionBlock:(CompletedGetMedicine) onCompleted(medicineId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| medicineId |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* medicineId = @"medicine_id";

    [self.medicines getMedicineAsyncWithMedicineId: medicineId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_all_medicines_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".medicines.getAllMedicinesAsyncWithPage") getAllMedicinesAsyncWithPage

> Get all medicines


```objc
function getAllMedicinesAsyncWithPage:(int) page
                size:(int) size
                completionBlock:(CompletedGetAllMedicines) onCompleted(page size : size)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    int page = [@"1" intValue];
    int size = [@"10" intValue];

    [self.medicines getAllMedicinesAsyncWithPage: page size : size  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="search_medicines_async_with_medicine_query"></a>![Method: ](https://apidocs.io/img/method.png ".medicines.searchMedicinesAsyncWithMedicineQuery") searchMedicinesAsyncWithMedicineQuery

> Search a medicine by name


```objc
function searchMedicinesAsyncWithMedicineQuery:(NSString*) medicineQuery
                completionBlock:(CompletedGetSearchMedicines) onCompleted(medicineQuery)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| medicineQuery |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* medicineQuery = @"medicine_query";

    [self.medicines searchMedicinesAsyncWithMedicineQuery: medicineQuery  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_all_manufacturers_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".medicines.getAllManufacturersAsyncWithPage") getAllManufacturersAsyncWithPage

> Get all manufacturers


```objc
function getAllManufacturersAsyncWithPage:(int) page
                size:(int) size
                completionBlock:(CompletedGetAllManufacturers) onCompleted(page size : size)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    int page = [@"1" intValue];
    int size = [@"10" intValue];

    [self.medicines getAllManufacturersAsyncWithPage: page size : size  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_alternative_medicines_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".medicines.getAlternativeMedicinesAsyncWithPage") getAlternativeMedicinesAsyncWithPage

> Get substitutes of a medicine


```objc
function getAlternativeMedicinesAsyncWithPage:(int) page
                size:(int) size
                medicineId:(NSString*) medicineId
                completionBlock:(CompletedGetAlternativeMedicines) onCompleted(page size : size medicineId : medicineId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |
| medicineId |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    int page = 217;
    int size = 217;
    NSString* medicineId = @"medicine_id";

    [self.medicines getAlternativeMedicinesAsyncWithPage: page size : size medicineId : medicineId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="labtests"></a>![Class: ](https://apidocs.io/img/class.png ".labtests") labtests

#### Get singleton instance
```objc
LabTests* labTests = [[LabTests alloc]init] ;
```

#### <a name="get_lab_test_async_with_lab_test_id"></a>![Method: ](https://apidocs.io/img/method.png ".labtests.getLabTestAsyncWithLabTestId") getLabTestAsyncWithLabTestId

> Get labtest by id


```objc
function getLabTestAsyncWithLabTestId:(NSString*) labTestId
                completionBlock:(CompletedGetLabTest) onCompleted(labTestId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| labTestId |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* labTestId = @"lab_test_id";

    [self.labTests getLabTestAsyncWithLabTestId: labTestId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_all_lab_tests_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".labtests.getAllLabTestsAsyncWithPage") getAllLabTestsAsyncWithPage

> All Lab tests


```objc
function getAllLabTestsAsyncWithPage:(int) page
                size:(int) size
                completionBlock:(CompletedGetAllLabTests) onCompleted(page size : size)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    int page = 217;
    int size = 217;

    [self.labTests getAllLabTestsAsyncWithPage: page size : size  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="search_lab_tests_async_with_lab_test_query"></a>![Method: ](https://apidocs.io/img/method.png ".labtests.searchLabTestsAsyncWithLabTestQuery") searchLabTestsAsyncWithLabTestQuery

> Search a lab test by name


```objc
function searchLabTestsAsyncWithLabTestQuery:(NSString*) labTestQuery
                completionBlock:(CompletedGetSearchLabTests) onCompleted(labTestQuery)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| labTestQuery |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* labTestQuery = @"lab_test_query";

    [self.labTests searchLabTestsAsyncWithLabTestQuery: labTestQuery  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="generics"></a>![Class: ](https://apidocs.io/img/class.png ".generics") generics

#### Get singleton instance
```objc
Generics* generics = [[Generics alloc]init] ;
```

#### <a name="get_generic_async_with_generic_id"></a>![Method: ](https://apidocs.io/img/method.png ".generics.getGenericAsyncWithGenericId") getGenericAsyncWithGenericId

> Get a generic by id


```objc
function getGenericAsyncWithGenericId:(NSString*) genericId
                completionBlock:(CompletedGetGeneric) onCompleted(genericId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| genericId |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* genericId = @"generic_id";

    [self.generics getGenericAsyncWithGenericId: genericId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_medicines_by_generic_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".generics.getMedicinesByGenericAsyncWithPage") getMedicinesByGenericAsyncWithPage

> Get medicines containing the generic


```objc
function getMedicinesByGenericAsyncWithPage:(int) page
                size:(int) size
                exclusive:(BOOL) exclusive
                genericId:(NSString*) genericId
                completionBlock:(CompletedGetMedicinesByGeneric) onCompleted(page size : size exclusive : exclusive genericId : genericId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |
| exclusive |  ``` Required ```  | TODO: Add a parameter description |
| genericId |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    int page = 217;
    int size = 217;
    BOOL exclusive = true;
    NSString* genericId = @"generic_id";

    [self.generics getMedicinesByGenericAsyncWithPage: page size : size exclusive : exclusive genericId : genericId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_all_generics_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".generics.getAllGenericsAsyncWithPage") getAllGenericsAsyncWithPage

> All generics


```objc
function getAllGenericsAsyncWithPage:(int) page
                size:(int) size
                completionBlock:(CompletedGetAllGenerics) onCompleted(page size : size)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    int page = 217;
    int size = 217;

    [self.generics getAllGenericsAsyncWithPage: page size : size  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="search_generics_async_with_generic_query"></a>![Method: ](https://apidocs.io/img/method.png ".generics.searchGenericsAsyncWithGenericQuery") searchGenericsAsyncWithGenericQuery

> Search a generic by name


```objc
function searchGenericsAsyncWithGenericQuery:(NSString*) genericQuery
                completionBlock:(CompletedGetSearchGenerics) onCompleted(genericQuery)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| genericQuery |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* genericQuery = @"generic_query";

    [self.generics searchGenericsAsyncWithGenericQuery: genericQuery  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="food"></a>![Class: ](https://apidocs.io/img/class.png ".food") food

#### Get singleton instance
```objc
Food* food = [[Food alloc]init] ;
```

#### <a name="search_food_restaurants_async_with_food_restaurant_query"></a>![Method: ](https://apidocs.io/img/method.png ".food.searchFoodRestaurantsAsyncWithFoodRestaurantQuery") searchFoodRestaurantsAsyncWithFoodRestaurantQuery

> TODO: Add Description


```objc
function searchFoodRestaurantsAsyncWithFoodRestaurantQuery:(NSString*) foodRestaurantQuery
                completionBlock:(CompletedGetSearchFoodRestaurants) onCompleted(foodRestaurantQuery)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| foodRestaurantQuery |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* foodRestaurantQuery = @"food_restaurant_query";

    [self.food searchFoodRestaurantsAsyncWithFoodRestaurantQuery: foodRestaurantQuery  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_all_food_brands_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".food.getAllFoodBrandsAsyncWithPage") getAllFoodBrandsAsyncWithPage

> TODO: Add Description


```objc
function getAllFoodBrandsAsyncWithPage:(int) page
                size:(int) size
                completionBlock:(CompletedGetAllFoodBrands) onCompleted(page size : size)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    int page = [@"1" intValue];
    int size = [@"10" intValue];

    [self.food getAllFoodBrandsAsyncWithPage: page size : size  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_food_items_by_restaurant_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".food.getFoodItemsByRestaurantAsyncWithPage") getFoodItemsByRestaurantAsyncWithPage

> TODO: Add Description


```objc
function getFoodItemsByRestaurantAsyncWithPage:(int) page
                size:(int) size
                foodRestaurantId:(NSString*) foodRestaurantId
                completionBlock:(CompletedGetFoodItemsByRestaurant) onCompleted(page size : size foodRestaurantId : foodRestaurantId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |
| foodRestaurantId |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    int page = 217;
    int size = 217;
    NSString* foodRestaurantId = @"food_restaurant_id";

    [self.food getFoodItemsByRestaurantAsyncWithPage: page size : size foodRestaurantId : foodRestaurantId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="search_food_brands_async_with_food_brand_query"></a>![Method: ](https://apidocs.io/img/method.png ".food.searchFoodBrandsAsyncWithFoodBrandQuery") searchFoodBrandsAsyncWithFoodBrandQuery

> TODO: Add Description


```objc
function searchFoodBrandsAsyncWithFoodBrandQuery:(NSString*) foodBrandQuery
                completionBlock:(CompletedGetSearchFoodBrands) onCompleted(foodBrandQuery)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| foodBrandQuery |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* foodBrandQuery = @"food_brand_query";

    [self.food searchFoodBrandsAsyncWithFoodBrandQuery: foodBrandQuery  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_food_item_async_with_food_item_id"></a>![Method: ](https://apidocs.io/img/method.png ".food.getFoodItemAsyncWithFoodItemId") getFoodItemAsyncWithFoodItemId

> TODO: Add Description


```objc
function getFoodItemAsyncWithFoodItemId:(NSString*) foodItemId
                completionBlock:(CompletedGetFoodItem) onCompleted(foodItemId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| foodItemId |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* foodItemId = @"food_item_id";

    [self.food getFoodItemAsyncWithFoodItemId: foodItemId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_all_food_items_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".food.getAllFoodItemsAsyncWithPage") getAllFoodItemsAsyncWithPage

> TODO: Add Description


```objc
function getAllFoodItemsAsyncWithPage:(int) page
                size:(int) size
                completionBlock:(CompletedGetAllFoodItems) onCompleted(page size : size)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    int page = 217;
    int size = 217;

    [self.food getAllFoodItemsAsyncWithPage: page size : size  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="search_food_items_async_with_food_item_query"></a>![Method: ](https://apidocs.io/img/method.png ".food.searchFoodItemsAsyncWithFoodItemQuery") searchFoodItemsAsyncWithFoodItemQuery

> TODO: Add Description


```objc
function searchFoodItemsAsyncWithFoodItemQuery:(NSString*) foodItemQuery
                completionBlock:(CompletedGetSearchFoodItems) onCompleted(foodItemQuery)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| foodItemQuery |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* foodItemQuery = @"food_item_query";

    [self.food searchFoodItemsAsyncWithFoodItemQuery: foodItemQuery  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_all_food_restaurants_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".food.getAllFoodRestaurantsAsyncWithPage") getAllFoodRestaurantsAsyncWithPage

> TODO: Add Description


```objc
function getAllFoodRestaurantsAsyncWithPage:(int) page
                size:(int) size
                completionBlock:(CompletedGetAllFoodRestaurants) onCompleted(page size : size)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    int page = [@"1" intValue];
    int size = [@"10" intValue];

    [self.food getAllFoodRestaurantsAsyncWithPage: page size : size  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_food_items_by_brand_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".food.getFoodItemsByBrandAsyncWithPage") getFoodItemsByBrandAsyncWithPage

> TODO: Add Description


```objc
function getFoodItemsByBrandAsyncWithPage:(int) page
                size:(int) size
                foodBrandId:(NSString*) foodBrandId
                completionBlock:(CompletedGetFoodItemsByBrand) onCompleted(page size : size foodBrandId : foodBrandId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |
| foodBrandId |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    int page = 217;
    int size = 217;
    NSString* foodBrandId = @"food_brand_id";

    [self.food getFoodItemsByBrandAsyncWithPage: page size : size foodBrandId : foodBrandId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="exercises"></a>![Class: ](https://apidocs.io/img/class.png ".exercises") exercises

#### Get singleton instance
```objc
Exercises* exercises = [[Exercises alloc]init] ;
```

#### <a name="get_exercise_async_with_exercise_id"></a>![Method: ](https://apidocs.io/img/method.png ".exercises.getExerciseAsyncWithExerciseId") getExerciseAsyncWithExerciseId

> TODO: Add Description


```objc
function getExerciseAsyncWithExerciseId:(NSString*) exerciseId
                completionBlock:(CompletedGetExercise) onCompleted(exerciseId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| exerciseId |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* exerciseId = @"exercise_id";

    [self.exercises getExerciseAsyncWithExerciseId: exerciseId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_all_exercises_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".exercises.getAllExercisesAsyncWithPage") getAllExercisesAsyncWithPage

> TODO: Add Description


```objc
function getAllExercisesAsyncWithPage:(int) page
                size:(int) size
                completionBlock:(CompletedGetAllExercises) onCompleted(page size : size)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    int page = [@"1" intValue];
    int size = [@"10" intValue];

    [self.exercises getAllExercisesAsyncWithPage: page size : size  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="search_exercises_async_with_exercise_query"></a>![Method: ](https://apidocs.io/img/method.png ".exercises.searchExercisesAsyncWithExerciseQuery") searchExercisesAsyncWithExerciseQuery

> TODO: Add Description


```objc
function searchExercisesAsyncWithExerciseQuery:(NSString*) exerciseQuery
                completionBlock:(CompletedGetSearchExercises) onCompleted(exerciseQuery)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| exerciseQuery |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* exerciseQuery = @"exercise_query";

    [self.exercises searchExercisesAsyncWithExerciseQuery: exerciseQuery  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="druginteractions"></a>![Class: ](https://apidocs.io/img/class.png ".druginteractions") druginteractions

#### Get singleton instance
```objc
DrugInteractions* drugInteractions = [[DrugInteractions alloc]init] ;
```

#### <a name="get_generics_interactions_async_with_generic_id"></a>![Method: ](https://apidocs.io/img/method.png ".druginteractions.getGenericsInteractionsAsyncWithGenericId") getGenericsInteractionsAsyncWithGenericId

> TODO: Add Description


```objc
function getGenericsInteractionsAsyncWithGenericId:(NSString*) genericId
                completionBlock:(CompletedGetGenericsInteractions) onCompleted(genericId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| genericId |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* genericId = @"generic_id";

    [self.drugInteractions getGenericsInteractionsAsyncWithGenericId: genericId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_medicine_interactions_async_with_medicine_id"></a>![Method: ](https://apidocs.io/img/method.png ".druginteractions.getMedicineInteractionsAsyncWithMedicineId") getMedicineInteractionsAsyncWithMedicineId

> TODO: Add Description


```objc
function getMedicineInteractionsAsyncWithMedicineId:(NSString*) medicineId
                completionBlock:(CompletedGetMedicineInteractions) onCompleted(medicineId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| medicineId |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* medicineId = @"medicine_id";

    [self.drugInteractions getMedicineInteractionsAsyncWithMedicineId: medicineId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="diseases"></a>![Class: ](https://apidocs.io/img/class.png ".diseases") diseases

#### Get singleton instance
```objc
Diseases* diseases = [[Diseases alloc]init] ;
```

#### <a name="get_disease_async_with_disease_id"></a>![Method: ](https://apidocs.io/img/method.png ".diseases.getDiseaseAsyncWithDiseaseId") getDiseaseAsyncWithDiseaseId

> TODO: Add Description


```objc
function getDiseaseAsyncWithDiseaseId:(NSString*) diseaseId
                completionBlock:(CompletedGetDisease) onCompleted(diseaseId)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| diseaseId |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* diseaseId = @"disease_id";

    [self.diseases getDiseaseAsyncWithDiseaseId: diseaseId  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_all_diseases_async_with_page"></a>![Method: ](https://apidocs.io/img/method.png ".diseases.getAllDiseasesAsyncWithPage") getAllDiseasesAsyncWithPage

> TODO: Add Description


```objc
function getAllDiseasesAsyncWithPage:(int) page
                size:(int) size
                completionBlock:(CompletedGetAllDiseases) onCompleted(page size : size)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Required ```  | TODO: Add a parameter description |
| size |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    int page = [@"1" intValue];
    int size = [@"10" intValue];

    [self.diseases getAllDiseasesAsyncWithPage: page size : size  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="search_diseases_async_with_disease_query"></a>![Method: ](https://apidocs.io/img/method.png ".diseases.searchDiseasesAsyncWithDiseaseQuery") searchDiseasesAsyncWithDiseaseQuery

> TODO: Add Description


```objc
function searchDiseasesAsyncWithDiseaseQuery:(NSString*) diseaseQuery
                completionBlock:(CompletedGetSearchDiseases) onCompleted(diseaseQuery)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| diseaseQuery |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* diseaseQuery = @"disease_query";

    [self.diseases searchDiseasesAsyncWithDiseaseQuery: diseaseQuery  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="chat"></a>![Class: ](https://apidocs.io/img/class.png ".chat") chat

#### Get singleton instance
```objc
Chat* chat = [[Chat alloc]init] ;
```

#### <a name="get_excercises_chat_with_completion_block"></a>![Method: ](https://apidocs.io/img/method.png ".chat.getExcercisesChatWithCompletionBlock") getExcercisesChatWithCompletionBlock

> TODO: Add Description


```objc
function getExcercisesChatWithCompletionBlock:(CompletedGetExcercisesChat) onCompleted()
```



#### Example Usage

```objc

    [self.chat getExcercisesChatWithCompletionBlock:  ^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_food_items_chat_with_completion_block"></a>![Method: ](https://apidocs.io/img/method.png ".chat.getFoodItemsChatWithCompletionBlock") getFoodItemsChatWithCompletionBlock

> TODO: Add Description


```objc
function getFoodItemsChatWithCompletionBlock:(CompletedGetFoodItemsChat) onCompleted()
```



#### Example Usage

```objc

    [self.chat getFoodItemsChatWithCompletionBlock:  ^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_medicine_chat_with_completion_block"></a>![Method: ](https://apidocs.io/img/method.png ".chat.getMedicineChatWithCompletionBlock") getMedicineChatWithCompletionBlock

> TODO: Add Description


```objc
function getMedicineChatWithCompletionBlock:(CompletedGetMedicineChat) onCompleted()
```



#### Example Usage

```objc

    [self.chat getMedicineChatWithCompletionBlock:  ^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="autocomplete"></a>![Class: ](https://apidocs.io/img/class.png ".autocomplete") autocomplete

#### Get singleton instance
```objc
Autocomplete* autocomplete = [[Autocomplete alloc]init] ;
```

#### <a name="get_exercises_async_with_exercise_query"></a>![Method: ](https://apidocs.io/img/method.png ".autocomplete.getExercisesAsyncWithExerciseQuery") getExercisesAsyncWithExerciseQuery

> TODO: Add Description


```objc
function getExercisesAsyncWithExerciseQuery:(NSString*) exerciseQuery
                completionBlock:(CompletedGetExercises) onCompleted(exerciseQuery)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| exerciseQuery |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* exerciseQuery = @"exercise_query";

    [self.autocomplete getExercisesAsyncWithExerciseQuery: exerciseQuery  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_diseases_async_with_disease_query"></a>![Method: ](https://apidocs.io/img/method.png ".autocomplete.getDiseasesAsyncWithDiseaseQuery") getDiseasesAsyncWithDiseaseQuery

> TODO: Add Description


```objc
function getDiseasesAsyncWithDiseaseQuery:(NSString*) diseaseQuery
                completionBlock:(CompletedGetDiseases) onCompleted(diseaseQuery)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| diseaseQuery |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* diseaseQuery = @"disease_query";

    [self.autocomplete getDiseasesAsyncWithDiseaseQuery: diseaseQuery  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_lab_tests_async_with_lab_test_query"></a>![Method: ](https://apidocs.io/img/method.png ".autocomplete.getLabTestsAsyncWithLabTestQuery") getLabTestsAsyncWithLabTestQuery

> TODO: Add Description


```objc
function getLabTestsAsyncWithLabTestQuery:(NSString*) labTestQuery
                completionBlock:(CompletedGetLabTests) onCompleted(labTestQuery)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| labTestQuery |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* labTestQuery = @"lab_test_query";

    [self.autocomplete getLabTestsAsyncWithLabTestQuery: labTestQuery  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_food_items_async_with_food_item_query"></a>![Method: ](https://apidocs.io/img/method.png ".autocomplete.getFoodItemsAsyncWithFoodItemQuery") getFoodItemsAsyncWithFoodItemQuery

> TODO: Add Description


```objc
function getFoodItemsAsyncWithFoodItemQuery:(NSString*) foodItemQuery
                completionBlock:(CompletedGetFoodItems) onCompleted(foodItemQuery)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| foodItemQuery |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* foodItemQuery = @"food_item_query";

    [self.autocomplete getFoodItemsAsyncWithFoodItemQuery: foodItemQuery  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_generics_async_with_generic_query"></a>![Method: ](https://apidocs.io/img/method.png ".autocomplete.getGenericsAsyncWithGenericQuery") getGenericsAsyncWithGenericQuery

> TODO: Add Description


```objc
function getGenericsAsyncWithGenericQuery:(NSString*) genericQuery
                completionBlock:(CompletedGetGenerics) onCompleted(genericQuery)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| genericQuery |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* genericQuery = @"generic_query";

    [self.autocomplete getGenericsAsyncWithGenericQuery: genericQuery  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


#### <a name="get_medicines_async_with_medicine_query"></a>![Method: ](https://apidocs.io/img/method.png ".autocomplete.getMedicinesAsyncWithMedicineQuery") getMedicinesAsyncWithMedicineQuery

> TODO: Add Description


```objc
function getMedicinesAsyncWithMedicineQuery:(NSString*) medicineQuery
                completionBlock:(CompletedGetMedicines) onCompleted(medicineQuery)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| medicineQuery |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    NSString* medicineQuery = @"medicine_query";

    [self.autocomplete getMedicinesAsyncWithMedicineQuery: medicineQuery  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```


[Back to List of Controllers](#list_of_controllers)

### <a name="authentication"></a>![Class: ](https://apidocs.io/img/class.png ".authentication") authentication

#### Get singleton instance
```objc
Authentication* authentication = [[Authentication alloc]init] ;
```

#### <a name="create_request_access_token_async_with_body"></a>![Method: ](https://apidocs.io/img/method.png ".authentication.createRequestAccessTokenAsyncWithBody") createRequestAccessTokenAsyncWithBody

> *Tags:*  ``` Skips Authentication ``` 

> TODO: Add Description


```objc
function createRequestAccessTokenAsyncWithBody:(RequestAccessTokenRequest*) body
                completionBlock:(CompletedPostRequestAccessToken) onCompleted(body)
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |





#### Example Usage

```objc
    // Parameters for the API call
    RequestAccessTokenRequest* body = (RequestAccessTokenRequest*) [APIHelper jsonDeserialize: @"{
  \"grant_type\": \"client_credentials\",
  \"client_id\": \"{{client_id}}\",
  \"client_secret\": \"{{client_secret}}\",
  \"scope\": \"public read write\"
}"
                toClass: RequestAccessTokenRequest.class];

    [self.authentication createRequestAccessTokenAsyncWithBody: body  completionBlock:^(BOOL success, HttpContext* context, id response, NSError* error) { 
       //Add code here
    }];
```

#### Errors

| Error Code | Error Description |
|------------|-------------------|
| 401 | Unauthorized |



[Back to List of Controllers](#list_of_controllers)



