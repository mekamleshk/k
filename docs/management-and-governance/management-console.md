### **1. Global vs. Regional Views (Classic Exam Trap)**

The exam frequently tests if you notice which services are "Global" versus "Regional" in the console. If you are in the `us-east-1` region and switch to a Global service, the region dropdown becomes grayed out or says "Global."

* **Regional Services (Most Common):** EC2, Lambda, RDS, DynamoDB, VPC.
* *Exam Consequence:* If you launch an EC2 instance in `us-east-1` and then switch your console to `us-west-2`, that instance will disappear from your view. It is still there; you just aren't looking in the right region.


* **Global Services (Memorize These):**
* **IAM (Identity & Access Management):** Users/Roles exist everywhere.
* **Amazon S3:** The "Bucket Namespace" is global (names must be unique worldwide), but the *data* sits in a specific region. The Console view, however, lists all buckets globally.
* **Amazon CloudFront:** Content delivery happens globally.
* **Route 53:** DNS is global.



### **2. Resource Groups & Tag Editor (The "Search" Tool)**

This is a specific tool *inside* the Console (found in the top navigation bar) that often appears in "Operational Excellence" questions.

* **The Problem:** You have 50 EC2 instances and 20 RDS databases spread across 3 different regions (US, Europe, Asia). You need to find all resources tagged `Project: Beta`.
* **The Wrong Answer:** Go to the EC2 console in US, search. Switch to Europe, search. Go to RDS console, search...
* **The Right Answer (Exam Keyword):** Use **AWS Resource Groups & Tag Editor**.
* It allows you to search for resources by **Tag** across **multiple regions** and **multiple services** at once.



### **3. Controlling Console Access (Security Domain)**

The exam tests how you secure the "front door."

* **Root User vs. IAM User:**
* **Root User:** The email you used to sign up. It has unlimited power. *Exam Rule:* **Never** use this for daily tasks. Only use it to change your support plan or close the account.
* **IAM User:** Created by you. You give them a specific link to sign in: `https://[your-account-id].signin.aws.amazon.com/console`.


* **MFA (Multi-Factor Authentication):**
* The exam will ask how to enforce MFA for console users.
* **Answer:** Create an IAM Policy that denies all actions (Effect: Deny) *unless* `aws:MultiFactorAuthPresent` is true.


* **AWS CloudShell:**
* This is a browser-based CLI *embedded* inside the Management Console.
* *Exam Use Case:* You need to run a quick AWS CLI script to restart a server, but you are on a borrowed laptop without terminal credentials. **Solution:** Log into the Console and open CloudShell. It inherits your Console credentials automatically.



### **4. Troubleshooting Dashboards**

When "things go wrong," the exam asks which Console dashboard to check.

| Dashboard Name                    | What it shows                                                                       | Exam Scenario                                                                                       |
| --------------------------------- | ----------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| **AWS Service Health Dashboard**  | Status of AWS services **globally** (e.g., "Is S3 down for everyone in the world?") | "You cannot access S3. You want to check if AWS is having a massive outage."                        |
| **AWS Personal Health Dashboard** | Status of AWS services **affecting YOU** specifically.                              | "You received an email that one of your EC2 instances is on degraded hardware and needs a restart." |

### **5. Cost & Billing Console**

While Cost Explorer is a tool, the **Billing Console** is where you configure *governance*.

* **Cost Allocation Tags:**
* You can tag an EC2 instance as `Department: HR` in the EC2 Console, but that tag **will not appear on the bill** until you go to the **Billing Console** and "Activate" that tag.
* *Exam Scenario:* "You tagged all resources, but the cost report still shows 'No Tag'. Why?" -> **Answer:** You forgot to activate the tags in the Billing Console.



### **Summary Checklist for Exam Day**

1. **S3** and **IAM** are Global views in the console.
2. **Tag Editor** finds resources across regions.
3. **Personal Health Dashboard** tells you if *your* specific resources are impacted by an outage.
4. **CloudShell** gives you a CLI inside the browser.
