# GrantApi

All URIs are relative to *https://rocc.org/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateGrant**](GrantApi.md#CreateGrant) | **POST** /grants | Create a grant
[**DeleteAllGrants**](GrantApi.md#DeleteAllGrants) | **DELETE** /grants | Delete all grants
[**DeleteGrant**](GrantApi.md#DeleteGrant) | **DELETE** /grants/{grantId} | Delete a grant
[**GetGrant**](GrantApi.md#GetGrant) | **GET** /grants/{grantId} | Get a grant
[**ListGrants**](GrantApi.md#ListGrants) | **GET** /grants | Get all grants


# **CreateGrant**
> GrantCreateResponse CreateGrant(grant.create.request)

Create a grant

Create a grant with the specified name

### Example
```R
library(openapi)

var.grant.create.request <- GrantCreateRequest$new("name_example") # GrantCreateRequest | 

#Create a grant
api.instance <- GrantApi$new()
result <- api.instance$CreateGrant(var.grant.create.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant.create.request** | [**GrantCreateRequest**](GrantCreateRequest.md)|  | 

### Return type

[**GrantCreateResponse**](GrantCreateResponse.md)

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

# **DeleteAllGrants**
> object DeleteAllGrants()

Delete all grants

Delete all grants

### Example
```R
library(openapi)


#Delete all grants
api.instance <- GrantApi$new()
result <- api.instance$DeleteAllGrants()
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

# **DeleteGrant**
> object DeleteGrant(grant.id)

Delete a grant

Deletes the grant specified

### Example
```R
library(openapi)

var.grant.id <- 'grant.id_example' # character | The ID of the grant that is being created

#Delete a grant
api.instance <- GrantApi$new()
result <- api.instance$DeleteGrant(var.grant.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant.id** | **character**| The ID of the grant that is being created | 

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

# **GetGrant**
> Grant GetGrant(grant.id)

Get a grant

Returns the grant specified

### Example
```R
library(openapi)

var.grant.id <- 'grant.id_example' # character | The ID of the grant that is being created

#Get a grant
api.instance <- GrantApi$new()
result <- api.instance$GetGrant(var.grant.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant.id** | **character**| The ID of the grant that is being created | 

### Return type

[**Grant**](Grant.md)

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

# **ListGrants**
> PageOfGrants ListGrants(limit=10, offset=0)

Get all grants

Returns the grants

### Example
```R
library(openapi)

var.limit <- 10 # integer | Maximum number of results returned
var.offset <- 0 # integer | Index of the first result that must be returned

#Get all grants
api.instance <- GrantApi$new()
result <- api.instance$ListGrants(limit=var.limit, offset=var.offset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **integer**| Maximum number of results returned | [optional] [default to 10]
 **offset** | **integer**| Index of the first result that must be returned | [optional] [default to 0]

### Return type

[**PageOfGrants**](PageOfGrants.md)

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

