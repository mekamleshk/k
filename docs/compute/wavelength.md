AWS Wavelength embeds AWS compute and storage services directly inside **Telecommunications Providers’ (Telco)** data centers—at the edge of the **5G network**.

* **The Problem it Solves:** Normally, mobile traffic has to travel from the device  Cell Tower  Telco Core Network  Internet  AWS Region. This introduces latency (lag).
* **The Wavelength Solution:** Traffic goes from Device  Cell Tower  **Wavelength Zone** (AWS servers inside the Telco facility). It skips the public internet hop entirely for the lowest possible latency to mobile devices.

---

### **2. Key Architecture Concepts for the Exam**

#### **Wavelength Zones**

* Similar to an Availability Zone (AZ) but located inside a carrier's 5G network (e.g., Verizon in the US, Vodafone in Europe).
* **VPC Extension:** You extend your existing VPC to a Wavelength Zone. You create a subnet in the Wavelength Zone, just like you would in a regular AZ.

#### **Carrier Gateway**

* **Critical Exam Keyword:** Just as an *Internet Gateway* connects a VPC to the Internet, a **Carrier Gateway** allows resources in the Wavelength subnet to communicate with the carrier's mobile network and the internet.
* **Function:** It performs NAT (Network Address Translation) to assign carrier IP addresses to your EC2 instances so mobile devices can reach them directly.

---

### **3. Common Exam Scenarios (Use Cases)**

If a question describes one of these scenarios, look for AWS Wavelength in the answers:

| Scenario                       | Keywords to Watch For                                                                        |
| ------------------------------ | -------------------------------------------------------------------------------------------- |
| **Smart Cities / IoT**         | "Connected vehicles," "Traffic analysis," "5G IoT sensors."                                  |
| **Real-time Gaming**           | "Game streaming to mobile devices," "Minimize jitter for mobile players."                    |
| **AR / VR**                    | "Augmented Reality rendering," "Virtual Reality for field workers," "Low latency rendering." |
| **Machine Learning Inference** | "Real-time inference at the edge," "Medical image analysis on mobile tablets."               |

---

### **4. "Edge" Service Comparison: The Exam Trap**

The exam often asks you to choose between **Outposts**, **Local Zones**, and **Wavelength**. Use this cheat sheet to distinguish them:

* **Choose AWS Wavelength if:**
* The users are on **Mobile / 5G devices**.
* You need ultra-low latency specifically for **mobile networks**.
* You **do not** own the data center (it's the Telco's facility).


* **Choose AWS Local Zones if:**
* The users are generic internet users (corporate offices, home gamers, content creators) in a specific city (e.g., Los Angeles, Houston).
* You need single-digit millisecond latency to a **specific geographic metro area**, regardless of whether they are on 5G, Wi-Fi, or wired fiber.


* **Choose AWS Outposts if:**
* The workload must run **on-premises** (in your own physical building/data center).
* Keywords: "Data residency requirements," "Run in client's own facility," "Hybrid cloud with local processing."
