# AccountApi

All URIs are relative to *https://rocc.org/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetAccount**](AccountApi.md#GetAccount) | **GET** /accounts/{login} | Get an account


# **GetAccount**
> Account GetAccount(login)

Get an account

Returns the user or org account

### Example
```R
library(openapi)

var.login <- 'login_example' # character | The login of an account

#Get an account
api.instance <- AccountApi$new()
result <- api.instance$GetAccount(var.login)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login** | **character**| The login of an account | 

### Return type

[**Account**](Account.md)

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

