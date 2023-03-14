# Instalation instructions
---------------------------------------------------------------------------------------
 $ git clone https://github.com/DiogoALemos/diogoRecon.git
 --------------------------------------------------------------------------------------
 $ chmod +x install.sh 
 --------------------------------------------------------------------------------------
 $ ./install.sh
 --------------------------------------------------------------------------------------
 
 
---------------------------------------------------------------------------------------
Redrecon requires go1.19 and linux to be updated, to install successfully.
---------------------------------------------------------------------------------------
RedRecon is a tool for recon and vunerability scan on selected target using Dnsx, Sublist3r, Amass, DnsRecon, Haktrails, Notify and Dirsearch , by inputting the address we wish to scan it automaticly uses the 7 tools via automated usage afther the first input saving it in a created folder called Relatórios the output of the programs will be located in that directory, The program can further be modified to use new commands already existing in the previous 7 tools or to reduce the amount of searches haktrail will perform so the API key doesnt get exhausted quickly since its currently running 3 intructions so depending on where its going to be used its better to remove 1 or 2 lines of haktrails
---------------------------------------------------------------------------------------
# USAGE 
$ sudo ./RedRecon
$ Insira o website para o script correr 
$ www.exemplo.com
---------------------------------------------------------------------------------------
WARNING with haktrails a API key is needed for it to work otherwise it will not function, it uses alot of tokens so spend them wisely
---------------------------------------------------------------------------------------

