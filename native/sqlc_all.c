
#include "sqlite3.c"

#include "cbc_encrypt.c"
#include "cbc_decrypt.c"
#include "cbc_start.c"
#include "cbc_done.c"
#include "crypt_find_cipher.c"
#include "crypt_find_hash.c"
#include "crypt_register_hash.c"
#include "crypt_register_cipher.c"
#include "crypt_register_prng.c"
#include "crypt_argchk.c"
#include "crypt_cipher_is_valid.c"
#include "crypt_cipher_descriptor.c"
#include "crypt_prng_descriptor.c"
#include "crypt_hash_is_valid.c"
#include "crypt_hash_descriptor.c"
#include "hash_memory.c"
#include "zeromem.c"
#include "pkcs_5_2.c"
#include "aes.c"
#include "sha1.c"
#include "hmac_init.c"
#include "hmac_memory.c"
#include "hmac_process.c"
#include "hmac_done.c"
#include "fortuna.c"
#include "sha256.c"

#include "sqlc.h" /* types needed for SQLiteNative_JNI.c */

#include "SQLiteNative_JNI.c"

#include "sqlc.c"

