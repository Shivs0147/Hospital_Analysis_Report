# Hospital_Sales_Dashboard
## Recommended Structure and Order

### **✅ 1.   Project Title and Overview**
<p> ✅ What's needed:
  <ul align = "justify">
    <li>Title: Hospital Analytics Report – Power BI + SQL</li>
    <li>Summary: This project is a Power BI Report consisting of multiple dashboards including Patient, Doctor, Hospital, Finance, and Overview insights. This is provides an end-to-end analysis of hospital operations, including patient management, staff  activities, bed usage, medicine tracking, and billing. The purpose is to support hospital administrators in making data-driven decisions for improved efficiency and patient care.</li>
  </ul></p>
  <p>
    ✅ Why it's important:
    <ul align = "justify">
      <li>Gives instant clarity on the tool (Power BI), and purpose (Analytics)</li>
      <li>Crucial for searchability on GitHub or portfolios.</li>
    </ul>
  </p>
  </ul>


### **🛠️ 2.   Tech Stack**
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

### **🗃️ 3.   Data Sources**
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

  Note: "If you have downloaded the dataset and the data paths are not working correctly or you're encountering a data path error, please click the link below to fix it."

  [solution](https://github.com/Shivs0147/Hospital_Analysis_Report/blame/main/File_Express.mp4)
</p>

### **📊 4.   Dashboard's Features / Overview**

  <ul align = "justify">
    <li>This section is where the depth of our dashboard really shines. Let's break it down category-by-category:</li>
  </ul>
  
  <b>A. Patient Dashboard</b></li>
  
 1️⃣ Dynamic Patient Selector (with Images)
 
  <ul align = "justify">
    <li>🔹 Feature: <i>Vertical slicer with patient names + profile photos.</i></li>
    <li>🧩 Use Case: <i>Non-technical hospital staff can visually select the right patient quickly.</i></i>
    <li>🎯 Benefit: <i>Improves usability, faster navigation, and accurate patient selection.</i></li>
  </ul>
  
2️⃣ Patient Profile Card

  <ul align = "justify">
    <li>🔹 Feature: <i>Shows essential patient info - Patient Photo & Name, Status (e.g., Discharged), Doctor Assigned, Age, Diagnosis and Rating (with stars).</i></li>
  <li>🧩 Use Case: <i>Quick overview of patient's background, feedback, and doctor info.</i></li>
    <li>🎯 Benefit: <i>Humanizes patient experience while keeping clinical details compact.</i></li>
  </ul>
  
3️⃣ Personal & Medical Info Panel (Right)

  <ul align = "justify">
    <li>🔹 Feature: <br><i> ➔ Personal Info: Gender, Phone, Email, Address, State <br> ➔ Patient Info: Patient ID, Bed ID, Blood Group, Admit/Discharge Date, Weight, Room No.</i><br></li>
  <li>🧩 Use Case: <i>Used by front-desk or nursing staff to quickly find contact and medical info.</i></li>
  <li>🎯 Benefit: <i>Separation makes it easier to focus on what’s needed – personal or medical.</i></li>
</ul>

4️⃣ Calendar Date Filter (Left Bottom Corner)

  <ul align = "justify">
   <li>🔹 Feature: <i>Monthly calendar-style slicer used to filter patients by admit/discharge date.</i></li>
   <li>🧩 Use Case: <i>Clicking on a date filters the dashboard to only show data for that day/month.</i></li>
   <li>🎯 Benefit: <br><i>➔ Analyzes patient flow over time. <br> ➔ Helps in capacity planning (when most admissions occur). <br> ➔ Boosts time-based insights for hospital managers.</i></li>
</ul>

5️⃣ Billing – Charges Visualization

  <ul align = "justify">
    <li>🔹 Feature: <i>Horizontal bar chart</i>Bar chart showing cost distribution for - Surgery, Room, Test, Other Fees, Medicine.</li>
  <li>🧩 Use Case: <i>Financial staff can review where most billing is happening.</i></li>
  <li>🎯 Benefit: <i>Visual clue on major medical expenses per patient.</i></li>
</ul>

6️⃣  Medicine Usage Analysis (Bottom Center Right)

  <ul align = "justify">
    <li>🔹 Feature: <i>Bar chart showing quantity of each medicine prescribed - Omeprazole, Paracetamol, Atorvastatin, etc.</i></li>
  <li>🧩 Use Case: <i>Pharmacist or admin can analyze stock usage or popular medicines.</i></li>
  <li>🎯 Benefit: <i>Improves restocking decisions and medication pattern tracking.</i></li>
</ul>

7️⃣ Key Metrics Summary Cards

  <ul>
    <li>🔹 Feature: <i>Key metrics at a glance - Admit Date, Discharge Date, Total Bill, Total Sales Qty</i></li>
  <li>🎯 Benefit: <i>Snapshot of patient value, duration, and medicine consumption.</i></li><br>

  Show what the dashboard looks like. - ![Patient Dashboard](Snapshot%20of%20Patient%20Dashboard.png)
</ul>

<b>B. Patient Dashboard</b></li>

1️⃣ Doctor Overview Section
  <ul align = "justify">
    <li>🔹 Feature: <i>Scrollable, clickable list of doctors with their profile images and names.</i></li>
    <li>🧩 Use Case: <i>Select a doctor to view their individual profile, earnings, and patient data.</i></li>
    <li>🎯 Benefit: <i>Quick navigation for hospital staff to analyze each doctor separately without manual search.</i></li>
  </ul>

2️⃣ Doctor Profile Card (Center)

<ul align = "justify">
  <li>🔹 Feature: <i>Displays selected doctor's key information - Name, Qualification (MS ENT), Doctor ID, Phone Number, Department, Status (Available/Busy), Star Rating with a patient feedback quote</i></li>
  <li>🧩 Use Case: <i>Allows admin/staff to verify doctor status and contact info at a glance.</i></li>
  <li>🎯 Benefit: <i>Combines clinical details and patient feedback in one card — perfect for performance review.</i></li>
</ul>

3️⃣ Upcoming Appointment Panel (Behind Doctor Slider)

<ul align = "justify">
  <li>🔹 Feature: <i>Displays the next appointment time and patient name for the selected doctor.</i></li>
  <li>🧩 Use Case: <i>Helpful for:<br> - Doctors to view their next scheduled appointment <br> - Reception/admin to track who is next in queue <br> - Avoiding double-booking and improving time management </i></li>
  <li>🎯 Benefits: <i> Real-Time Updates, Doctor Reminder, Admin Coordination, Patient Readiness</i></li>
</ul>

 4️⃣ Key Financial Metrics (Bottom Cards)

 <ul align = "justify">
   <li>🔹 Feature: <i>Displays financial details related to the selected doctor - Salary, Total Commission, Total Patient Spend, Total Patient Fees</i></li>
   <li>🧩 Use Case: <i>Used for HR, admin, or finance team to evaluate doctor’s revenue contribution.</i></li>
   <li>🎯 Benefit: <i>Immediate insight into a doctor's earning and contribution metrics. </i></li>
 </ul>

5️⃣ Commission Calculator (Top-Right Panel)

 <ul align = "justify">
   <li>🔹 Feature: <i>Interactive calculator with sliders.</i></li>
   <li>🧩 Use Case: <i>Helps management simulate commission payouts under different scenarios.</i></li>
   <li>🎯 Benefit: <i>Live forecasting without manual calculations.</i></li>
 </ul>

  6️⃣ Patient History Table (Bottom-Right Section)

<ul>
  <li>🔹 Feature: <i>Displays patients consulted/treated by selected doctor - Patient photo, Name, Status (e.g., Discharged), Amount billed, Payment status</i></li>
  <li>🧩 Use Case: <i>Check how much revenue each patient contributed under that doctor.</i></li>
  <li>🎯 Benefit: <i>Transparent patient tracking and doctor-wise billing summary. </i></li><br>

  Show what the dashboard looks like. - ![Doctor Dashboard](Snapshot%20of%20Doctor%20Dashboard.png)
</ul>

<b>C. Surgery Dashboard</b>

1️⃣ Surgery Schedule Panel (Bottom Left)

<ul align = "justify">
  <li>🔹 Feature: <i>Displays upcoming or recent surgeries with time, date, and patient name. </i></li>
  <li>🧩 Use Case: <i>Helps staff quickly check the next scheduled surgeries — avoids conflicts and improves preparedness.</i></li>
  <li>🎯 Benefit: <i>Live view of surgical schedules without opening any manual records.</i></li>
</ul>

2️⃣ Patient Category Analysis (Top Center)

<ul align = "justify">
  <li>🔹 Feature: <i>Bar chart showing patients segmented by age group - Adult, Middle-aged, Senior Citizens, Youth.</i></li>
  <li>🧩 Use Case: <i>Helps hospital management identify which age group requires the most treatment.</i></li>
  <li>🎯 Benefit: <i>Improves resource allocation (e.g., more adult care staff or medicine) based on data.</i></li>
</ul>

3️⃣ Patient Test Results Table (Top Right)

<ul align = "justify">
  <li>🔹 Feature: <i>Detailed table with - Patient name, Result (e.g., Abnormal), Status (e.g., Completed), Notes (disease or diagnosis).</i></li>
  <li>🧩 Use Case: <i>Review diagnostic outcomes & doctor observations for any abnormalities.</i></li>
  <li>🎯 Benefit: <i>✔️ Ensures complete and accurate test result tracking with no confusion.</i></li>
</ul>

4️⃣ Case Summary Panel (Bottom Right)

<ul align = "justify">
  <li>🔹 Feature: <i>Horizontal scrollable card view + table showing - Doctor, Patient, Age, Reason for visit, Suggested treatment/notes.</i></li>
  <li>🧩 Use Case: <i>Useful for reviewing multiple cases handled by various doctors.</i></li>
  <li>🎯 Benefit: <i>🔍 Quick snapshot of who treated whom, for what, and next action.</i></li>
</ul>

5️⃣ Bed Availability by Room Type (Bottom Center)

<ul>
  <li>🔹 Feature: <i>Stacked column chart showing number of rooms (General, ICU, Private) by status (Available vs Occupied).</i></li>
  <li>🧩 Use Case: <i>Real-time occupancy tracking by room type.</i></li>
  <li>🎯 Benefit: <i>Essential for bed management and quick patient accommodation decisions.</i></li><br>

  Show what the dashboard looks like. - ![Surgery Dashboard](Snapshot%20of%20Surgery%20Dashboard.png)
</ul>

<b>D. Finance Dashboard</b>

1️⃣ Financial KPI Cards (Top Right Section)

<ul align = "justify">
  <li>🔹 Feature: <i>Shows important hospital-wide metrics like Patients, Doctors, Staffs, Total Bill, etc.</i></li>
  <li>🧩 Use Case: <i>Admin/Finance team can get real-time summary of operations and financial health.</i></li>
  <li>🎯 Benefit: <i><br> - Data-driven strategic planning. <br> - One-view operational dashboard. <br> - Budgeting and HR planning support.</i></li>
</ul>

2️⃣ Monthly Sales Bar Chart (Bottom Left)

<ul align = "justify">
  <li>🔹 Feature: <i>Shows monthly medicine or service sales trend over time.</i></li>
  <li>🧩 Use Case: <i>Track monthly revenue trend and analyze seasonality or promotional impact.</i></li>
  <li>🎯 Benefit: <i>Identify best and worst performing months → Improve cash flow predictions.</i></li>
</ul>

3️⃣ Charges Distribution Chart (Bottom Center)

<ul align = "justify">
  <li>🔹 Feature: <i>Visual breakdown of hospital charges as Surgery, Room, Test, Other, etc.</i></li>
  <li>🧩 Use Case: <i>Understand which services generate the most revenue.</i></li>
  <li>🎯 Benefit: <i>Smart cost control and pricing decisions based on major revenue sources.</i></li>
</ul>

4️⃣ Medicine Stock vs Sales Status (Top Right Panel)

<ul align = "justify">
  <li>🔹 Feature: <i>100% stacked bar chart showing as % in stock vs % sold for top medicines like Paracetamol, Ibuprofen, Omeprazole, etc.</i></li>
  <li>🧩 Use Case: <i>Track demand and usage of critical medicines.</i></li>
  <li>🎯 Benefit: <i>Avoid overstocking or understocking → Better inventory control.</i></li>
</ul>

5️⃣ Supplier Stock Status (Bottom Right Panel)

<ul>
  <li>🔹 Feature: <i>Shows stock vs sales % for different suppliers: <br> - HealthCare → 52.49% stock, 47.51% sales.<br> - MediCore Essentials → 49.15% stock, 50.85% sales. <br> - MediPharm → 50.34% stock, 49.66% sales.</i></li>
  <li>🧩 Use Case: <i>Evaluate supplier performance and inventory turnover.</i></li>
  <li>🎯 Benefit: <i>Choose most reliable and efficient suppliers.</i></li><br>

  Show what the dashboard looks like. - ![Finance Dashboard](Snapshot%20of%20Finance%20Dashboard.png)
</ul>

### **🎥 5.   Demo / Usage**
<ul>
<li>👉 Explore the Dashboard Live:<br><br> - You can view the interactive Hospital Analytics Dashboard:</li>
  <ul>
  <li>

  In GITHUB - [Check Dashboard](https://github.com/Shivs0147/Hospital_Analysis_Dashboard/blob/main/Hospital_Dashboard.pbix) (Download and Use it)

  </li>
</ul>
</ul>
<ul>
  <li>👉 If requirements to run locally (optional) <br><br><i> - If you'd like to explore the .pbix file:</i> </li><br>
  I. Install Power BI Desktop.<br>
  II. Open Hospital_Analysis_Dashboard.pbix file.<br>
  III. Update SQL Server credentials if you're connecting your own database.<br>

<ul>
  <li>

In Power BI - [Check Dashboard](https://app.powerbi.com/groups/me/reports/de342b67-ab9c-439e-b972-b00d5ee5e9fa/4c086c7a91bff4f84f44?experience=power-bi) (Signin Required)

</li>
</ul>

</ul>

### **👤 6. Author & Contact**

<ul>
  <li>Name - Shivam Gabani</li>
  <li>📧 Email: shivamgabani.744@outlook.com</li>
  <li>💼 LinkedIn: https://www.linkedin.com/in/shivam-gabani-38192a36b/</li>
  <li>📍 Surat, Gujarat.</li>
</ul>

### **🚀 7.   Next Steps**
<ul align = "Justiify">
  <li>Make sure all dashboards are covered in the "Dashboard Features" section.</li>
  <li>If any dashboards are missing, you can check as below link.</li>
  
[Check all dashboards](https://github.com/Shivs0147/Hospital_Analysis_Dashboard/tree/main)
  
</ul>
 
---

## 🙌 Thanks for Scrolling!

If you liked this project, feel free to star ⭐ the repo or connect with me on LinkedIn.

I’m always open to feedback, learning, and new collaborations.

Cheers!  
**– Shivam Gabani**
