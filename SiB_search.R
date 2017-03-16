# Recuerde cambiar usuario, para mi caso es "juan.rey"
setwd("C:/Users/juan.rey/Downloads")
#Abro RSD SiB (decidi cargarlo tipo RDS por tiempo de carga y consultas
sib<- readRDS("SIB_14-03-17.rds")
#================================
#Consultas
#=============================

#consulta por departamento (es necesario revisar el nombre de los departamentos)
inv<- table(sib$Departamento)
a<- data.frame(inv)
#Una vez se identifica los departamentos a consultar se realiza consulta en esta caso es Arauca
dep <- subset(sib, subset=sib$Departamento== "ARAUCA" | sib$Departamento== "Arauca")


#consulta por especies (es necesario revisar el nombre de las especies
inv<- table(sib$Nombre.científico)
a<- data.frame(inv)
#Una vez se identifica los departamentos a consultar se realiza consulta en esta caso es Arauca
falco <- subset(sib, subset=sib$Nombre.científico== "Falco deiroleucus")

# Si la consulta es por familias
sppcsib <- subset(sib, subset=sib$Familia== "Apidae" | sib$Familia== "Colletidae" 
                  | sib$Familia== "Andrenidae"| sib$Familia== "Halictidae" 
                  | sib$Familia== "Megachilidae")


#exporto mi consulta en una tabla
write.table(falco, file = "Falco_deiroleucus_sib.csv", sep = ",", col.names = NA,
            qmethod = "double")
