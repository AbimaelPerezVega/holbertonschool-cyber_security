# Holberton School Domain Investigation Report

## Overview
This report consolidates the findings from an investigation into the domain `holbertonschool.com` using data collected from the provided information. The investigation aimed to gather IP ranges, technologies, and frameworks utilized across the domain and its subdomains.

---

## IP Ranges
The IP ranges associated with the subdomains of `holbertonschool.com` are:

1. **192.0.78.0/24**
   - Associated with `blog.holbertonschool.com`
   - ASN: 2635
   - ASN Name: AUTOMATTIC
   - Geolocation: United States

2. **13.36.0.0/14**
   - Associated with:
     - `lvl2-discourse-staging.holbertonschool.com`
     - `staging-apply-forum.holbertonschool.com`
   - ASN: 16509
   - ASN Name: AMAZON-02
   - Geolocation: France

3. **54.86.0.0/16**
   - Associated with `v1.holbertonschool.com`
   - ASN: 14618
   - ASN Name: AMAZON-AES
   - Geolocation: United States

4. **34.192.0.0/12**
   - Associated with `v2.holbertonschool.com`
   - ASN: 14618
   - ASN Name: AMAZON-AES
   - Geolocation: United States

5. **52.47.0.0/16**
   - Associated with `yriry2.holbertonschool.com`
   - ASN: 16509
   - ASN Name: AMAZON-02
   - Geolocation: France

---

## Technologies and Frameworks
The following technologies and frameworks are used across the subdomains of `holbertonschool.com`:

### blog.holbertonschool.com
- **Hosting Provider:** AUTOMATTIC
- **Geolocation:** United States

### lvl2-discourse-staging.holbertonschool.com
- **Hosting Provider:** AMAZON-02
- **Geolocation:** France

### staging-apply-forum.holbertonschool.com
- **Hosting Provider:** AMAZON-02
- **Geolocation:** France

### v1.holbertonschool.com
- **Web Server:** LiteSpeed
- **Technologies:**
  - WordPress: 6.5.3
  - MySQL
  - PHP
  - LiteSpeed
  - Bootstrap
- **Geolocation:** United States
- **Title:** 301 Moved Permanently / Feedbuzz

### v2.holbertonschool.com
- **Hosting Provider:** AMAZON-AES
- **Geolocation:** United States

### yriry2.holbertonschool.com
- **Web Server:** Nginx
- **Technologies:**
  - Ruby on Rails
  - Nginx
  - Discourse
- **Geolocation:** France
- **Title:** 301 Moved Permanently

---

## Notes
- Most subdomains leverage Amazon Web Services (AWS) for hosting, with ASN names AMAZON-02 and AMAZON-AES being common.
- Technologies such as WordPress, Nginx, LiteSpeed, and Ruby on Rails dominate the domain's technical stack.
- Geolocations for the IP ranges are split between the United States and France, indicating a global infrastructure.

---

## Conclusion
The domain `holbertonschool.com` demonstrates a diverse use of technologies and hosting providers, with a significant reliance on AWS. The subdomains utilize a combination of modern frameworks and technologies to support their functionality.
