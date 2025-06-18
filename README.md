# Hospital_Sales_Dashboard
## Recommended Structure and Order

### **1.   Project Title and Overview**
<p> ✅ What's needed:
  <ul align = "justify">
    <li>Title: Hospital Analytics Dashboard – Power BI + SQL</li>
    <li>Summary: This Power BI dashboard provides an end-to-end analysis of hospital operations, including patient management, staff  activities, bed usage, medicine tracking, and billing. The purpose is to support hospital administrators in making data-driven decisions for improved efficiency and patient care.</li>
  </ul></p>
  <p>
    ✅ Why it's important:
    <ul align = "justify">
      <li>Gives instant clarity on the tool (Power BI), and purpose (Analytics)</li>
      <li>Crucial for searchability on GitHub or portfolios.</li>
    </ul>
  </p>
  </ul>


### **2.   Tech Stack**
<p> ✅ What's needed:
  <ul align = "justify">
    <li>The dashboard was built using the following tools and technologies:<br></li>
  </ul>
  <ol align="Justify" Type="A">
    <li>📊 Power BI - Main data visualization platform used for report creation.</li>
    <li>📂 Power Query – Data transformation and cleaning layer for reshaping and preparing the data.</li>
    <li>🧠 DAX - Used for calculated measures, dynamic visuals, and conditional logic.</li>
    <li>📝 Data Modeling – Relational schema designed in SQL with normalized tables, foreign key constraints, and indexes for optimized queries. Schema changes are managed via SQL migrations.
    <li>📗 Excel – used in early-stage data cleaning.</li>
    <li>🗄️ SQL Server – database where tables are stored.</li>
  </ol>

  ✅ Why it's important:
  <ul align = "justify">
    <li>Shows our technical capabilities.</li>
    <li>Demonstrates that we understand end-to-end workflow: from data source to insights.</li>
    <li>Tech stacks are often keywords for job searches and freelance gigs</li>
  </ul>
</p>

### **3.   Data Sources**
<p> ✅ What's needed:
  <ul align = "justify">
    <li> This project is based on a hospital dataset demonstrated in a <b>YouTube tutorial</b>. The dataset was downloaded, cleaned, and imported into SQL Server as <b>Hospital</b> Database.</li>
  </ul>
</p>
  🎥 Source
<p>
  <ul align = "justify">
    <li>
      Steps Followed: 
    </li>
  </ul>
  <ol>
    <li>Downloaded the dataset.</li>
    <li>Then import all data into <b>Power BI</b> and there was more data for data modeling, so export it to <b>SQL Server</b>(SSMS) and got the expected data.</li>
  SQL - <a href = "https://github.com/Shivs0147/Hospital_Analysis_Dashboard/blob/main/Patient.sql">Check the Data</a>
  </ol>
</p>
🔄 Import data from Power BI to SQL Server(SSMS)
<p align="justify">
  <ul>
   <li> These data were imported from CSV file to Hospital SQL database:</li>
 </ul>
</p>
<table border="1" cellpadding="8" cellspacing="0" align = "Center">
  <thead>
    <tr>
      <th>Table Name</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Appointment</strong></td>
      <td>Stores details of patient appointments with doctors, including date and time.</td>
    </tr>
    <tr>
      <td><strong>Beds</strong></td>
      <td>Tracks bed availability, assignments, and occupancy status in the hospital.</td>
    </tr>
    <tr>
      <td><strong>Department</strong></td>
      <td>Contains information about hospital departments (e.g., Cardiology, ICU).</td>
    </tr>
    <tr>
      <td><strong>Doctor</strong></td>
      <td>Includes doctor profiles, specializations, and department associations.</td>
    </tr>
    <tr>
      <td><strong>Hospital Bills</strong></td>
      <td>Manages billing information, charges, discounts, and payment status.</td>
    </tr>
    <tr>
      <td><strong>Medical Stock</strong></td>
      <td>Inventory of medicines and medical supplies with quantity and expiry info.</td>
    </tr>
    <tr>
      <td><strong>Medical Tests</strong></td>
      <td>List of available diagnostic tests and their cost or preparation info.</td>
    </tr>
    <tr>
      <td><strong>Medicine Patient</strong></td>
      <td>Links patients to the medicines prescribed to them, including dosage info.</td>
    </tr>
    <tr>
      <td><strong>Patient</strong></td>
      <td>Core patient data such as demographics, contact info, and admission dates.</td>
    </tr>
    <tr>
      <td><strong>Patient Tests</strong></td>
      <td>Logs of tests conducted on patients with results and test dates.</td>
    </tr>
    <tr>
      <td><strong>Rooms</strong></td>
      <td>Details about hospital rooms, their types, availability, and charges.</td>
    </tr>
    <tr>
      <td><strong>Satisfaction Score</strong></td>
      <td>Survey or feedback results from patients regarding their hospital experience.</td>
    </tr>
    <tr>
      <td><strong>Staff</strong></td>
      <td>Information about non-doctor staff, such as nurses, admin, and technicians.</td>
    </tr>
    <tr>
      <td><strong>Supplier</strong></td>
      <td>Details of vendors who supply medicines and equipment to the hospital.</td>
    </tr>
    <tr>
      <td><strong>Surgery</strong></td>
      <td>Records of surgical procedures including type, date, patient, and surgeon.</td>
    </tr>
  </tbody>
