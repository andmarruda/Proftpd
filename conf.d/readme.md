English Version

Let's create the server's keys.
1) Create a directory in /etc/proftpd/ named auth_key or any other name that you like. "Remember that this name has to be used on the sftp.conf at line SFTPHostKey."
2) Let's configurated the pair of keys:
3) First the RSA KEY
4) sudo ssh-keygen -b 4096
5) Enter file in which to save the key (/home/usr/.ssh/id_rsa):
  5.a)/etc/proftpd/auth_key/host_rsa_key
  5.b)confirm the questions and it will be generated
6) Now let's generated the DSA Key
7) sudo ssh-keygen -t dsa -b 4096
8) Enter file in which to save the key (/home/usr/.ssh/id_dsa):
  8.a)/etc/proftpd/auth_key/host_dsa_key
  8.b)confirm the questions and it will be generated
9) Change the owner and authorization of the directory that you created in the previous step
  9.a) sudo chown proftpd /etc/proftpd/auth_key -R
  9.b) sudo chmod 700 /etc/proftpd/auth_key -R
  
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
  5.a)/etc/proftpd/auth_key/host_rsa_key
  5.b)Confirme os questionamentos e a chave será gerada
6) Agora vamos gerar a chave DSA
7) sudo ssh-keygen -t dsa -b 4096
8) Enter file in which to save the key (/home/usr/.ssh/id_dsa):
  8.a)/etc/proftpd/auth_key/host_dsa_key
  8.b)Confirme os questionamentos e a chave será gerada
9) Mude o proprietário e as autorizações do diretório que você criou no passo anterior.
  9.a) sudo chown proftpd /etc/proftpd/auth_key -R
  9.b) sudo chmod 700 /etc/proftpd/auth_key -R
  
Depois disso rode o comando a seguir:
sudo systemctl restart proftpd

Verifique se funcionou! Se não funciou verifique os logs em /var/log/proftpd para maiores detalhes ou rode o comando a seguir:
sudo systemctl status proftpd
Para maiores detalhes do erro.

Se você seguiu todos os passos do manual tudo estará funcionando muito bem!
