# Freelancer-Earnings-Tracker-in-Pakistan-SQL-Portfolio-Project

![cover](https://github.com/user-attachments/assets/18f302d1-402d-4614-a5cf-a52a25d5ab6f)

---

## 🎯 Objective

To build a robust SQL data model that captures the earnings, skillsets, client ratings, and monthly growth trends of Pakistani freelancers and enables actionable insights through analytical queries.

---

## 💼 Business Goal

To empower freelancers in Pakistan to:

- Monitor their earnings and performance over time
- Identify high-paying platforms, skills, and categories
- Discover trends and benchmarks to increase income and productivity
- Make informed business decisions using data

---

## 📂 Project Structure

- **Tools Used:** SQL Server, Excel, Power BI (optional), GitHub
- **Tables Created:** 8 normalized tables with relationships
- **Sample Data:** 10 records per table for prototyping

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

## 📌 Key Insights

- 🔹 **Top 20%** of freelancers earn **60%+** of total revenue  
- 🔹 **SEO**, **Digital Marketing**, and **Web Development** are high-paying categories  
- 🔹 **Upwork** offers the highest hourly return; **Fiverr** is beginner-friendly  
- 🔹 Freelancers with **diverse skills** earn significantly more  
- 🔹 **Faster client response times** improve overall review scores  
- 🔹 **Seasonal trends** impact earnings (e.g., Q1 and Q4 growth periods)

---

## 🧠 Skills Demonstrated

- SQL Joins, CTEs, Window Functions  
- Data Modeling & Normalization  
- Analytical Thinking with Business Context  
- Complex Aggregations and Performance Queries  
- Real-world Scenario-Based Reporting  

---

## 🎓 What I Learned

- Translated business questions into efficient SQL logic  
- Built a normalized schema for a real-world dataset  
- Tracked KPIs using time series and window functions  
- Gained confidence solving freelance market problems using SQL  

---

## 🚀 Next Steps

- 📊 Build a Power BI dashboard using SQL outputs  
- 🔁 Automate reporting via SQL Agent or Python scripts  
- 🌐 Extend the project using real freelancing platform data  
- 🧩 Integrate with a complete BI pipeline for advanced analysis  

---

## 🙌 About the Author

**👨‍💻 Khurram Naveed**  
*Aspiring Data Analyst | SQL Developer | Power BI Learner*

- 🌐 [LinkedIn](#)  https://www.linkedin.com/in/khurram-naveed-0083851aa/
- 💻 [GitHub](#)  https://github.com/Khurramnaveed3233/Portfolio


---

> ⭐ If you found this project helpful, give it a star, fork it, or share your feedback.  
> **Let’s grow the freelance economy with the power of data!**





