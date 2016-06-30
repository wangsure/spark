#!/bin/bash
echo 'edit after every restart' 
cp /etc/hosts /etc/hosts.tmp
sed '$ d' /etc/hosts.tmp > /etc/hosts
rm -f /etc/hosts.tmp
echo "115.146.92.214      worker1" >> /etc/hosts
echo "115.146.92.221      worker2" >> /etc/hosts
echo "115.146.92.236      worker3" >> /etc/hosts
echo "115.146.92.208      worker4" >> /etc/hosts
echo "115.146.92.205      worker5" >> /etc/hosts
echo "115.146.92.203      worker6" >> /etc/hosts
echo "115.146.92.204      worker7" >> /etc/hosts
echo "115.146.92.198      worker8" >> /etc/hosts
echo "115.146.92.244      master" >> /etc/hosts
echo "worker1" > /usr/local/hadoop-2.6.0/etc/hadoop/slaves
echo "worker2" >> /usr/local/hadoop-2.6.0/etc/hadoop/slaves
echo "worker3" >> /usr/local/hadoop-2.6.0/etc/hadoop/slaves
echo "worker4" >> /usr/local/hadoop-2.6.0/etc/hadoop/slaves
echo "worker5" >> /usr/local/hadoop-2.6.0/etc/hadoop/slaves
echo "worker6" >> /usr/local/hadoop-2.6.0/etc/hadoop/slaves
echo "worker7" >> /usr/local/hadoop-2.6.0/etc/hadoop/slaves
echo "worker8" >> /usr/local/hadoop-2.6.0/etc/hadoop/slaves
printf '%s\n%s\n%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n%s\n' '<?xml version="1.0" encoding="UTF-8"?>' '<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>' '<configuration>' '<property>' '<name>fs.defaultFS</name>' '<value>hdfs://master:9000</value>' '</property>' '<property>' '<name>io.file.buffer.size</name>' '<value>131702</value>' '</property>' '<property>' '<name>hadoop.tmp.dir</name>' '<value>/usr/local/hadoop-2.6.0/tmp</value>' '</property>' '</configuration>'> /usr/local/hadoop-2.6.0/etc/hadoop/core-site.xml 

cd /usr/local/spark-1.6.1-bin-hadoop2.6/conf
cp slaves.template slaves
echo "worker1" > slaves
echo "worker2" >> slaves
echo "worker3" >> slaves
echo "worker4" >> slaves
echo "worker5" >> slaves
echo "worker6" >> slaves
echo "worker7" >> slaves
echo "worker8" >> slaves
cd /usr/local/spark-1.6.1-bin-hadoop2.6/conf
cp spark-env.sh.template spark-env.sh 
echo "export JAVA_HOME=/usr/java/default" >> spark-env.sh
echo "export SPARK_MASTER_IP=master" >> spark-env.sh
echo "export SPARK_WORKER_CORES=1" >> spark-env.sh
echo "# export SPARK_WORKER_INSTANCES=1" >> spark-env.sh
echo "export SPARK_EXECUTOR_INSTANCES=3" >> spark-env.sh
echo "export SPARK_MASTER_PORT=7077" >> spark-env.sh
echo "export SPARK_WORKER_MEMORY=1g" >> spark-env.sh
echo "export MASTER=spark://master:7077" >> spark-env.sh

cd /usr/local/spark-1.6.1-bin-hadoop2.6/yarn-remote-client/
printf '%s\n%s\n%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n%s\n' '<?xml version="1.0" encoding="UTF-8"?>' '<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>' '<configuration>' '<property>' '<name>fs.default.name</name>' '<value>hdfs://master:9000</value>' '</property>' '<property>' '<name>dfs.client.use.legacy.blockreader</name>' '<value>true</value>' '</property>' '</configuration>'> /usr/local/spark-1.6.1-bin-hadoop2.6/yarn-remote-client/core-site.xml

