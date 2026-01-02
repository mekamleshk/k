### **1. The Core Concept**

AWS Service Catalog allows organizations to create and manage catalogs of IT services that are approved for use on AWS.

* **The Problem it Solves:** Developers want to launch resources quickly, but the Security team doesn't want to give them full Admin access to creating whatever they want.
* **The Solution:** The Security/Cloud team creates "Approved Templates" (Products) and puts them in a "Menu" (Portfolio). Developers can only launch items from this menu.

### **2. Key Vocabulary (Exam Keywords)**

* **Product:**
* A product is an IT service that you want to make available for deployment.
* *Crucial for Exam:* In Service Catalog, a "Product" is almost always defined by an **AWS CloudFormation template**.


* **Portfolio:**
* A collection of "Products."
* You assign Portfolios to specific IAM Users, Groups, or Roles.


* **Provisioning Artifact:**
* This is simply a **version** of a product. (e.g., v1.0 of your web server uses t2.micro, v2.0 uses t3.micro).


* **Constraints:**
* Rules that limit how the product can be deployed.
* *Example:* You can launch an EC2 instance, but the constraint forces it to be a `t2.micro` or `t3.micro`. You cannot launch a `c5.large`.



---

### **3. The #1 Exam Topic: "Launch Constraints" (The Magic Trick)**

This is the most frequent Service Catalog question pattern on the exam.

**The Scenario:**
You have a Junior Developer. You do **not** want to give them permission to create EC2 instances directly (no `ec2:RunInstances` permission). However, you **do** want them to be able to launch a specific, approved Web Server for their project.

**The Solution:**
You use **Service Catalog with a Launch Constraint**.

1. You create a **Service Catalog Product** (the Web Server CloudFormation template).
2. You create an **IAM Role** that *does* have permission to create EC2 instances.
3. You assign that Role to the Product as a **Launch Constraint**.
4. The Junior Developer clicks "Launch."

**The Result:** The Developer triggers the launch, but **the Service Catalog service assumes the Role** to create the resources. The Developer never actually holds the permissions themselves.

> **Exam Rule:** If a question asks how to allow users to provision resources *without* granting them direct access to the underlying AWS services, the answer is **AWS Service Catalog with Launch Constraints.**

---

### **4. Deployment & Sharing (Multi-Account Strategy)**

The exam often asks how to share these standard templates across a large organization with many AWS accounts.

* **Hub and Spoke Model:** You create the Portfolios in a central "Master" or "Hub" account.
* **AWS Organizations:** You share the Portfolio with other AWS Accounts (or the entire Organization) using AWS Organizations integration.
* **Importing:** The "Spoke" (child) accounts import the portfolio so their local users can see the products.

---

### **5. Cheat Sheet Summary**

| Feature              | Exam Concept                                                                                                                |
| -------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| **Primary Use Case** | Governance, Compliance, and Self-Service.                                                                                   |
| **Underlying Tech**  | Uses **CloudFormation** templates to define the infrastructure.                                                             |
| **User Access**      | Users do not need permissions for the resources (e.g., EC2, RDS); they only need permission to use the **Service Catalog**. |
| **Launch Role**      | Allows users to provision resources they normally don't have access to (Security via Obscurity/Proxy).                      |
| **Tagging**          | You can enforce **TagOption Libraries** to ensure every resource launched automatically has the correct Cost Center tags.   |

### **Typical Exam Question Format**

**Q:** A company wants to ensure that developers only deploy RDS databases that are encrypted and use a specific instance size. The solution must minimize administrative overhead and allow developers to deploy these databases on demand.

**A:** Create a CloudFormation template for the RDS database with the required settings. Create a Product in **AWS Service Catalog**. Add the Product to a Portfolio and share it with the developers. Apply **Template Constraints** to restrict instance sizes.