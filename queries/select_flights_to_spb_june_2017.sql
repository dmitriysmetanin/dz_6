select flight_id
from airports_data
join flights
on flights.arrival_airport = airports_data.airport_code
where city = '{"en": "St. Petersburg", "ru": "Санкт-Петербург"}'
and status = 'Arrived'
and scheduled_departure BETWEEN '2017-06-01 00:00:00.000000' and '2017-06-30 23:59:59.000000';

