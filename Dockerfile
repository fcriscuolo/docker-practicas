## Version 1.1
# Incluye COPY

FROM centos:7

# usar los parametros para que no realice preguntas. Ver en cada caso que parametris usar.
# Aca en la instalacion usamos el -y para pasar un yes a todo.
RUN yum -y install httpd

## Se puede hacer con COPY o con ADD. No se recomienda con ADD que es para linkear, como por ejemplo para traer de otro sitio
#COPY beryllium /var/www/html

##Vamos a probar con ADD
ADD startbootstrap-freelancer-master /var/www/html

# -DFOREGROUD es para dejar corriendo en background el apache.
CMD apachectl -DFOREGROUND

# Test 10/02/2022
