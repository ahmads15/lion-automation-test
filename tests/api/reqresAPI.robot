*** Settings ***
Resource          ../../resources/api/keywordsAPI.robot


*** Test Cases ***
API GET Single User ID
  Then User success GET data single user id


API POST Create new user
  Then User success POST create data user



