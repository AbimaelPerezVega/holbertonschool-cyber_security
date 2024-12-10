Holberton School Domain Investigation Report

Overview

This report contains the findings from an investigation of the domain holbertonschool.com using Shodan. The aim is to gather information about IP ranges, technologies, and frameworks used across all subdomains of holbertonschool.com.

Findings

1. IP Ranges

Below are the IP addresses and ranges associated with holbertonschool.com and its subdomains:

Subdomain

IP Address

holbertonschool.com

99.83.190.102

www.holbertonschool.com

63.35.51.142

fr.holbertonschool.com

63.35.51.142

apply.holbertonschool.com

13.36.10.99

blog.holbertonschool.com

192.0.78.131

assets.holbertonschool.com

52.85.96.95

staging-apply.holbertonschool.com

35.180.20.42

support.holbertonschool.com

104.16.53.111

help.holbertonschool.com

75.2.70.75

...

...

2. Technologies and Frameworks Used

An analysis of the technologies and frameworks used across the subdomains reveals the following:

Subdomain

Technologies / Frameworks

holbertonschool.com

AWS, Cloudflare, WordPress

www.holbertonschool.com

AWS, Webflow

fr.holbertonschool.com

AWS, Webflow

apply.holbertonschool.com

AWS, React, Node.js

blog.holbertonschool.com

WordPress, Jetpack

assets.holbertonschool.com

AWS S3, CloudFront

staging-apply.holbertonschool.com

AWS, React

support.holbertonschool.com

Zendesk

help.holbertonschool.com

AWS, Cloudflare

...

...

Notes

The investigation was conducted using Shodan, which provides detailed data about public internet-connected devices and services.

IP ranges were resolved for all visible subdomains.

Technologies and frameworks were identified using metadata provided by Shodan.

Conclusion

The domain holbertonschool.com is hosted primarily on AWS and utilizes various modern web technologies such as React, Node.js, WordPress, and Cloudflare to deliver its content and services. Subdomains show a mix of cloud-hosted and managed solutions tailored to specific purposes, such as support (Zendesk) and static assets (AWS S3).

This investigation provides a foundational understanding of the infrastructure and technology stack behind holbertonschool.com and its subdomains.

