# ChallengePlatformApi

All URIs are relative to *https://rocc.org/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateChallengePlatform**](ChallengePlatformApi.md#CreateChallengePlatform) | **POST** /challengePlatforms | Create a challenge platform
[**DeleteAllChallengePlatforms**](ChallengePlatformApi.md#DeleteAllChallengePlatforms) | **DELETE** /challengePlatforms | Delete all challenge platforms
[**DeleteChallengePlatform**](ChallengePlatformApi.md#DeleteChallengePlatform) | **DELETE** /challengePlatforms/{challengePlatformId} | Delete a challenge platform
[**GetChallengePlatform**](ChallengePlatformApi.md#GetChallengePlatform) | **GET** /challengePlatforms/{challengePlatformId} | Get a challenge platform
[**ListChallengePlatforms**](ChallengePlatformApi.md#ListChallengePlatforms) | **GET** /challengePlatforms | Get all challenge platforms


# **CreateChallengePlatform**
> ChallengePlatformCreateResponse CreateChallengePlatform(challenge.platform.create.request)

Create a challenge platform

Create a challenge platform with the specified ID

### Example
```R
library(openapi)

var.challenge.platform.create.request <- ChallengePlatformCreateRequest$new("name_example", "displayName_example", "websiteUrl_example", "avatarUrl_example") # ChallengePlatformCreateRequest | 

#Create a challenge platform
api.instance <- ChallengePlatformApi$new()
result <- api.instance$CreateChallengePlatform(var.challenge.platform.create.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challenge.platform.create.request** | [**ChallengePlatformCreateRequest**](ChallengePlatformCreateRequest.md)|  | 

### Return type

[**ChallengePlatformCreateResponse**](ChallengePlatformCreateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Success |  -  |
| **400** | Invalid request |  -  |
| **409** | The request conflicts with current state of the target resource |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **DeleteAllChallengePlatforms**
> object DeleteAllChallengePlatforms()

Delete all challenge platforms

Delete all challenge platforms

### Example
```R
library(openapi)


#Delete all challenge platforms
api.instance <- ChallengePlatformApi$new()
result <- api.instance$DeleteAllChallengePlatforms()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **DeleteChallengePlatform**
> object DeleteChallengePlatform(challenge.platform.id)

Delete a challenge platform

Deletes the challenge platform specified

### Example
```R
library(openapi)

var.challenge.platform.id <- 'challenge.platform.id_example' # character | The unique identifier of the challenge platform

#Delete a challenge platform
api.instance <- ChallengePlatformApi$new()
result <- api.instance$DeleteChallengePlatform(var.challenge.platform.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challenge.platform.id** | **character**| The unique identifier of the challenge platform | 

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **404** | The specified resource was not found |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **GetChallengePlatform**
> ChallengePlatform GetChallengePlatform(challenge.platform.id)

Get a challenge platform

Returns the challenge platform specified

### Example
```R
library(openapi)

var.challenge.platform.id <- 'challenge.platform.id_example' # character | The unique identifier of the challenge platform

#Get a challenge platform
api.instance <- ChallengePlatformApi$new()
result <- api.instance$GetChallengePlatform(var.challenge.platform.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **challenge.platform.id** | **character**| The unique identifier of the challenge platform | 

### Return type

[**ChallengePlatform**](ChallengePlatform.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **404** | The specified resource was not found |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

# **ListChallengePlatforms**
> PageOfChallengePlatforms ListChallengePlatforms(limit=10, offset=0)

Get all challenge platforms

Returns the challenge platforms

### Example
```R
library(openapi)

var.limit <- 10 # integer | Maximum number of results returned
var.offset <- 0 # integer | Index of the first result that must be returned

#Get all challenge platforms
api.instance <- ChallengePlatformApi$new()
result <- api.instance$ListChallengePlatforms(limit=var.limit, offset=var.offset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **integer**| Maximum number of results returned | [optional] [default to 10]
 **offset** | **integer**| Index of the first result that must be returned | [optional] [default to 0]

### Return type

[**PageOfChallengePlatforms**](PageOfChallengePlatforms.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |
| **400** | Invalid request |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

