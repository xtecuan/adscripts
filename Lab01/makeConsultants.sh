echo "\"FIRSTNAME\",\"LASTNAME\",\"PASSWD\",\"OU\",\"PCMAIL\"" > consultores.txt
for i in {1..20}
do 
echo "\"Consultor$i\",\"Consultor$i\",\"Pa\$\$w0rd\",\"NorteAmerica\",\"Consultor$i\"" >> consultores.txt 
done
