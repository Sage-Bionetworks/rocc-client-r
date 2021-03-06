# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test ChallengeOrganizer")

model.instance <- ChallengeOrganizer$new()

test_that("id", {
  # tests for the property `id` (character)
  # The unique identifier of a challenge organizer

  # uncomment below to test the property 
  #expect_equal(model.instance$`id`, "EXPECTED_RESULT")
})

test_that("name", {
  # tests for the property `name` (character)

  # uncomment below to test the property 
  #expect_equal(model.instance$`name`, "EXPECTED_RESULT")
})

test_that("login", {
  # tests for the property `login` (character)
  # The user or organization account name

  # uncomment below to test the property 
  #expect_equal(model.instance$`login`, "EXPECTED_RESULT")
})

test_that("roles", {
  # tests for the property `roles` (array[ChallengeOrganizerRole])

  # uncomment below to test the property 
  #expect_equal(model.instance$`roles`, "EXPECTED_RESULT")
})

