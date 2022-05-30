# JetBrains License Server Activator 2.0 🔓

1. Close application
2. Add `jetbrains.jar` file anywhere you like
3. Add VM Options
4. Open application
5. Add License server, choose from [license_servers.txt](https://github.com/george-martinec/jetbrains-activator/blob/master/license_servers.txt), e.g.: `http://153.106.195.23:8080` and press activate

## VM Options

Add into file `phpstorm64.vmoptions` or `phpstorm64.exe.vmoptions` <br>
Or you can create free trial account and add it via application (Help > Edit Custom VM Options...)

```
-XX:ReservedCodeCacheSize=512m
-XX:+IgnoreUnrecognizedVMOptions
-XX:+UseG1GC
-XX:SoftRefLRUPolicyMSPerMB=50
-XX:CICompilerCount=2
-XX:+HeapDumpOnOutOfMemoryError
-XX:-OmitStackTraceInFastThrow
-ea
-Dsun.io.useCanonCaches=false
-Djdk.http.auth.tunneling.disabledSchemes=""
-Djdk.attach.allowAttachSelf=true
-Djdk.module.illegalAccess.silent=true
-Dkotlinx.coroutines.debug=off
-XX:ErrorFile=$USER_HOME/java_error_in_idea_%p.log
-XX:HeapDumpPath=$USER_HOME/java_error_in_idea.hprof

--add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED
--add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED

-javaagent:/path/to/jetbrains.jar=jetbrains
```

#### Don't forget to change `/path/to/` to your actual path of the `jetbrains.jar` file !


If license server can't connect use Activation code
```
UBJ080XBA8-eyJsaWNlbnNlSWQiOiJVQkowODBYQkE4IiwibGljZW5zZWVOYW1lIjoid2l6YXJkcyBmbGFtIiwiYXNzaWduZWVOYW1lIjoiIiwiYXNzaWduZWVFbWFpbCI6IiIsImxpY2Vuc2VSZXN0cmljdGlvbiI6IiIsImNoZWNrQ29uY3VycmVudFVzZSI6ZmFsc2UsInByb2R1Y3RzIjpbeyJjb2RlIjoiUENXTVAiLCJmYWxsYmFja0RhdGUiOiIyMDIzLTA1LTA2IiwicGFpZFVwVG8iOiIyMDIzLTA1LTA2IiwiZXh0ZW5kZWQiOnRydWV9LHsiY29kZSI6IlBQUyIsImZhbGxiYWNrRGF0ZSI6IjIwMjMtMDUtMDYiLCJwYWlkVXBUbyI6IjIwMjMtMDUtMDYiLCJleHRlbmRlZCI6dHJ1ZX0seyJjb2RlIjoiUFdTIiwiZmFsbGJhY2tEYXRlIjoiMjAyMy0wNS0wNiIsInBhaWRVcFRvIjoiMjAyMy0wNS0wNiIsImV4dGVuZGVkIjp0cnVlfSx7ImNvZGUiOiJQU0kiLCJmYWxsYmFja0RhdGUiOiIyMDIzLTA1LTA2IiwicGFpZFVwVG8iOiIyMDIzLTA1LTA2IiwiZXh0ZW5kZWQiOnRydWV9LHsiY29kZSI6IlBTIiwiZmFsbGJhY2tEYXRlIjoiMjAyMy0wNS0wNiIsInBhaWRVcFRvIjoiMjAyMy0wNS0wNiIsImV4dGVuZGVkIjpmYWxzZX1dLCJtZXRhZGF0YSI6IjAxMjAyMjA1MDZQU0FOMDAwMDA1IiwiaGFzaCI6IlRSSUFMOi03MzgzNjIyMDQiLCJncmFjZVBlcmlvZERheXMiOjcsImF1dG9Qcm9sb25nYXRlZCI6ZmFsc2UsImlzQXV0b1Byb2xvbmdhdGVkIjpmYWxzZX0=-NgkokaeygnQ1xF7ak4D36oluHDn6RpYZxkYe+OrvSv1bEaVBZsp6zlfidwLx9lsNEHc9gd804xFMW3sGQBj0lSQ5fiTZmBO34ORoK54QIZjE6uIGizcQ/sDqmIKL5b/zNxPw+xVil/XJG2uJppQlSPPPbKHZ4Y92pA8a/Z1Ib0xaT9j3Z3q7ylhL1Bb4hFvDkwznPAL9AJWEp8eVLDTFwSeMuQEOwX3WywfDz0Vrxu9eMVJBcjRgBFI/kbmScJEK5SHoszrQHX92FHYdm/YjgwDIrGOXT0YcbmuWudB3CkoJW+1qAz1LCNzzCtEOcaCMy78Wm04a4mFQ/3a4zs7JwA==-MIIETDCCAjSgAwIBAgIBDTANBgkqhkiG9w0BAQsFADAYMRYwFAYDVQQDDA1KZXRQcm9maWxlIENBMB4XDTIwMTAxOTA5MDU1M1oXDTIyMTAyMTA5MDU1M1owHzEdMBsGA1UEAwwUcHJvZDJ5LWZyb20tMjAyMDEwMTkwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCUlaUFc1wf+CfY9wzFWEL2euKQ5nswqb57V8QZG7d7RoR6rwYUIXseTOAFq210oMEe++LCjzKDuqwDfsyhgDNTgZBPAaC4vUU2oy+XR+Fq8nBixWIsH668HeOnRK6RRhsr0rJzRB95aZ3EAPzBuQ2qPaNGm17pAX0Rd6MPRgjp75IWwI9eA6aMEdPQEVN7uyOtM5zSsjoj79Lbu1fjShOnQZuJcsV8tqnayeFkNzv2LTOlofU/Tbx502Ro073gGjoeRzNvrynAP03pL486P3KCAyiNPhDs2z8/COMrxRlZW5mfzo0xsK0dQGNH3UoG/9RVwHG4eS8LFpMTR9oetHZBAgMBAAGjgZkwgZYwCQYDVR0TBAIwADAdBgNVHQ4EFgQUJNoRIpb1hUHAk0foMSNM9MCEAv8wSAYDVR0jBEEwP4AUo562SGdCEjZBvW3gubSgUouX8bOhHKQaMBgxFjAUBgNVBAMMDUpldFByb2ZpbGUgQ0GCCQDSbLGDsoN54TATBgNVHSUEDDAKBggrBgEFBQcDATALBgNVHQ8EBAMCBaAwDQYJKoZIhvcNAQELBQADggIBAB2J1ysRudbkqmkUFK8xqhiZaYPd30TlmCmSAaGJ0eBpvkVeqA2jGYhAQRqFiAlFC63JKvWvRZO1iRuWCEfUMkdqQ9VQPXziE/BlsOIgrL6RlJfuFcEZ8TK3syIfIGQZNCxYhLLUuet2HE6LJYPQ5c0jH4kDooRpcVZ4rBxNwddpctUO2te9UU5/FjhioZQsPvd92qOTsV+8Cyl2fvNhNKD1Uu9ff5AkVIQn4JU23ozdB/R5oUlebwaTE6WZNBs+TA/qPj+5/we9NH71WRB0hqUoLI2AKKyiPw++FtN4Su1vsdDlrAzDj9ILjpjJKA1ImuVcG329/WTYIKysZ1CWK3zATg9BeCUPAV1pQy8ToXOq+RSYen6winZ2OO93eyHv2Iw5kbn1dqfBw1BuTE29V2FJKicJSu8iEOpfoafwJISXmz1wnnWL3V/0NxTulfWsXugOoLfv0ZIBP1xH9kmf22jjQ2JiHhQZP7ZDsreRrOeIQ/c4yR8IQvMLfC0WKQqrHu5ZzXTH4NO3CwGWSlTY74kE91zXB5mwWAx1jig+UXYc2w4RkVhy0//lOmVya/PEepuuTTI4+UJwC7qbVlh5zfhj8oTNUXgN0AOc+Q0/WFPl1aw5VV/VrO8FCoB15lFVlpKaQ1Yh+DVU8ke+rt9Th0BCHXe0uZOEmH0nOnH/0onD
```

### Works nicely with any plugins, e.g.: https://plugins.jetbrains.com/plugin/8006-material-theme-ui

## Operating System
| OS                                            | Supported Versions                  |
|-----------------------------------------------|-------------------------------------|
| [Ubuntu](https://ubuntu.com/download/desktop) | `Ubuntu 20.04.3 LTS` `Ubuntu 21.10` `Ubuntu 22.04 LTS` |
| [ZorinOS](https://zorin.com/)                 | `ZorinOS 15.3` `ZorinOS 16`         |
| [Windows](https://www.microsoft.com/windows)  | `Windows 10` `Windows 11`           |

There are a lots of Operating systems that I haven't tried, feel free to test and let me know.

<br>

| IDEs | Supported Versions |
| ------------- | ------------- |
|  <img align="center" src='https://raw.githubusercontent.com/george-martinec/jetbrains-evaluation-reset/master/icons/phpstorm_32x32.svg'/> | `2022.1`, `2022.1.x`

There are a lots of IDEs that I haven't tried, feel free to test and let me know.

<br>

Made with ❤️ by [George Martinec](https://github.com/George-Martinec)
