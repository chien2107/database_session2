select drivers_id
from drivers
where status = 'available' and trust_score >= 80
order by distance_km asc, trust_score desc;