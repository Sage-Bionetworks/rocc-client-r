# Registry of Open Community Challenges API
#
# The OpenAPI specification implemented by the Challenge Registries. # Introduction TBA 
#
# The version of the OpenAPI document: 0.5.0
# Contact: thomas.schaffter@sagebionetworks.org
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title Account operations
#' @description openapi.Account
#' @format An \code{R6Class} generator object
#' @field apiClient Handles the client-server communication.
#'
#' @section Methods:
#' \describe{
#' \strong{ GetAccount } \emph{ Get an account }
#' Returns the user or org account
#'
#' \itemize{
#' \item \emph{ @param } login character
#' \item \emph{ @returnType } \link{Account} \cr
#'
#'
#' \item status code : 200 | Success
#'
#' \item return type : Account 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 404 | The specified resource was not found
#'
#' \item return type : Error 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 500 | The request cannot be fulfilled due to an unexpected server error
#'
#' \item return type : Error 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' }
#'
#'
#' @examples
#' \dontrun{
#' ####################  GetAccount  ####################
#'
#' library(openapi)
#' var.login <- 'login_example' # character | The login of an account
#'
#' #Get an account
#' api.instance <- AccountApi$new()
#'
#' result <- api.instance$GetAccount(var.login)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom base64enc base64encode
#' @export
AccountApi <- R6::R6Class(
  'AccountApi',
  public = list(
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    GetAccount = function(login, ...){
      apiResponse <- self$GetAccountWithHttpInfo(login, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    GetAccountWithHttpInfo = function(login, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`login`)) {
        stop("Missing required parameter `login`.")
      }

      body <- NULL
      urlPath <- "/accounts/{login}"
      if (!missing(`login`)) {
        urlPath <- gsub(paste0("\\{", "login", "\\}"), URLencode(as.character(`login`), reserved = TRUE), urlPath)
      }


      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "Account", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    }
  )
)
