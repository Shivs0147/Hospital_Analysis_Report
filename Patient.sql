use Hospital

select * from rooms;

select 

-- Patient table
	p.patient_id as Patient_ID,
	p.name as Patient_Name,
	p.age as Patient_Age,
	p.gender as Patient_Gender,
	p.weight as Patient_Weight,
	p.blood_group as Patient_Blood_Group, 
	p.address as Patient_Address,
	p.state as Patient_State,
	p.phone as Patient_Phone_Number,
	p.email as Patient_Email,
	p.admission_date as Patient_Admit_Date,
	p.discharge_date as Patient_Discharge_Date,
	p.status as Patient_Status,
	p.img as Patient_IMG,
	case when b.bed_id = null then 'Discharged' 
		else 'Admitted' 
	end as Patient_admit_Status,

	--Doctor's Data
	dt.doctor_id as Doctor_ID,
	dt.name as Doctor_Name,
	dt.Salary as Doctor_Salary,
	dt.specialization as Doctor_Specialization,
	dt.department as Doctor_Department,
	dt.Availability as Doctor_Availability,
	dt.joining_date as Doctor_Joining_Date,
	dt.qualification as Doctor_Qualification,
	dt.experience_years as Doctor_Experience_Years,
	dt.email as Doctor_Email,
	dt.phone as Doctor_Mobile_Number,
	dt.Img as Doctor_IMG,

	--Bed Data
	b.bed_id as Bed_ID,
	b.occupied_from as Bed_Occupied_From,
	b.occupied_till as Bed_Occupied_Till,
	b.status as Bed_Status,

	--Room Data
	r.room_id as Room_ID,
	r.floor as Room_Floor,
	r.room_type as Room_Type,
	r.capacity as Room_Capacity,
	r.daily_Charge as Room_Daily_Charge,
	r.avg_montly_maintenance_cost as Room_Avg_Monthly_Maintenance_Cost,
	r.status as Room_Status,

	--Department Data
	d.department_id as Department_ID,
	d.name as Department_Name,
	d.total_staff as Department_Totak_Staff,
	
	--Satisfaction_Score Data
	ss.Satisfaction_id as Satisfaction_ID,
	ss.rating as Satisfaction_Rating,
	ss.feedback as Satisfaction_FeedBack,

	--Surgery Table
	s.appointment_id as Appointment_ID,
	s.appointment_date as Surgery_Appointment_Date,
	s.appointment_time as Surgery_Appointment_Time,
	s.status as Surgery_Status,
	s.reason as Surgery_Reason,
	s.notes as Surgery_Notes,

	

from patient as p
left join satisfaction_score as ss on p.patient_id = ss.patient_id
left join surgery as s on s.patient_id = p.patient_id
left join hospital_bills as hb on hb.patient_id = p.patient_id
left join beds as b on b.patient_id = p.patient_id
left join rooms as r on r.room_id = b.room_id
left join Department as d on d.department_id = r.department_id
left join (Select distinct Patient_id, doctor_id from Appointment) a on a.patient_id = p.patient_id
left join doctor as dt on dt.doctor_id = a.doctor_id


create view [Patient_Data] as 
select 

-- Patient table
	p.patient_id as Patient_ID,
	p.name as Patient_Name,
	p.age as Patient_Age,
	p.gender as Patient_Gender,
	p.weight as Patient_Weight,
	p.blood_group as Patient_Blood_Group, 
	p.address as Patient_Address,
	p.state as Patient_State,
	p.phone as Patient_Phone_Number,
	p.email as Patient_Email,
	p.admission_date as Patient_Admit_Date,
	p.discharge_date as Patient_Discharge_Date,
	p.status as Patient_Status,
	p.img as Patient_IMG,
	case when b.bed_id = null then 'Discharged' 
		else 'Admitted' 
	end as Patient_admit_Status,

	--Doctor's Data
	dt.doctor_id as Doctor_ID,
	dt.name as Doctor_Name,
	dt.Salary as Doctor_Salary,
	dt.specialization as Doctor_Specialization,
	dt.department as Doctor_Department,
	dt.Availability as Doctor_Availability,
	dt.joining_date as Doctor_Joining_Date,
	dt.qualification as Doctor_Qualification,
	dt.experience_years as Doctor_Experience_Years,
	dt.email as Doctor_Email,
	dt.phone as Doctor_Mobile_Number,
	dt.Img as Doctor_IMG,

	--Bed Data
	b.bed_id as Bed_ID,
	b.occupied_from as Bed_Occupied_From,
	b.occupied_till as Bed_Occupied_Till,
	b.status as Bed_Status,

	--Room Data
	r.room_id as Room_ID,
	r.floor as Room_Floor,
	r.room_type as Room_Type,
	r.capacity as Room_Capacity,
	r.daily_Charge as Room_Daily_Charge,
	r.avg_montly_maintenance_cost as Room_Avg_Monthly_Maintenance_Cost,
	r.status as Room_Status,

	--Department Data
	d.department_id as Department_ID,
	d.name as Department_Name,
	d.total_staff as Department_Totak_Staff,
	
	--Satisfaction_Score Data
	ss.Satisfaction_id as Satisfaction_ID,
	ss.rating as Satisfaction_Rating,
	ss.feedback as Satisfaction_FeedBack,

	--Surgery Table
	s.appointment_id as Appointment_ID,
	s.appointment_date as Surgery_Appointment_Date,
	s.appointment_time as Surgery_Appointment_Time,
	s.status as Surgery_Status,
	s.reason as Surgery_Reason,
	s.notes as Surgery_Notes

