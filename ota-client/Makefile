
all: pubkey.h

pubkey.h: priv.key
	echo "// autogen by  ota-client/Makefile" > pubkey.h
	python -c "import rsa_sign; rsa_sign.dump_c(rsa_sign.load_key())" | grep "^mod =" | sed 's/mod =/#define MODULUS /g' >> pubkey.h

priv.key:
	sh gen_keys.sh
		
