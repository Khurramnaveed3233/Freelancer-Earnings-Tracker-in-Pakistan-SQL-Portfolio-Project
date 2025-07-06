# Freelancer-Earnings-Tracker-in-Pakistan-SQL-Portfolio-Project

![cover](https://github.com/user-attachments/assets/18f302d1-402d-4614-a5cf-a52a25d5ab6f)

---

## 🎯 Objective

To build a robust SQL-based data model that tracks earnings, skills, reviews, and client details of freelancers in Pakistan. The goal is to uncover key trends and deliver actionable insights that can help freelancers grow their income and performance on platforms like **Upwork**, **Fiverr**, and **Freelancer**.
---

## 💼 My Goal is 

To empower freelancers in Pakistan by:

- Monitoring their earnings and performance trends  
- Identifying the most profitable platforms and skillsets  
- Providing data-backed insights for decision-making  
- Enhancing productivity and income through analytics  


---

## 📂 Project Architecture


- **Tools Used:** SQL Server, Excel, Power BI (optional), GitHub  
- **Schema:** 8 normalized, interrelated tables  
- **Sample Data:** 10 records per table (can be scaled to 200+ for full analysis)  


### 🗃️ Database Tables

| Table             | Description                               |
|------------------|-------------------------------------------|
| freelancers       | Basic profile info of freelancers         |
| projects          | Work details, earnings, ratings           |
| reviews           | Client feedback and response times        |
| skills            | Freelancer technical skills               |
| earnings_summary  | Monthly earnings and hours worked         |
| platforms         | Freelancing platforms and fee percentages |
| category          | Category types and popularity             |
| clients           | Client country and industry details       |

---

## 🧩 ERD Diagram

![sch](https://github.com/user-attachments/assets/a4936d12-2577-47fe-b368-4af1eaada125)


Key Relationships:

- `freelancers` → `projects`, `skills`, `earnings_summary`
- `projects` → `reviews`
- `projects` → `clients`, `category`

---

## 📈 Sample Business Questions Answered

1. Who are the top-earning freelancers?
2. Which freelancing categories are the most profitable?
3. Which platform gives the best hourly ROI?
4. Do freelancers with more skills earn more?
5. What’s the month-over-month trend of earnings?
6. Who has the fastest client response time?
7. How do beginner and expert freelancers differ in performance?
8. What is the client distribution by country and industry?
9. Which categories are most popular vs most profitable?
10. Use of SQL Window Functions to analyze historical trends

---

## 🧠 Example Query Snapshots : 

![1](https://github.com/user-attachments/assets/67faa2aa-8ce9-430d-8893-02022daeea13)

![2](https://github.com/user-attachments/assets/392fafa0-fbe0-47c5-9635-216c5cb4ef2a)

![3](https://github.com/user-attachments/assets/4b290667-296f-4996-919b-1d09a35043bc)

![4](https://github.com/user-attachments/assets/37f476e4-cfd5-4257-95c4-8efcccac97ef)

![5](https://github.com/user-attachments/assets/11e1dc70-02ee-41c3-bc47-fa15a9a24301)

![6](https://github.com/user-attachments/assets/caa43c57-a9de-431d-893a-0ebca44f1be7)

![7](https://github.com/user-attachments/assets/025eadae-0bcc-447f-8053-d80ef6f81ae1)

![8](https://github.com/user-attachments/assets/22602864-bd47-44f5-9ba5-a15c30f35900)

![9](https://github.com/user-attachments/assets/8de78177-cd39-45d5-b2a3-6c08baac6b4e)

![10](https://github.com/user-attachments/assets/51b97074-f0c4-43a8-bf7e-77bb30c7b669)


## 📌 Key Insights


- 🔹 Top 20% of freelancers contribute to over 60% of the total revenue  
- 🔹 SEO, Digital Marketing, and Web Development are high-paying skill areas  
- 🔹 Upwork yields the highest hourly earnings, while Fiverr is preferred by beginners  
- 🔹 Freelancers with **diverse skills** consistently earn more  
- 🔹 Faster response times correlate with better review scores  
- 🔹 Earnings show seasonal trends (notably in Q1 and Q4)


## Recommendations for Freelancers

Based on the data analysis conducted in this project, here are some practical, data-backed recommendations for freelancers in Pakistan:

- **Focus on High-Paying Skills:**  
  Skills like SEO, Digital Marketing, and Web Development consistently lead to higher earnings. Consider upskilling in these areas.

- **Improve Response Times:**  
  Freelancers with faster response times tend to get better reviews and more repeat clients. Use mobile apps or browser alerts to stay responsive.

- **Choose Platforms Strategically:**  
  Upwork shows higher hourly returns, making it ideal for experienced professionals. Fiverr is better for building a portfolio if you're just starting out.

- **Diversify Your Skillset:**  
  Data shows that freelancers with multiple skills earn more. Consider combining complementary skills (e.g., graphic design + video editing).

- **Track Your Monthly Growth:**  
  Monitor your earnings regularly. Look for patterns in your income to plan better and scale your efforts during high-earning months.

- **Explore International Clients:**  
  Clients from tech and finance industries in countries like the USA, UK, and UAE offer higher budgets. Focus on optimizing your profile for these markets.

- **Treat Freelancing Like a Business:**  
  Use data to guide decisions — from pricing and skills to platforms and response strategies. Your freelance work deserves the same structure as a full-time job.

---

> ✨ Freelancers who take a data-driven approach are better equipped to grow consistently, adapt to platform trends, and secure high-value clients.

## 📏 Key Metrics Tracked

- **Earnings per Hour**  
- **Total Earnings by Platform**  
- **Skill Count vs Average Earnings**  
- **Client Count by Country**  
- **Average Response Time by Freelancer**  
- **Monthly Earnings Growth (%)**

---

## 🧠 Skills Demonstrated

- Advanced SQL (Joins, Aggregations, Subqueries, CTEs, Window Functions)  
- Schema Design and Relational Data Modeling  
- Business Analysis and KPI Development  
- Data Cleaning Concepts (Outlier awareness, null handling)  
- Insight Extraction for Stakeholder Reporting

---

## 🎓 What I Learned

- How to break down real-world business problems into efficient SQL logic  
- Built a normalized schema and filled it with realistic sample data  
- Developed analytics for income trends, platform ROI, and category strength  
- Learned to present insights like a business dashboard without needing BI tools

---

## 🚀 Next Steps

- 📊 Integrate this project into a Power BI dashboard  
- 🔁 Automate monthly data refresh using SQL Agent or Python scripts  
- 🌍 Scale with actual freelancing platform data (via API or web scraping)  
- 📦 Turn into a complete BI solution with an ETL pipeline and reporting layer

## 🙌 About the Author

**👨‍💻 Khurram Naveed**  
*Aspiring Data Analyst | SQL Developer | Power BI Learner*

- 🌐 [LinkedIn](https://www.linkedin.com/in/khurram-naveed-0083851aa/)
- 💻 [GitHub](https://github.com/Khurramnaveed3233/Portfolio)

---

---

> ⭐ If you found this project helpful, give it a star, fork it, or share your feedback.  
> **Let’s grow the freelance economy with the power of data!**





