CREATE AVAILABILITY GROUP App2Distributed
?? WITH (DISTRIBUTED)   
?? AVAILABILITY GROUP ON  
??????'App2' WITH    
   ???(   
???????? LISTENER_URL = 'tcp://App2_App2Listen:5022',    
?????????AVAILABILITY_MODE = ASYNCHRONOUS_COMMIT,   
???????? FAILOVER_MODE = MANUAL,   
???????? SEEDING_MODE = AUTOMATIC   
????? ),   
????? 'App2DR' WITH    
??????(   
???????? LISTENER_URL = 'tcp://App2_App2Listen:5022',   
???????? AVAILABILITY_MODE = ASYNCHRONOUS_COMMIT,   
???????? FAILOVER_MODE = MANUAL,   
???????? SEEDING_MODE = AUTOMATIC   
????? ) ;    
GO   
