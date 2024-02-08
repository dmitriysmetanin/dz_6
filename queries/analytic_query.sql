select arrival_airport, count(*) as flights_count from flights
where departure_airport in (select airport_code
from airports_data
where city = '{"en": "Moscow", "ru": "Москва"}'
)
group by arrival_airport
order by flights_count desc
limit 10;