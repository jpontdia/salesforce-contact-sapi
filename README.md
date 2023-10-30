# Salesforce Contact SAPI
![Powered by](https://img.shields.io/badge/Powered%20by-Mulesoft-535597.svg)
  ![Unit test](https://gist.githubusercontent.com/jpontdia/2f22ca2ddf1ba473d6e2cff61cc2fba9/raw/salesforce-contact-sapi-ut.svg)
  ![Code coverage](https://gist.githubusercontent.com/jpontdia/2f22ca2ddf1ba473d6e2cff61cc2fba9/raw/salesforce-contact-sapi-cc.svg)
  ![Build](https://github.com/jpontdia/salesforce-contact-sapi/actions/workflows/build.yml/badge.svg)
  ![Build job](https://gist.githubusercontent.com/jpontdia/2f22ca2ddf1ba473d6e2cff61cc2fba9/raw/salesforce-contact-sapi-wf.svg)
  ![Release](https://gist.githubusercontent.com/jpontdia/2f22ca2ddf1ba473d6e2cff61cc2fba9/raw/salesforce-contact-sapi-re.svg)
  ![dev version](https://gist.githubusercontent.com/jpontdia/2f22ca2ddf1ba473d6e2cff61cc2fba9/raw/salesforce-contact-sapi-dev.svg)
  ![dev test](https://gist.githubusercontent.com/jpontdia/2f22ca2ddf1ba473d6e2cff61cc2fba9/raw/salesforce-contact-sapi-dev-test.svg)
<br>

Mulesoft service for creating contacts in Salesforce.
 
  > This project follows the standards defined in the Development Process Document in Anypoint Exchange. 
  
## Table of contents
1. [Description](#description) 
1. [Configuration](#configuration)

## Description  
Mulesoft service for creating contacts in Salesforce

<br>
 
## Configuration

The next properties must be provided to run the service:

| Property                  | Description               |
| ------------------------- | ------------------------- |
| salesforce.keystore       | Keystore with cetificates to connect with Salesforce. Salesforce JWT Authentication |
| salesforce.consumerkey    | Salesforce Consumer Key   |
| salesforce.principal      | Salesforce User           |
| salesforce.storepassword  | Password for the keystore |
| api.id                    | API Manager instance id |
| http.port                 | Listening port for the service |

<br>

---

- [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
- [Mulesoft Documentation](https://docs.mulesoft.com/general/)