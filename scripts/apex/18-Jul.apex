//Future method demo

System.debug('>>> Calling synchronously ' + System.now());
MyFutureMethodClass.nonFutureCall();
System.debug('>>> Calling asynchronously ' + System.now());
MyFutureMethodClass.futureCall();


//Batch class demo

MyBatchClass mbc = new MyBatchClass();
Database.executeBatch(mbc, 30);


//Queueable Class demo
System.debug('Enqueuing Queueable Apex');
MyQueueableClass1 mqc = new MyQueueableClass1('Hello Stratos Team');
System.enqueueJob(mqc);

MySchedulableClass msc = new MySchedulableClass();
String s = system.schedule('MySchedulerTest1','30 15 0 ? * * *',msc);

SimpleRESTCallout.getAccounts();