</table>
⚙️ Created Inside Power BI
<p align="justify">
  <ul>
   <li> These helper tables were created in Power BI for filtering, calculations, and KPIs:</li>
 </ul>
</p>
<table border="1" cellpadding="8" cellspacing="0" align = "Center">
  <thead>
    <tr>
      <th>Table Name</th>
      <th>Purpose</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>_Measures</strong></td>
      <td>DAX measures for visual metrics (KPIs).</td>
    </tr>
    <tr>
      <td><strong>Calendar</strong></td>
      <td>Custom date table for time intelligence.</td>
    </tr>
    <tr>
      <td><strong>Estimate_Commission_Rate</strong></td>
      <td>Reference commission rates for doctors.</td>
    </tr>
    <tr>
      <td><strong>Estimate_Commission_Amt</strong></td>
      <td>Estimated commission amounts based on bills.</td>
    </tr>
  </tbody>
</table>
<p>
   ✅ Why it's important:
  <ul align = "justify">
    <li>Proves real-world structure of our data model.</li>
    <li>Shows you've worked with relational databases, not just flat files.</li>
    <li>Custom tables highlight data modeling skills (very important in Power BI).</li>
  </ul>
</p>

### **4.   Features / Overview**
  <ul align = "justify">
    <li>This section is where the depth of our dashboard really shines. Let's break it down category-by-category:</li>
  </ul>
  <ol type="A">
    <li><b>Patient Dashboard</b></li>
  </ol>
 1️⃣ 👤 Dynamic Patient Selector (with Images)
<ul>
  <li>Feature: <i>Vertical slicer with patient names and profile photos</i></li>
  <li>Benefit: <i>Easy visual identification for non-technical hospital staff</i></li>
</ul>
2️⃣ 📋 Detailed Patient Profile Card
<ul>
  <li>Displays: <i>Patient Photo & Name, Status (e.g., Discharged), Doctor Assigned, Age, Diagnosis, and Rating (with stars</i></li>
  <li>Visual Touch: <i>Star-rating system for patient experience</i></li>
</ul>
3️⃣ 📞 Personal Info & Medical Info Sections
<ul>
  <li>Personal Info: <i>Gender, Phone, Email, Address, State</i></li>
  <li>Patient Info: <i>Patient ID, Bed ID, Blood Group, Admit & Discharge Dates, Weight, Room</i></li>
  <li>Use Case: <i>Separates contact info from clinical details for better usability</i></li>
</ul>
4️⃣ 📅 Date Range and Calendar Filters
<ul>
  <li>Feature: <i>Monthly calendar-style slicer on the left</i></li>
  <li>Use Case: <i>Track patients by month to analyze flow</i></li>
</ul>
5️⃣ 💰 Billing – Charges Visualization
<ul>
  <li>Type: Horizontal bar chart</li>
  <li>Details: <i>Surgery, Room, Test, Fees, Medicine, Other</i></li>
  <li>Highlight: <i>Length of bar indicates the charge level</i></li>
</ul>
6️⃣ 💊 Medicine Sales Breakdown
<ul>
  <li>Visual: <i>Horizontal bar chart showing medicine quantity</i></li>
  <li>Insight: <i>Top-used medicines like Omeprazole, Paracetamol, etc.</i></li>
</ul>
7️⃣ 📈 Key Metrics Summary Cards
<ul>
  <li>KPI Cards Shown:</li><i>
   -   Admit Date<br>
   -   Discharge Date<br>
   -   Total Bill <br>
   -   Total Sales Qty<br></i>
</ul>

Show what the dashboard looks like. - ![Patient Dashboard](Snapshot%20of%20Patient%20Dashboard.png)
