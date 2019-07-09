# criptografia
Shell script para criptografia.
Utiliza do openssl para:

	- Criptografia simétrica
		1. DES, 3DES, AES
	- Integridade
		2. MD5, SHA-1
	- Chave pública
		3. RSA (Pública e privada)
	- Assinatura digital
		4. Fazer o resumo e assinar digitalmente com a chave privada (Autenticação + integridade)
	- Todos os serviços
		5. Juntar utilizando criptografia simétrica/pública:
			(Sigilo/Integridade/Autenticação), criar uma chave simétrica, criptografa usando chave pública

Para executar, basta dar as devidas permissões para o sistema criar os outputs necessários e rodar o arquivo cripto.sh.
