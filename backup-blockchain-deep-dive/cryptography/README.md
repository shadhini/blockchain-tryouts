# Cryptography

### Cryptographic libraries:
* `OpenSSL`: already available on Ubuntu Linux distribution
* `LibreSSL`: already available on macOS


| Feature                  | OpenSSL                                | LibreSSL                              |
|--------------------------|----------------------------------------|---------------------------------------|
| **Origin**               | Established in 1998                    | Forked from OpenSSL in 2014 by OpenBSD |
| **Development Philosophy** | Extensive feature set and broad compatibility | Focus on code quality, security, and simplicity |
| **Maintenance**          | Maintained by the OpenSSL Project      | Maintained by the OpenBSD Project     |
| **Codebase Quality**     | Larger and more complex codebase       | Cleaner codebase with many legacy parts removed |
| **Security Focus**       | Regular updates and broad support      | Strong emphasis on security best practices |
| **Compatibility**        | Broad compatibility with many systems and applications | May lack some legacy features; focused on modern security practices |
| **Use Cases**            | Widely used in web servers, embedded systems, and applications | Used in security-focused environments like OpenBSD |
| **Documentation and Support** | Extensive documentation and community support | Strong community support, especially within OpenBSD |
| **OS Support**           | Cross-platform, supports most major operating systems including Windows, Linux, macOS, and Unix variants | Primarily developed for OpenBSD; also supports other Unix-like systems including Linux and macOS |


[//]: # (OpenSSL 3.0.1)

### Install OpenSSL on a Ubuntu container

```bash
docker run -it --name cryptography-tryouts ubuntu bash

# switch to the root user:
root@cae61c74118e:/# su -       

# check OS release version    
root@cae61c74118e:~# cat /etc/*release*
DISTRIB_DESCRIPTION="Ubuntu 24.04.1 LTS"
VERSION="24.04.1 LTS (Noble Numbat)"
    .....

# install sudo
root@cae61c74118e:~# apt-get install sudo
    .....
    
# install openssl
root@cae61c74118e:~# sudo apt-get install openssl
    .....
    
# confirm openssl installation & check the version
root@cae61c74118e:~# openssl version
OpenSSL 3.0.13 30 Jan 2024 (Library: OpenSSL 3.0.13 30 Jan 2024)
root@cae61c74118e:~# 
```

