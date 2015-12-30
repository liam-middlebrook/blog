---
layout: post
title: "SSL and Nginx With Let\'s Encrypt"
tags: [Community]
---

I've owned the domain http://therubberduckis.in since last February, but I
haven't taken the time to do much with it. When
[Let's Encrypt](https://letsencrypt.org) was released I set up a mail server on
rubberduck. Today I got around to setting up HTTPS connections for rubberduck.
Now you can securely view anything hosted at https://therubberduckis.in!

The process to do this was fairly simple since I already had Let's Encrypt set
up.

1. Change the listen port to 443 instead of 80
    ```
    #listen 80;
    listen 443;
    ```
2. Enable SSL Authentication
    ```
    ssl on;
    ```
3. Point Nginx to the Certificate and Key files
    ```
    ssl_certificate /etc/letsencrypt/live/<DOMAIN>/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/<DOMAIN>/privkey.pem;
    ```
    These file paths may be different for you depending on how you have Let's
    Encrypt configured.
4. If you want to allow both http and https connections to your server you'll
have to change the following.
    ```
    listen 80;
    listen 443 ssl;

    #ssl on;
    ```

That's it! You should now allow https connections to your Nginx configuration
with Let's Encrypt!
