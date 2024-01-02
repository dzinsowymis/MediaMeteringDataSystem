
--VIEW_PRICE_USE_E_PROD

CREATE OR REPLACE FORCE EDITIONABLE VIEW "MMDS"."VIEW_PRICE_USE_E_PROD" ("DATE_MEASUREMENT", "METER_READING_KWH", "USE_CURRENT", "PRICE") AS
select
        ep.date_measurement                     ,
        ep.meter_reading_kwh                    ,
        round(ep.power_kwh /12, 2)                    as use_current,
        round((ep.power_kwh/12)*et.price_for_1KWH, 2) as Price
from
        elec_prod ep
join
        e_tariffs et
on
        ep.id_tariff = et.id_tariff;
		
	
--VIEW_PRICE_USE_E_SOCIAL
	
CREATE OR REPLACE FORCE EDITIONABLE VIEW "MMDS"."VIEW_PRICE_USE_E_SOCIAL" ("DATE_MEASUREMENT", "METER_READING_KWH", "USE_CURRENT", "PRICE") AS
select
        es.date_measurement                       ,
        es.meter_reading_kwh                      ,
        round(es.power_kwh /12, 2)                    as Use_current ,
        round((es.power_kwh/12)* et.price_for_1kWh,2) as Price
from
        elec_social es
join
        e_tariffs et
on
        es.id_tariff = et.id_tariff
order by
        es.date_measurement;
		
		
--VIEW_PRICE_USE_G_PROD


CREATE OR REPLACE FORCE EDITIONABLE VIEW "MMDS"."VIEW_PRICE_USE_G_PROD" ("DATE_MEASUREMENT", "METER_READING_M3", "USE_CURRENT", "PRICE") AS
select
        gp.date_measurement,
        gp.meter_reading_m3,
        gp.use_current     ,
        round(gp.use_current*gt.price_for_1m3, 2) as Price
from
        gas_prod gp
join
        g_tariffs gt
on
        gp.id_tariff = gt.id_tariff
order by
        gp.date_measurement;
		

--VIEW_PRICE_USE_G_SOCIAL

CREATE OR REPLACE FORCE EDITIONABLE VIEW "MMDS"."VIEW_PRICE_USE_G_SOCIAL" ("DATE_MEASUREMENT", "METER_READING_M3", "USE_CURRENT", "PRICE") AS
select
        gs.date_measurement,
        gs.meter_reading_m3,
        gs.use_current     ,
        gs.use_current* gt.price_for_1m3 as Price
from
        gas_social gs
join
        g_tariffs gt
on
        gs.id_tariffs = gt.id_tariff;
		
		
--VIEW_PRICE_USE_W_PROD


CREATE OR REPLACE FORCE EDITIONABLE VIEW "MMDS"."VIEW_PRICE_USE_W_PROD" ("DATE_MEASUREMENT", "METER_READING_M3", "USE_CURRENT", "PRICE") AS
select
        Wp.date_measurement,
        wp.meter_reading_m3,
        wp.use_current     ,
        wp.use_current* wt.price_for_1m3 as Price
from
        water_prod wp
join
        w_tariffs wt
on
        wp.id_tariff = wt.id_tariff
order by
        wp.date_measurement;
		
		
--VIEW_PRICE_USE_W_SOCIA


CREATE OR REPLACE FORCE EDITIONABLE VIEW "MMDS"."VIEW_PRICE_USE_W_SOCIAL" ("DATE_MEASUREMENT", "METER_READING_M3", "USE_CURRENT", "PRICE") AS
select
        Ws.date_measurement,
        ws.meter_reading_m3,
        ws.use_current     ,
        ws.use_current* wt.price_for_1m3 as Price
from
        water_social ws
join
        w_tariffs wt
on
        ws.id_tariff = wt.id_tariff
order by
        ws.date_measurement;