*** Settings ***
Library           RequestsLibrary
Resource          ../../resources/api/variablesAPI.robot


*** Keywords ***
User success GET data single user id
   	Create Session    my_session    ${base_url}     verify=true
	${headers}=    Create Dictionary    Accept=application/json    Content-Type=application/json    charset=utf-8
	${response}=    Get On Session    my_session   url=/${user_id}     headers=${headers} 
    log to console      ${response.text}

    #verify status code
    Should Be Equal As Numbers    ${response.status_code}    200
    
    #verify response body
    ${body} =       convert to string    ${response.content}
    should Contain      ${body}          ${data_firstname_user_1}
    should Contain      ${body}          ${data_lastname_user_1}
    Should Contain      ${body}          ${data_email_user_1}

User success POST create data user
   	Create Session    my_session    ${base_url}  verify=true
    ${headers}=    Create Dictionary    Accept=application/json    Content-Type=application/json    charset=utf-8
    ${response}=    Post On Session    my_session    /users    headers=${headers}    data=${data_user} 
	log to console      ${response.text}

    #verify status code
    Should Be Equal As Numbers    ${response.status_code}    201

    #verify response body
    ${body} =       convert to string    ${response.content}
    should Contain      ${body}          qa new user
    should Contain      ${body}          SDET
    

