# Freelancer-Earnings-Tracker-in-Pakistan-SQL-Portfolio-Project

![cover](https://github.com/user-attachments/assets/18f302d1-402d-4614-a5cf-a52a25d5ab6f)

> **Role:** Data Analyst | **Tools:** SQL Server · Excel · Power BI | **Domain:** Freelance Economy · Platform Analytics

---

##  Project Overview

Built a **robust SQL-based data model** to track earnings, skills, reviews, and client interactions of Pakistani freelancers across platforms like **Upwork, Fiverr, and Freelancer.com**. The project uncovers key income trends, platform performance differences, and skill-based earning patterns — delivering actionable insights to help freelancers **grow their income and optimize their performance** using data-driven decisions.

---

##  Business Problem

Freelancers in Pakistan lack structured tools to track and optimize their performance. Key challenges include:

- No visibility into which **platforms and skills earn the most**
- No way to track **monthly income trends** over time
- Poor **client relationship management** and feedback response tracking
- Inability to make **data-driven decisions** about skill investment and platform focus
- No benchmark to compare performance against **top-earning freelancers**

---

## 🗄️ Database Schema — 8 Normalized Tables

| Table | Description |
|---|---|
| `freelancers` | Basic profile info — name, experience, location |
| `projects` | Work details, earnings per project, client ratings |
| `reviews` | Client feedback, review scores, and response times |
| `skills` | Freelancer technical skills and proficiency levels |
| `earnings_summary` | Monthly earnings aggregation and hours worked |
| `platforms` | Platform profiles — fee percentages and positioning |
| `category` | Service category types and market popularity |
| `clients` | Client country and industry details |

> Full **ER Diagram** included showing all 8 table relationships and foreign key constraints.

<img width="835" height="612" alt="Freelancer Earnings Tracker in Pakistan_Schema" src="https://github.com/user-attachments/assets/294c89a9-995b-40b0-ab62-be8b00d59e02" />

---

##  Key KPIs

| Metric | Finding |
|---|---|
| Revenue Concentration | Top 20% of freelancers generate 60%+ of total revenue |
| Highest Paying Skills | SEO, Digital Marketing, Web Development |
| Best Platform for Rates | Upwork — highest average hourly rates |
| Best Platform for Beginners | Fiverr — easier entry, faster first projects |
| Response Time Impact | Faster response = higher client ratings |
| Peak Income Periods | Q1 and Q4 show consistent income spikes |
| Multi-Skill Premium | Freelancers with more skills consistently earn more |

---

##  Business Questions Solved with SQL

1. Who are the top-earning freelancers?
2. Which freelancing categories are the most profitable?
3. Which platform gives the best hourly ROI?
4. Do freelancers with more skills earn more?
5. What’s the month-over-month trend of earnings?
6. Who has the fastest client response time?
7. How do beginner and expert freelancers differ in performance?
8. What is the client distribution by country and industry?
9. Which categories are most popular vs most profitable?
10. How to use SQL Window Functions for historical trends?

---

##  Example Query Snapshots : 

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

---

## 🔍 Key Findings

### Platform Intelligence
- **Upwork** offers the highest hourly rates — ideal for experienced freelancers scaling their income
- **Fiverr** is better for beginners — lower barrier to entry and faster first-project acquisition
- **Freelancer.com** suits project-based work with competitive bidding

### Skill-Based Earnings
- **SEO, Web Development, and Digital Marketing** are the top three highest-earning skills
- Freelancers with **3+ skills** earn significantly more than single-skill specialists
- Diversification across complementary skills shows the highest income stability

### Client and Review Insights
- **Faster response times directly correlate with better ratings** and higher client retention
- International clients from **USA, UK, and UAE** offer significantly higher budgets
- Client industry matters — Tech and E-Commerce clients pay premium rates

### Income Trends
- **Top 20% of freelancers** account for over 60% of total platform revenue
- **Q1 and Q4** consistently show income spikes — likely tied to new-year project launches and year-end budget spending
- Monthly tracking reveals clear **feast-or-famine cycles** that can be smoothed with proactive pipeline management

---

##  Recommendations for Freelancers

| Area | Recommendation |
|---|---|
| Skill Investment | Focus on SEO, Web Development, and Digital Marketing |
| Platform Strategy | Use Fiverr to start, transition to Upwork to scale |
| Responsiveness | Reply within 1 hour — faster replies = better ratings and more repeat clients |
| Skill Diversification | Add 2-3 complementary skills to increase earning potential |
| Seasonal Planning | Maximize effort in Q1 and Q4 — historically peak income periods |
| Client Targeting | Prioritize USA, UK, and UAE-based clients for higher project budgets |
| Business Mindset | Track monthly earnings, set KPIs, and treat freelancing as a data-driven business |

---

##  Technical Approach

### SQL Server
- **Schema Design** — 8 normalized tables with proper foreign key relationships and referential integrity
- **JOINs** — Multi-table queries connecting freelancers, projects, skills, earnings, and clients
- **Aggregations** — Monthly income totals, platform-wise revenue, skill-based earnings comparison
- **CTEs** — Modular query logic for complex multi-step analysis
- **Window Functions** — Freelancer ranking by earnings, percentile analysis, MoM income trends
- **Data Cleaning** — Null handling, outlier management, and earnings data normalization
- **Business KPIs** — Revenue concentration, response time impact, skill premium calculation
```sql
-- Example: Top 20% Freelancers by Revenue (Window Function)
WITH ranked AS (
    SELECT
        freelancer_id,
        SUM(earnings) AS total_earnings,
        NTILE(5) OVER (ORDER BY SUM(earnings) DESC) AS income_quintile
    FROM projects
    GROUP BY freelancer_id
)
SELECT
    income_quintile,
    COUNT(*) AS freelancer_count,
    SUM(total_earnings) AS revenue_share
FROM ranked
GROUP BY income_quintile;
```

---

##  Challenges Faced & Solutions

| Challenge | Solution |
|---|---|
| Designing realistic normalized schema | Mapped real-world freelancing entities into 8 interrelated tables |
| Meaningful KPIs from fragmented data | Developed derived metrics using aggregations and window functions |
| Nulls and outliers in earnings data | Applied COALESCE, ISNULL, and conditional filtering |
| Complex multi-table query performance | Used CTEs and indexed key columns for optimization |
| Storytelling without BI tools | Structured SQL outputs as business commentary with each query |

---

##  Future Enhancements

- [ ] Build a **Power BI Dashboard** on top of this SQL project
- [ ] Automate data refresh using **SQL Server Agent or Python**
- [ ] Integrate **real freelancing data** via Upwork/Fiverr API or web scraping
- [ ] Build a full **BI pipeline** — ETL → SQL DB → Dashboard → Automated Reports
- [ ] Add **client segmentation** using RFM (Recency, Frequency, Monetary) analysis

---

##  Repository Structure
```
 Pakistan-Freelancer-Analytics-SQL
├── 📄 FreelancerAnalytics.sql         — Full SQL scripts (schema + queries)
├── 🖼️  ER_Diagram.png                  — Entity Relationship Diagram
├── 📄 Insights_Report.pdf             — Business insights and recommendations
└── 📄 README.md                       — Project documentation
```

---

##  Skills Demonstrated

| Category | Skills |
|---|---|
| SQL | Advanced Joins, Aggregations, CTEs, Window Functions, Subqueries |
| Database Design | Schema Normalization, ER Diagram, Referential Integrity |
| Data Quality | Null Handling, Outlier Detection, Data Standardization |
| Analytics | KPI Development, Trend Analysis, Revenue Segmentation |
| Communication | Stakeholder-ready documentation and business insight storytelling |

---

## 👤 About

**Khurram Naveed** — Data Analyst specializing in SQL, Power BI, and business intelligence.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?logo=linkedin)](https://www.linkedin.com/in/khurramnaveed3233)
[![GitHub](https://img.shields.io/badge/GitHub-Portfolio-black?logo=github)](https://github.com/Khurramnaveed3233)
[![Email](https://img.shields.io/badge/Email-Contact-red?logo=gmail)](mailto:khurramnaveed4545@gmail.com)

---

>  *This project demonstrates how a well-designed SQL data model can transform fragmented freelancing data into strategic intelligence — proving that data-driven decision making is not just for corporations, but for every freelancer serious about growing their income.*

---

 *If this project helped or inspired you, give it a star on GitHub. Let's grow the freelance economy with data-powered decisions.*




