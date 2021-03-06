# Registry of Open Community Challenges API
#
# The OpenAPI specification implemented by the Challenge Registries. # Introduction TBA 
#
# The version of the OpenAPI document: 0.5.0
# Contact: thomas.schaffter@sagebionetworks.org
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title Grant
#'
#' @description Grant Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field id  character 
#'
#' @field name  character 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Grant <- R6::R6Class(
  'Grant',
  public = list(
    `id` = NULL,
    `name` = NULL,
    initialize = function(
        `id`, `name`, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
    },
    toJSON = function() {
      GrantObject <- list()
      if (!is.null(self$`id`)) {
        GrantObject[['id']] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        GrantObject[['name']] <-
          self$`name`
      }

      GrantObject
    },
    fromJSON = function(GrantJson) {
      GrantObject <- jsonlite::fromJSON(GrantJson)
      if (!is.null(GrantObject$`id`)) {
        self$`id` <- GrantObject$`id`
      }
      if (!is.null(GrantObject$`name`)) {
        self$`name` <- GrantObject$`name`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
        sprintf(
        '"id":
          "%s"
                ',
        self$`id`
        )},
        if (!is.null(self$`name`)) {
        sprintf(
        '"name":
          "%s"
                ',
        self$`name`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(GrantJson) {
      GrantObject <- jsonlite::fromJSON(GrantJson)
      self$`id` <- GrantObject$`id`
      self$`name` <- GrantObject$`name`
      self
    }
  )
)