printf '%s\n%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n%s\n' '<?xml version="1.0" encoding="UTF-8"?>' '<configuration>' '<property>' '<name>yarn.resourcemanager.scheduler.address</name>' '<value>master:8030</value>' '</property>' '<property>' '<name>yarn.resourcemanager.address</name>' '<value>master:8032</value>' '</property>' '<property>' '<name>yarn.resourcemanager.webapp.address</name>' '<value>master:8088</value>' '</property>' '<property>' '<name>yarn.resourcemanager.resource-tracker.address</name>' '<value>master:8031</value>' '</property>' '<property>' '<name>yarn.resourcemanager.admin.address</name>' '<value>master:8033</value>' '</property>' '<property>' '<name>yarn.application.classpath</name>' '<value>/usr/local/hadoop/etc/hadoop, /usr/local/hadoop/share/hadoop/common/*, /usr/local/hadoop/share/hadoop/common/lib/*, /usr/local/hadoop/share/hadoop/hdfs/*, /usr/local/hadoop/share/hadoop/hdfs/lib/*, /usr/local/hadoop/share/hadoop/mapreduce/*, /usr/local/hadoop/share/hadoop/mapreduce/lib/*, /usr/local/hadoop/share/hadoop/yarn/*, /usr/local/hadoop/share/hadoop/yarn/lib/*, /usr/local/hadoop/share/spark/*</value>' '</property>' '</configuration>'> /usr/local/spark-1.6.1-bin-hadoop2.6/yarn-remote-client/yarn-site.xml
cd /usr/local/hadoop-2.6.0/
mkdir -p dfs/name
mkdir -p dfs/data
mkdir -p tmp
cd /usr/local/hadoop-2.6.0/etc/hadoop
printf '%s\n%s\n%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n%s\n' '<?xml version="1.0" encoding="UTF-8"?>' '<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>' '<configuration>' '<property>' '<name>fs.defaultFS</name>' '<value>hdfs://master:9000</value>' '</property>' '<property>' '<name>io.file.buffer.size</name>' '<value>131702</value>' '</property>' '<property>' '<name>hadoop.tmp.dir</name>' '<value>/usr/local/hadoop-2.6.0/tmp</value>' '</property>' '</configuration>'> /usr/local/hadoop-2.6.0/etc/hadoop/core-site.xml

printf '%s\n%s\n%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n%s\n' '<?xml version="1.0" encoding="UTF-8"?>' '<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>' '<configuration>' '<property>' '<name>dfs.replication</name>' '<value>3</value>' '</property>' '<property>' '<name>dfs.namenode.name.dir</name>' '<value>/usr/local/hadoop-2.6.0/dfs/name</value>' '</property>' '<property>' '<name>dfs.datanode.data.dir</name>' '<value>/usr/local/hadoop-2.6.0/dfs/data</value>' '</property>' '<property>' '<name>dfs.namenode.secondary.http-address</name>' '<value>master:9001</value>' '</property>' '<property>' '<name>dfs.webhdfs.enabled</name>' '<value>true</value>' '</property>' '</configuration>'> /usr/local/hadoop-2.6.0/etc/hadoop/hdfs-site.xml 

cd /usr/local/hadoop-2.6.0/etc/hadoop
cp mapred-site.xml.template mapred-site.xml
printf '%s\n%s\n%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n%s\n' '<?xml version="1.0" encoding="UTF-8"?>' '<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>' '<configuration>' '<property>' '<name>mapreduce.framework.name</name>' '<value>yarn</value>' '</property>' '<property>' '<name>mapreduce.jobhistory.address</name>' '<value>master:10020</value>' '</property>' '<property>' '<name>mapreduce.jobhistory.webapp.address</name>' '<value>master:19888</value>' '</property>' '</configuration>'> /usr/local/hadoop-2.6.0/etc/hadoop/mapred-site.xml

printf '%s\n%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n\t%s\n\t\t%s\n\t\t%s\n\t%s\n%s\n' '<?xml version="1.0" encoding="UTF-8"?>' '<configuration>' '<property>' '<name>yarn.resourcemanager.scheduler.address</name>' '<value>master:8030</value>' '</property>' '<property>' '<name>yarn.resourcemanager.address</name>' '<value>master:8032</value>' '</property>' '<property>' '<name>yarn.resourcemanager.webapp.address</name>' '<value>master:8088</value>' '</property>' '<property>' '<name>yarn.resourcemanager.resource-tracker.address</name>' '<value>master:8031</value>' '</property>' '<property>' '<name>yarn.resourcemanager.admin.address</name>' '<value>master:8033</value>' '</property>' '<property>' '<name>yarn.application.classpath</name>' '<value>/usr/local/hadoop/etc/hadoop, /usr/local/hadoop/share/hadoop/common/*, /usr/local/hadoop/share/hadoop/common/lib/*, /usr/local/hadoop/share/hadoop/hdfs/*, /usr/local/hadoop/share/hadoop/hdfs/lib/*, /usr/local/hadoop/share/hadoop/mapreduce/*, /usr/local/hadoop/share/hadoop/mapreduce/lib/*, /usr/local/hadoop/share/hadoop/yarn/*, /usr/local/hadoop/share/hadoop/yarn/lib/*</value>' '</property>' '<property>' '<name>yarn.nodemanager.aux-services</name>' '<value>mapreduce_shuffle</value>' '</property>' '<property>' '<name>yarn.nodemanager.auxservices.mapreduce.shuffle.class</name>' '<value>org.apache.hadoop.mapred.ShuffleHandler</value>' '</property>' '<property>' '<name>yarn.nodemanager.resource.memory-mb</name>' '<value>2048</value>' '</property>' '<property>' '<name>yarn.nodemanager.resource.cpu-vcores</name>' '<value>1</value>' '</property>' '<property>' '<name>yarn.nodemanager.delete.debug-delay-sec</name>' '<value>600</value>' '</property>' '</configuration>'> /usr/local/hadoop-2.6.0/etc/hadoop/yarn-site.xml
