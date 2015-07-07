# see http://mobile.tutsplus.com/tutorials/android/ndk-tutorial/

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)  
LOCAL_LDLIBS := -llog
LOCAL_MODULE    := sqlc-native-driver
LOCAL_CFLAGS += -DSQLITE_HAS_CODEC -DSQLCIPHER_CRYPTO_LIBTOMCRYPT
LOCAL_CFLAGS += -DSQLITE_TEMP_STORE=2 -DSQLITE_THREADSAFE=2
LOCAL_CFLAGS += -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_FTS3_PARENTHESIS -DSQLITE_ENABLE_FTS4 -DSQLITE_ENABLE_RTREE
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../sqlcipher
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../libtomcrypt/src/headers
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../libtomcrypt/src/ciphers/aes
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../libtomcrypt/src/hashes
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../libtomcrypt/src/hashes/helper
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../libtomcrypt/src/hashes/sha2
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../libtomcrypt/src/modes/cbc
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../libtomcrypt/src/mac/hmac
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../libtomcrypt/src/misc
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../libtomcrypt/src/misc/crypt
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../libtomcrypt/src/misc/pkcs5
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../libtomcrypt/src/prngs
LOCAL_SRC_FILES := ../native/sqlc_all.c
include $(BUILD_SHARED_LIBRARY)

