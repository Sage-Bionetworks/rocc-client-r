# Registry of Open Community Challenges API
#
# The OpenAPI specification implemented by the Challenge Registries. # Introduction TBA 
#
# The version of the OpenAPI document: 0.5.0
# Contact: thomas.schaffter@sagebionetworks.org
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title UserCreateRequest
#'
#' @description UserCreateRequest Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field login  character 
#'
#' @field email  character 
#'
#' @field password  character 
#'
#' @field name  character [optional]
#'
#' @field avatarUrl  character [optional]
#'
#' @field bio  character [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserCreateRequest <- R6::R6Class(
  'UserCreateRequest',
  public = list(
    `login` = NULL,
    `email` = NULL,
    `password` = NULL,
    `name` = NULL,
    `avatarUrl` = NULL,
    `bio` = NULL,
    initialize = function(
        `login`, `email`, `password`, `name`=NULL, `avatarUrl`=NULL, `bio`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`login`)) {
        stopifnot(is.character(`login`), length(`login`) == 1)
        self$`login` <- `login`
      }
      if (!missing(`email`)) {
        stopifnot(is.character(`email`), length(`email`) == 1)
        self$`email` <- `email`
      }
      if (!missing(`password`)) {
        stopifnot(is.character(`password`), length(`password`) == 1)
        self$`password` <- `password`
      }
      if (!is.null(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!is.null(`avatarUrl`)) {
        stopifnot(is.character(`avatarUrl`), length(`avatarUrl`) == 1)
        self$`avatarUrl` <- `avatarUrl`
      }
      if (!is.null(`bio`)) {
        stopifnot(is.character(`bio`), length(`bio`) == 1)
        self$`bio` <- `bio`
      }
    },
    toJSON = function() {
      UserCreateRequestObject <- list()
      if (!is.null(self$`login`)) {
        UserCreateRequestObject[['login']] <-
          self$`login`
      }
      if (!is.null(self$`email`)) {
        UserCreateRequestObject[['email']] <-
          self$`email`
      }
      if (!is.null(self$`password`)) {
        UserCreateRequestObject[['password']] <-
          self$`password`
      }
      if (!is.null(self$`name`)) {
        UserCreateRequestObject[['name']] <-
          self$`name`
      }
      if (!is.null(self$`avatarUrl`)) {
        UserCreateRequestObject[['avatarUrl']] <-
          self$`avatarUrl`
      }
      if (!is.null(self$`bio`)) {
        UserCreateRequestObject[['bio']] <-
          self$`bio`
      }

      UserCreateRequestObject
    },
    fromJSON = function(UserCreateRequestJson) {
      UserCreateRequestObject <- jsonlite::fromJSON(UserCreateRequestJson)
      if (!is.null(UserCreateRequestObject$`login`)) {
        self$`login` <- UserCreateRequestObject$`login`
      }
      if (!is.null(UserCreateRequestObject$`email`)) {
        self$`email` <- UserCreateRequestObject$`email`
      }
      if (!is.null(UserCreateRequestObject$`password`)) {
        self$`password` <- UserCreateRequestObject$`password`
      }
      if (!is.null(UserCreateRequestObject$`name`)) {
        self$`name` <- UserCreateRequestObject$`name`
      }
      if (!is.null(UserCreateRequestObject$`avatarUrl`)) {
        self$`avatarUrl` <- UserCreateRequestObject$`avatarUrl`
      }
      if (!is.null(UserCreateRequestObject$`bio`)) {
        self$`bio` <- UserCreateRequestObject$`bio`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`login`)) {
        sprintf(
        '"login":
          "%s"
                ',
        self$`login`
        )},
        if (!is.null(self$`email`)) {
        sprintf(
        '"email":
          "%s"
                ',
        self$`email`
        )},
        if (!is.null(self$`password`)) {
        sprintf(
        '"password":
          "%s"
                ',
        self$`password`
        )},
        if (!is.null(self$`name`)) {
        sprintf(
        '"name":
          "%s"
                ',
        self$`name`
        )},
        if (!is.null(self$`avatarUrl`)) {
        sprintf(
        '"avatarUrl":
          "%s"
                ',
        self$`avatarUrl`
        )},
        if (!is.null(self$`bio`)) {
        sprintf(
        '"bio":
          "%s"
                ',
        self$`bio`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(UserCreateRequestJson) {
      UserCreateRequestObject <- jsonlite::fromJSON(UserCreateRequestJson)
      self$`login` <- UserCreateRequestObject$`login`
      self$`email` <- UserCreateRequestObject$`email`
      self$`password` <- UserCreateRequestObject$`password`
      self$`name` <- UserCreateRequestObject$`name`
      self$`avatarUrl` <- UserCreateRequestObject$`avatarUrl`
      self$`bio` <- UserCreateRequestObject$`bio`
      self
    }
  )
)
