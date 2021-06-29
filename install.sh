#!/bin/sh
echo "安装jdk..."
echo "."
JDKSOURCE_PATH=/opt/jdk-8u191-linux-x64.tar.gz
JDKTRAGET_PATH=/usr/local/java
echo "."
mkdir -p /usr/local/java
tar -zxf ${JDKSOURCE_PATH} -C ${JDKTRAGET_PATH}
echo "."
echo "# JAVA_HOME" >> /etc/profile
echo "export JAVA_HOME=/usr/local/java/jdk1.8.0_191" >> /etc/profile
echo "export PATH=""$""JAVA_HOME/bin:""$""PATH" >> /etc/profile
echo "export CLASSPATH=.:""$""JAVA_HOME/lib/dt.jar:""$""JAVA_HOME/lib/tools.jar" >> /etc/profile
echo "."
source /etc/profile
echo "."
echo "jdk安装成功!"

echo "安装tomcat..."
echo "."
TOMCATSOURCE_PATH=/opt/apache-tomcat-9.0.41.tar.gz
TOMCATTRAGET_PATH=/usr/local/ops
echo "."
mkdir -p /usr/local/ops
tar -zxf ${TOMCATSOURCE_PATH} -C ${TOMCATTRAGET_PATH}
echo "."
sed -i 's/8080/80/' /usr/local/ops/apache-tomcat-9.0.41/conf/server.xml
echo "tomcat安装成功!"

echo "系统文件初始化..."
mkdir -p /usr/local/ops/uploadfile
echo "."
rm -rf /usr/local/ops/apache-tomcat-9.0.41/webapps/ROOT
echo "."
cp ROOT /usr/local/ops/apache-tomcat-9.0.41/webapps/
echo "."
cp application.yml /usr/local/ops/
cp application-dev.yml /usr/local/ops/
cp ops.jar /usr/local/ops/
echo "."
echo "系统文件初始化完成!"