# iterate over examples and create a registry with SHA256 hashes
for FILE in examples/*
  do HASH=$(openssl dgst -sha256 $FILE | cut -f 2 -d " ")
  echo $FILE ${HASH}
done
