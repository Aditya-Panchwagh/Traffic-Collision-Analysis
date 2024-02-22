SELECT A.no_of_casualties,A.speed_limit,LA.la_name,LA.region_name,
C.casualty_class_id,CC.casualty_class_name,
C.casualty_code,CT.casualty_name,C.casualty_severity,
S.severity_label, JL.junc_loc_id , JL.junc_loc, VL.veh_rstd_name,VL.veh_rstd_id
FROM dspc_traffic_dev.accident as A
inner join dspc_traffic_dev.la_dist_region as LA
on A.local_authority_ons_district = LA.local_authority_id
inner join dspc_traffic_dev.casualty as C
on A.accident_reference = C.accident_reference
inner join dspc_traffic_dev.casualty_class as CC
on C.casualty_class_id = CC.casualty_id
inner join dspc_traffic_dev.casualty_type as CT
on C.casualty_code = CT.casualty_code
inner join dspc_traffic_dev.severity as S
on C.casualty_severity = S.severity_code
inner join dspc_traffic_dev.junc_location as JL
on A.junction_id = JL.junc_loc_id
inner join dspc_traffic_dev.vehicle as V
on A.accident_reference = V.accid_ref
inner join dspc_traffic_dev.veh_rstd_location as VL
on V.veh_rstd_id = VL.veh_rstd_id;




