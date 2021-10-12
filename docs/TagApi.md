# TagApi

All URIs are relative to *https://rocc.org/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateTag**](TagApi.md#CreateTag) | **POST** /tags | Create a tag
[**DeleteAllTags**](TagApi.md#DeleteAllTags) | **DELETE** /tags | Delete all tags
[**DeleteTag**](TagApi.md#DeleteTag) | **DELETE** /tags/{tagId} | Delete a tag
[**GetTag**](TagApi.md#GetTag) | **GET** /tags/{tagId} | Get a tag
[**ListTags**](TagApi.md#ListTags) | **GET** /tags | Get all tags


# **CreateTag**
> TagCreateResponse CreateTag(tag.create.request)

Create a tag

Create a tag with the specified name

### Example
```R
library(openapi)

var.tag.create.request <- TagCreateRequest$new("name_example") # TagCreateRequest | 

#Create a tag
api.instance <- TagApi$new()
result <- api.instance$CreateTag(var.tag.create.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag.create.request** | [**TagCreateRequest**](TagCreateRequest.md)|  | 

### Return type

[**TagCreateResponse**](TagCreateResponse.md)

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

# **DeleteAllTags**
> object DeleteAllTags()

Delete all tags

Delete all tags

### Example
```R
library(openapi)


#Delete all tags
api.instance <- TagApi$new()
result <- api.instance$DeleteAllTags()
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

# **DeleteTag**
> object DeleteTag(tag.id)

Delete a tag

Deletes the tag specified

### Example
```R
library(openapi)

var.tag.id <- 'tag.id_example' # character | The unique identifier of the tag

#Delete a tag
api.instance <- TagApi$new()
result <- api.instance$DeleteTag(var.tag.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag.id** | **character**| The unique identifier of the tag | 

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

# **GetTag**
> Tag GetTag(tag.id)

Get a tag

Returns the tag specified

### Example
```R
library(openapi)

var.tag.id <- 'tag.id_example' # character | The unique identifier of the tag

#Get a tag
api.instance <- TagApi$new()
result <- api.instance$GetTag(var.tag.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag.id** | **character**| The unique identifier of the tag | 

### Return type

[**Tag**](Tag.md)

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

# **ListTags**
> PageOfTags ListTags(limit=10, offset=0)

Get all tags

Returns the tags

### Example
```R
library(openapi)

var.limit <- 10 # integer | Maximum number of results returned
var.offset <- 0 # integer | Index of the first result that must be returned

#Get all tags
api.instance <- TagApi$new()
result <- api.instance$ListTags(limit=var.limit, offset=var.offset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **integer**| Maximum number of results returned | [optional] [default to 10]
 **offset** | **integer**| Index of the first result that must be returned | [optional] [default to 0]

### Return type

[**PageOfTags**](PageOfTags.md)

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

