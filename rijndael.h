
#ifndef RIJNDAEL_H_
#define RIJNDAEL_H_

void aes_set_key(const unsigned char *key);
void aes_decrypt(const unsigned char *iv, const unsigned char *inbuf, unsigned char *outbuf, unsigned long long len);
void aes_encrypt(unsigned char *iv, const unsigned char *inbuf, unsigned char *outbuf, unsigned long long len);

#endif