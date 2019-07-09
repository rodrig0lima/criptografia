echo "Informe o nome do diretorio de A: (Default: privado)"
read diretorio
if [ -z $diretorio ]; then
    diretorio="privado"
fi
echo "Informe o nome do arquivo da chave publica de A: (Default: chave_publica_A.pem)"
read chave_publica_A
if [ -z $chave_publica_A ]; then
    chave_publica_A="chave_publica_A.pem"
fi
echo "Informe o nome do arquivo da chave publica de B: (Default: chave_publica_B.pem)"
read chave_publica_B
if [ -z $chave_publica ]; then
    chave_publica_B="chave_publica_B.pem"
fi
cp $diretorio/$chave_publica_A ./$chave_publica_A
cp $chave_publica_B $diretorio/$chave_publica_B