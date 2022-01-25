##!/bin/bash 
#tar -xvf jdk-7u80-linux-x64.tar.gz 
#
#mkdir -p /usr/lib/jvm 
#
#mv jdk1.7.0_79 /usr/lib/jvm/ 
#
#update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.7.0_79/bin/java" 1  
#
#update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.7.0_79/bin/javac" 1  
#
#update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk1.7.0_79/bin/javaws" 1  
#
#update-alternatives --install "/usr/bin/jar" "jar" "/usr/lib/jvm/jdk1.7.0_79/bin/jar" 1  
#
#chmod +x /usr/bin/java 
#
#chmod +x /usr/bin/javac 
#
#chmod +x /usr/bin/javaws 
#
#chmod +x /usr/bin/jar 



##### JAVA 8

tar -xvf /srv/java/jdk-8u151-linux-x64.tar.gz -C /usr/lib/jvm/ 

update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.8.0_151/bin/java" 1  

update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.8.0_151/bin/javac" 1  

update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk1.8.0_151/bin/javaws" 1  

update-alternatives --install "/usr/bin/jar" "jar" "/usr/lib/jvm/jdk1.8.0_151/bin/jar" 1  

chmod +x /usr/bin/java 

chmod +x /usr/bin/javac 

chmod +x /usr/bin/javaws 

chmod +x /usr/bin/jar 

  