from patient as p
left join satisfaction_score as ss on p.patient_id = ss.patient_id
left join surgery as s on s.patient_id = p.patient_id
left join hospital_bills as hb on hb.patient_id = p.patient_id
left join beds as b on b.patient_id = p.patient_id
left join rooms as r on r.room_id = b.room_id
left join Department as d on d.department_id = r.department_id
left join (Select distinct Patient_id, doctor_id from Appointment) a on a.patient_id = p.patient_id
left join doctor as dt on dt.doctor_id = a.doctor_id

drop view Patient_Data

select * from Patient_Data;

select 
	ms.medicine_id as Medicine_ID,
	ms.name as Medicine_Name,
	ms.category as Medicine_Category,
	ms.Cost_Price as Cost_Price,
	ms.unit_price as Unit_Price,
	ms.stock_qty as Medicine_Stock_Quantity,
	ms.Expiry_date as Expiry_Date,
	ms.Manufacture_Date as Manufacture_Date,
	ms.batch_number as Batch_Number,
	ms.Reorder_level as Reorder_Level,
	ms.Supplier_id as Supplier_ID,
	su.name as Supplier_Name,
	su.phone as Supplier_Phone_Number,
	su.email as Supplier_Email,
	su.address as Supplier_Address,
	su.city as Supplier_City,
	su.state2 as Supplier_State,
	su.Contract_Start_Date as Supplier_Contract_Start_Date,
	su.Contract_End_Date as Supplier_Contract_End_Date
from medical_Stock as ms
left join supplier as su on su.supplier_id = ms.supplier_id;

create view [Medical_Stock_Data] as 
select 
	ms.medicine_id as Medicine_ID,
	ms.name as Medicine_Name,
	ms.category as Medicine_Category,
	ms.Cost_Price as Cost_Price,
	ms.unit_price as Unit_Price,
	ms.stock_qty as Medicine_Stock_Quantity,
	ms.Expiry_date as Expiry_Date,
	ms.Manufacture_Date as Manufacture_Date,
	ms.batch_number as Batch_Number,
	ms.Reorder_level as Reorder_Level,
	ms.Supplier_id as Supplier_ID,
	su.name as Supplier_Name,
	su.phone as Supplier_Phone_Number,
	su.email as Supplier_Email,
	su.address as Supplier_Address,
	su.city as Supplier_City,
	su.state2 as Supplier_State,
	su.Contract_Start_Date as Supplier_Contract_Start_Date,
	su.Contract_End_Date as Supplier_Contract_End_Date
from medical_Stock as ms
left join supplier as su on su.supplier_id = ms.supplier_id;



select * from Medical_Stock_Data;

select * from Hospital_Bills;

select * from Beds

select count(bd.bed_id) bed, rm.room_type, rm.room_id, bd.status from beds as bd 
left join Rooms as rm on rm.room_id = bd.room_id
group by  rm.room_type, rm.room_id, bd.status

create view Bed_Data as 
select count(bd.bed_id) bed, rm.room_type, rm.room_id, bd.status from beds as bd 
left join Rooms as rm on rm.room_id = bd.room_id
group by  rm.room_type, rm.room_id, bd.status

select * from Bed_Data