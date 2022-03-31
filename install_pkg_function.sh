#function for LAMPstack (Apache PHP Mysql)
install_apac()
{
        sudo apt-get update
        local chkapach=$( which apache2 )
        if [ "$chkapach" ]
        then
                echo "-------------------"
                echo "-------------------"
                echo "Apache is already installed"
                echo "------------------"
        else
                echo "-------------------"
                echo "Apache is not installed... Installing Apache...."
                echo "-------------------"
                sudo apt-get install apache2
                echo "-------------------"
        fi
                echo "Confirming Apache is installed...."
                echo "-------------------"
                local chkapach2=$( dpkg --list | grep apache )
                if [ "$chkapach2" ]
                        then
                                echo "-------------------"
                                echo "$chkapach2"
                                echo "-------------------"
                        else
                                echo "-------------------"
                                echo "Apache is still not installed... Check logs for more details"
                                echo "-------------------"
                fi
        a=10
}

install_apac_cent()
{
         sudo yum update
         local chkapach=$( which httpd )
         if [ "$chkapach" ]
         then
                 echo "-------------------"
                 echo "-------------------"
                 echo "Apache is already installed"
                 echo "------------------"
         else
                 echo "-------------------"
                 echo "Apache is not installed... Installing Apache...."
                 echo "-------------------"
                 sudo yum install httpd
                 echo "-------------------"
         fi
                 echo "Confirming Apache is installed...."
                 echo "-------------------"
                 local chkapach2=$( yum list installed | grep httpd )
                 if [ "$chkapach2" ]
                          then
                                  echo "-------------------"
                                  echo "$chkapach2"
                                  echo "-------------------"
                          else
                                  echo "-------------------"
                                  echo "Apache is still not installed... Check logs for more details"
                                  echo "-------------------"
                  fi
          a=10
}


install_sql()
{
        sudo apt-get update
        local chksql=$( which mysql )
        if [ "$chksql" ]
        then
                echo "-------------------"
                echo "-------------------"
                echo "SQL is already installed"
                echo "------------------"
        else
                echo "-------------------"
                echo "SQL is not installed... Installing SQL...."
                echo "-------------------"
                sudo apt-get install mysql-server
#               sudo mysql_secure_installation
                echo "-------------------"
        fi
                echo "Confirming SQL is installed...."
                echo "-------------------"
                local chksql2=$( dpkg --list | grep "mysql" )
                if [ "$chksql2" ]
                        then
                                echo "-------------------"
                                echo "$chksql2"
                                echo "-------------------"
                        else
                                echo "-------------------"
                                echo "SQL is still not installed... Check logs for more details"
                                echo "-------------------"
        fi
        a=10
}

install_sql_cent()
{
        sudo yum update
        local chksql=$( which mysql )
        if [ "$chksql" ]
        then
                echo "-------------------"
                echo "-------------------"
                echo "SQL is already installed"
                echo "------------------"
        else
                echo "-------------------"
                echo "SQL is not installed... Installing SQL...."
                echo "-------------------"
                sudo yum install mariadb-server mariadb
#               systemctl start mariadb
#               sudo mysql_secure_installation
                echo "-------------------"
        fi
                echo "Confirming SQL is installed...."
                echo "-------------------"
                local chksql2=$( yum list installed | grep mariadb )
                if [ "$chksql2" ]
                        then
                                echo "-------------------"
                                echo "$chksql2"
                                echo "-------------------"
                        else
                                echo "-------------------"
                                echo "SQL is still not installed... Check logs for more details"
                                echo "-------------------"
        fi
        a=10
}

install_php()
{
        sudo apt-get update
        local chkphp=$( which php )
        if [ "$chkphp" ]
        then
                echo "-------------------"
                echo "-------------------"
                echo "PHP is already installed"
                echo "------------------"
        else
                echo "-------------------"
                echo "PHP is not installed... Installing PHP...."
                echo "-------------------"
                sudo apt-get install php libapache2-mod-php php-mysql
                echo "-------------------"
        fi
                echo "Confirming PHP is installed...."
                echo "-------------------"
                local chkphp2=$( dpkg --list | grep "php" )
                if [ "$chkphp2" ]
                        then
                                echo "-------------------"
                                echo "$chkphp2"
                                echo "-------------------"
                        else
                                echo "-------------------"
                                echo "PHP is still not installed... Check logs for more details"
                                echo "-------------------"
        fi
        a=10
}

install_php_cent()
{
        sudo yum update
        local chkphp=$( which php )
        if [ "$chkphp" ]
        then
                echo "-------------------"
                echo "-------------------"
                echo "PHP is already installed"
                echo "------------------"
        else
                echo "-------------------"
                echo "PHP is not installed... Installing PHP...."
                echo "-------------------"
                sudo dnf install php php-opcache php-gd php-curl php-mysqlnd
                echo "-------------------"
        fi
                echo "Confirming PHP is installed...."
                echo "-------------------"
                local chkphp2=$( yum list installed | grep "php" )
                if [ "$chkphp2" ]
                        then
                                echo "-------------------"
                                echo "$chkphp2"
                                echo "-------------------"
                        else
                                echo "-------------------"
                                echo "PHP is still not installed... Check logs for more details"
                                echo "-------------------"
        fi
        a=10
}

wpr_installation()
{
	echo "***********WORDPRESS INSTALLATION*************"
	echo "------------------"
	echo "Enter domainname::"
	read dmn
	sudo mkdir -p /var/www/html/$dmn && cd /var/www/html/$dmn
	sudo wget https://wordpress.org/latest.tar.gz
	sudo tar -xzvf latest.tar.gz
	sudo mv wordpress/* .
	b=10
}
	






























