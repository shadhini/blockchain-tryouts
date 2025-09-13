# Fabric Application Stack

### 1. Prerequisite software: 
`the base layer needed to run the software`

###### Mac

- Homebrew
- Git
- cURL
- Docker Desktop
- Docker CLI 
- Docker Compose
- [optional] Go 
  ```bash
    brew install go
  ```
- [optional] JQ
  ```bash
    brew install jq
  ```
  
---

```bash
~ via 💎 v3.1.3
❯ brew --version
Homebrew 4.4.15

~ via 💎 v3.1.3
❯ git --version
git version 2.39.5 (Apple Git-154)

~ via 💎 v3.1.3
❯ curl --version
curl 7.84.0 (x86_64-apple-darwin13.4.0) libcurl/7.84.0 OpenSSL/1.1.1q zlib/1.2.12 libssh2/1.10.0 nghttp2/1.46.0
Release-Date: 2022-06-27
Protocols: dict file ftp ftps gopher gophers http https imap imaps mqtt pop3 pop3s rtsp scp sftp smb smbs smtp smtps telnet tftp
Features: alt-svc AsynchDNS GSS-API HSTS HTTP2 HTTPS-proxy IPv6 Kerberos Largefile libz NTLM NTLM_WB SPNEGO SSL threadsafe TLS-SRP UnixSockets

~ via 💎 v3.1.3
❯ docker --version
Docker version 27.4.0, build bde2b89

~ via 💎 v3.1.3
❯ docker-compose --version
Docker Compose version v2.31.0-desktop.2

~ via 💎 v3.1.3 took 23s
❯ go version
go version go1.23.5 darwin/arm64

~ via 💎 v3.1.3 took 11s
❯ jq --version
jq-1.6
```

###### Note
If you run in to errors while running Fabric-Samples with the Docker Desktop `gRPC FUSE for file sharing` option checked, 

- ---> uncheck this option in Docker Preferences to continue using `osxfs for file sharing`

### 2. Fabric and Fabric samples: 
the Fabric executables to run a Fabric network along with sample code

### 3. Contract APIs: 
to develop smart contracts executed on a Fabric Network

### 4. Application APIs: 
to develop your blockchain application

### 5. The Application: 
your blockchain application will utilize the `Application SDKs` 
to call smart contracts running on a Fabric network
