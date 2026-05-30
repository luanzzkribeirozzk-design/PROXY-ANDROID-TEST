.class public abstract Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;
.super Lorg/conscrypt/OpenSSLCipherRSA;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLCipherRSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DirectRSA"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSSLCipherRSA;-><init>(I)V

    .line 380
    return-void
.end method


# virtual methods
.method doCryptoOperation([B[B)I
    .locals 6
    .param p1, "tmpBuf"    # [B
    .param p2, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .prologue
    .line 386
    iget-boolean v3, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->encrypting:Z

    if-eqz v3, :cond_1

    .line 387
    iget-boolean v3, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->usingPrivateKey:Z

    if-eqz v3, :cond_0

    .line 388
    array-length v3, p1

    iget-object v4, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 389
    invoke-virtual {v4}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    iget v5, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->padding:I

    .line 388
    invoke-static {v3, p1, p2, v4, v5}, Lorg/conscrypt/NativeCrypto;->RSA_private_encrypt(I[B[BLorg/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result v2

    .line 409
    .local v2, "resultSize":I
    :goto_0
    return v2

    .line 391
    .end local v2    # "resultSize":I
    :cond_0
    array-length v3, p1

    iget-object v4, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 392
    invoke-virtual {v4}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    iget v5, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->padding:I

    .line 391
    invoke-static {v3, p1, p2, v4, v5}, Lorg/conscrypt/NativeCrypto;->RSA_public_encrypt(I[B[BLorg/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result v2

    .restart local v2    # "resultSize":I
    goto :goto_0

    .line 396
    .end local v2    # "resultSize":I
    :cond_1
    :try_start_0
    iget-boolean v3, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->usingPrivateKey:Z

    if-eqz v3, :cond_2

    .line 397
    array-length v3, p1

    iget-object v4, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 398
    invoke-virtual {v4}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    iget v5, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->padding:I

    .line 397
    invoke-static {v3, p1, p2, v4, v5}, Lorg/conscrypt/NativeCrypto;->RSA_private_decrypt(I[B[BLorg/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result v2

    .restart local v2    # "resultSize":I
    goto :goto_0

    .line 400
    .end local v2    # "resultSize":I
    :cond_2
    array-length v3, p1

    iget-object v4, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 401
    invoke-virtual {v4}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    iget v5, p0, Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;->padding:I

    .line 400
    invoke-static {v3, p1, p2, v4, v5}, Lorg/conscrypt/NativeCrypto;->RSA_public_decrypt(I[B[BLorg/conscrypt/NativeRef$EVP_PKEY;I)I
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .restart local v2    # "resultSize":I
    goto :goto_0

    .line 403
    .end local v2    # "resultSize":I
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 405
    .local v1, "newE":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 406
    throw v1
.end method
