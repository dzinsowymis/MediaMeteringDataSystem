        BEGIN
                dbms_scheduler.create_schedule ( schedule_name => 'schedule_meter_reading'   ,
                start_date                                     => '31-OCT-2023 20:00:00'     ,
                repeat_interval                                => 'FREQ=MINUTELY; INTERVAL=5',
                end_date                                       => '31-OCT-2023 21:00:00'     ,
                comments                                       => 'repeated every 5 minutes' );
        END;
        BEGIN
                dbms_scheduler.create_program(program_name => 'add_meter_reading_e_social'                         ,
                program_type                               => 'PLSQL_BLOCK'                                        ,
                program_action                             => 'BEGIN pkg_meter_reading.add_reading_e_social; END;' ,
                enabled                                    => true                                                 ,
                comments                                   => 'Reading data from the meter e_social');
        END;
		
		
        BEGIN
                dbms_scheduler.create_job(job_name => 'reading_e_social'           ,
                program_name                       => 'add_meter_reading_e_social' ,
                start_date                         => systimestamp                 ,
                repeat_interval                    => 'schedule_meter_reading'     ,
                enabled                            => true);
        END;
        BEGIN
                dbms_scheduler.create_job(job_name => 'reading_e_prod'           ,
                program_name                       => 'add_meter_reading_e_prod' ,
                start_date                         => systimestamp               ,
                repeat_interval                    => 'schedule_meter_reading'   ,
                enabled                            => true);
        END;
        BEGIN
                dbms_scheduler.create_job(job_name => 'reading_w_social'           ,
                program_name                       => 'add_meter_reading_w_social' ,
                start_date                         => systimestamp                 ,
                repeat_interval                    => 'schedule_meter_reading'     ,
                enabled                            => true);
        END;
        BEGIN
                dbms_scheduler.create_job(job_name => 'reading_w_prod'           ,
                program_name                       => 'add_meter_reading_w_prod' ,
                start_date                         => systimestamp               ,
                repeat_interval                    => 'schedule_meter_reading'   ,
                enabled                            => true);
        END;
        BEGIN
                dbms_scheduler.create_job(job_name => 'reading_g_social'           ,
                program_name                       => 'add_meter_reading_g_social' ,
                start_date                         => systimestamp                 ,
                repeat_interval                    => 'schedule_meter_reading'     ,
                enabled                            => true);
        END;
		
		
        BEGIN
                dbms_scheduler.create_job(job_name => 'reading_g_prod'           ,
                program_name                       => 'add_meter_reading_g_prod' ,
                start_date                         => systimestamp               ,
                repeat_interval                    => 'schedule_meter_reading'   ,
                enabled                            => true);
        END;
		
		
		
		
		
		
		
		