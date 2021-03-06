# Registry of Open Community Challenges API
#
# The OpenAPI specification implemented by the Challenge Registries. # Introduction TBA 
#
# The version of the OpenAPI document: 0.5.0
# Contact: thomas.schaffter@sagebionetworks.org
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title LocalAuthResponse
#'
#' @description LocalAuthResponse Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field token  character 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LocalAuthResponse <- R6::R6Class(
  'LocalAuthResponse',
  public = list(
    `token` = NULL,
    initialize = function(
        `token`, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`token`)) {
        stopifnot(is.character(`token`), length(`token`) == 1)
        self$`token` <- `token`
      }
    },
    toJSON = function() {
      LocalAuthResponseObject <- list()
      if (!is.null(self$`token`)) {
        LocalAuthResponseObject[['token']] <-
          self$`token`
      }

      LocalAuthResponseObject
    },
    fromJSON = function(LocalAuthResponseJson) {
      LocalAuthResponseObject <- jsonlite::fromJSON(LocalAuthResponseJson)
      if (!is.null(LocalAuthResponseObject$`token`)) {
        self$`token` <- LocalAuthResponseObject$`token`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`token`)) {
        sprintf(
        '"token":
          "%s"
                ',
        self$`token`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(LocalAuthResponseJson) {
      LocalAuthResponseObject <- jsonlite::fromJSON(LocalAuthResponseJson)
      self$`token` <- LocalAuthResponseObject$`token`
      self
    }
  )
)
