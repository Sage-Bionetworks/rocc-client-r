# AuthApi

All URIs are relative to *https://rocc.org/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AuthLocal**](AuthApi.md#AuthLocal) | **POST** /auth/local | Authentify a local account


# **AuthLocal**
> LocalAuthResponse AuthLocal(local.auth.request)

Authentify a local account

Authentify a local account with the specified credential

### Example
```R
library(openapi)

var.local.auth.request <- LocalAuthRequest$new("login_example", "password_example") # LocalAuthRequest | 

#Authentify a local account
api.instance <- AuthApi$new()
result <- api.instance$AuthLocal(var.local.auth.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **local.auth.request** | [**LocalAuthRequest**](LocalAuthRequest.md)|  | 

### Return type

[**LocalAuthResponse**](LocalAuthResponse.md)

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
| **401** | Unauthorized |  -  |
| **500** | The request cannot be fulfilled due to an unexpected server error |  -  |

