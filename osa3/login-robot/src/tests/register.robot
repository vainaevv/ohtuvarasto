*** Test Cases ***
Register With Valid Username And Password
    Input Credentials kalle kalle123
    Output Should Contain Logged in

Register With Already Taken Username And Valid Password
    Input Credentials username = taken password = valid
    Output Should Contain Invalid Username

Register With Too Short Username And Valid Password
    Input Credentials username < 3 password = valid
    Output Should Contain Username too short

Register With Enough Long But Invalid Username And Valid Password
    Input Credentials username != "A-Z" password = valid
    Output Should Contain Username invalid

Register With Valid Username And Too Short Password
    Input Credentials username = valid password < 8
    Output Should Contain Password too short 

Register With Valid username And Long Enough Password Containing Only Letters
    Input Credentials username = valid password = "A-Z"
    Output Should Contain Password is invalid

Input New Command And Create User