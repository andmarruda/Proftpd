English Version

Let's create the server's keys.
1) Create a directory in /etc/proftpd/ named auth_key or any other name that you like. "Remember that this name has to be used on the sftp.conf at line SFTPHostKey."
2) Let's configurated the pair of keys:
3) First the RSA KEY
4) sudo ssh-keygen -b 4096
5) Enter file in which to save the key (/home/usr/.ssh/id_rsa):
6) /etc/proftpd/auth_key/host_rsa_key
7) confirm the questions and it will be generated
8) Now let's generated the DSA Key
9) sudo ssh-keygen -t dsa
10) Enter file in which to save the key (/home/usr/.ssh/id_dsa):
11) /etc/proftpd/auth_key/host_dsa_key
12) confirm the questions and it will be generated
13) Change the owner and authorization of the directory that you created in the previous step
14) sudo chown proftpd /etc/proftpd/auth_key -R
15) sudo chmod 700 /etc/proftpd/auth_key -R
16) Disabling SFTP access from SSH
17) Run the command bellow
18) sudo nano /etc/ssh/sshd_config
19) Will open the text editor nano search for the line as follow:
20) Subsystem sftp /usr/lib/openssh/sftp-server
21) Comment it using # before the line like follow
22) #Subsystem sftp /usr/lib/openssh/sftp-server
23) Restart the ssh with the follow command:
24) sudo systemctl restart ssh
  
After this just run the follow command:
sudo systemctl restart proftpd

And verify if it works great! If not just check the /var/log/proftpd logs to verify what happens or run the follow command:
sudo systemctl status proftpd
To show more informations about issue.

If you follow all steps of this tutorial everything will run just fine.

Versão em portugues

Vamos criar as chaves para o servidor.
1) Crie um diretório em /etc/proftpd/ com o nome auth_key ou qualquer outro nome que quiser. "Lembre-se que esse nome deverá ser usado no sftp.conf na linha SFTPHostKey."
2) Vamos configurar o par de chaves:
3) Primeiro a chave RSA
4) sudo ssh-keygen -b 4096
5) Enter file in which to save the key (/home/usr/.ssh/id_rsa):
6) /etc/proftpd/auth_key/host_rsa_key
7) Confirme os questionamentos e a chave será gerada
8) Agora vamos gerar a chave DSA
9) sudo ssh-keygen -t dsa
10) Enter file in which to save the key (/home/usr/.ssh/id_dsa):
11) /etc/proftpd/auth_key/host_dsa_key
12) Confirme os questionamentos e a chave será gerada
13) Mude o proprietário e as autorizações do diretório que você criou no passo anterior.
14) sudo chown proftpd /etc/proftpd/auth_key -R
15) sudo chmod 700 /etc/proftpd/auth_key -R
16) Desabilitando o acesso SFTP pelo SSH
17) Execute o comando abaixo:
18) sudo nano /etc/ssh/sshd_config
19) Abrirá o editor de texto nano com as configurações procure por:
20) Subsystem sftp /usr/lib/openssh/sftp-server
21) Comente a linha usando # antes de qualquer outro caracter da linha como abaixo:
22) #Subsystem sftp /usr/lib/openssh/sftp-server
23) Reinicie o servidor ssh usando o comando abaixo:
24) sudo systemctl restart ssh
  
Depois disso rode o comando a seguir:
sudo systemctl restart proftpd

Verifique se funcionou! Se não funciou verifique os logs em /var/log/proftpd para maiores detalhes ou rode o comando a seguir:
sudo systemctl status proftpd
Para maiores detalhes do erro.

Se você seguiu todos os passos do manual tudo estará funcionando muito bem!
