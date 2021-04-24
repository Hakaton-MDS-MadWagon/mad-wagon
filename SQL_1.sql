select 
	d.operation_date,
	d.index_train,
	count(distinct o.car_number) number_of_cariages,  
	o.operation_car,
	o.operation_st_id
from 
	dispatched d
	join operations o on d.index_train = o.index_train
where 
	o.operation_st_id in (2000038976, 2000038600, 2000037862, 2001933494,2001930816) and
	o.operation_car = 4	
group by
	d.operation_date,
	o.operation_st_id,
	o.operation_car,
	d.index_train
order by
	d.operation_date
