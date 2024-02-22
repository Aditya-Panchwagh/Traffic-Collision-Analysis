SELECT A.no_of_casualties,A.speed_limit,LA.la_name,LA.region_name,
S.severity_label,V.vehicle_code,VT.vehicle_type_name
FROM dspc_traffic_dev.accident as A
inner join dspc_traffic_dev.la_dist_region as LA
on A.local_authority_ons_district = LA.local_authority_id
inner join dspc_traffic_dev.severity as S
on A.severity_code = S.severity_code
inner join dspc_traffic_dev.vehicle as V
on A.accident_reference = V.accid_ref
inner join dspc_traffic_dev.vehicle_type as VT
on V.vehicle_code = VT.vehicle_code;

