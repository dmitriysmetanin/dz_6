select departure_airport, arrival_airport
from flights
where (departure_airport, arrival_airport) in (select arrival_airport, departure_airport from flights)
and departure_airport > flights.arrival_airport
group by departure_airport, arrival_airport
;



