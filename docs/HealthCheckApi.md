# HealthCheckApi

All URIs are relative to *https://rocc.org/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetHealthCheck**](HealthCheckApi.md#GetHealthCheck) | **GET** /healthcheck | Get health check information


# **GetHealthCheck**
> HealthCheck GetHealthCheck()

Get health check information

Get information about the health of the service

### Example
```R
library(openapi)


#Get health check information
api.instance <- HealthCheckApi$new()
result <- api.instance$GetHealthCheck()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthCheck**](HealthCheck.md)

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

