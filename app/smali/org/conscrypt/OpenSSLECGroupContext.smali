.class final Lorg/conscrypt/OpenSSLECGroupContext;
.super Ljava/lang/Object;
.source "OpenSSLECGroupContext.java"


# static fields
.field private static final ALIASES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final groupCtx:Lorg/conscrypt/NativeRef$EC_GROUP;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/conscrypt/OpenSSLECGroupContext;->ALIASES:Ljava/util/Map;

    .line 38
    sget-object v0, Lorg/conscrypt/OpenSSLECGroupContext;->ALIASES:Ljava/util/Map;

    const-string v1, "secp256r1"

    const-string v2, "prime256v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/conscrypt/OpenSSLECGroupContext;->ALIASES:Ljava/util/Map;

    const-string v1, "1.3.132.0.33"

    const-string v2, "secp224r1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/conscrypt/OpenSSLECGroupContext;->ALIASES:Ljava/util/Map;

    const-string v1, "1.3.132.0.34"

    const-string v2, "secp384r1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/conscrypt/OpenSSLECGroupContext;->ALIASES:Ljava/util/Map;

    const-string v1, "1.3.132.0.35"

    const-string v2, "secp521r1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/conscrypt/OpenSSLECGroupContext;->ALIASES:Ljava/util/Map;

    const-string v1, "1.2.840.10045.3.1.7"

    const-string v2, "prime256v1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method constructor <init>(Lorg/conscrypt/NativeRef$EC_GROUP;)V
    .locals 0
    .param p1, "groupCtx"    # Lorg/conscrypt/NativeRef$EC_GROUP;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/conscrypt/OpenSSLECGroupContext;->groupCtx:Lorg/conscrypt/NativeRef$EC_GROUP;

    .line 51
    return-void
.end method

.method static getCurveByName(Ljava/lang/String;)Lorg/conscrypt/OpenSSLECGroupContext;
    .locals 6
    .param p0, "curveName"    # Ljava/lang/String;

    .prologue
    .line 54
    sget-object v3, Lorg/conscrypt/OpenSSLECGroupContext;->ALIASES:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    sget-object v3, Lorg/conscrypt/OpenSSLECGroupContext;->ALIASES:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "curveName":Ljava/lang/String;
    check-cast p0, Ljava/lang/String;

    .line 58
    .restart local p0    # "curveName":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lorg/conscrypt/NativeCrypto;->EC_GROUP_new_by_curve_name(Ljava/lang/String;)J

    move-result-wide v0

    .line 59
    .local v0, "ctx":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    .line 60
    const/4 v3, 0x0

    .line 64
    :goto_0
    return-object v3

    .line 62
    :cond_1
    new-instance v2, Lorg/conscrypt/NativeRef$EC_GROUP;

    invoke-direct {v2, v0, v1}, Lorg/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    .line 64
    .local v2, "groupRef":Lorg/conscrypt/NativeRef$EC_GROUP;
    new-instance v3, Lorg/conscrypt/OpenSSLECGroupContext;

    invoke-direct {v3, v2}, Lorg/conscrypt/OpenSSLECGroupContext;-><init>(Lorg/conscrypt/NativeRef$EC_GROUP;)V

    goto :goto_0
.end method

.method static getInstance(Ljava/security/spec/ECParameterSpec;)Lorg/conscrypt/OpenSSLECGroupContext;
    .locals 25
    .param p0, "params"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static/range {p0 .. p0}, Lorg/conscrypt/Platform;->getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;

    move-result-object v14

    .line 85
    .local v14, "curveName":Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 86
    invoke-static {v14}, Lorg/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lorg/conscrypt/OpenSSLECGroupContext;

    move-result-object v4

    .line 167
    :goto_0
    return-object v4

    .line 90
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v13

    .line 91
    .local v13, "curve":Ljava/security/spec/EllipticCurve;
    invoke-virtual {v13}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v16

    .line 94
    .local v16, "field":Ljava/security/spec/ECField;
    move-object/from16 v0, v16

    instance-of v4, v0, Ljava/security/spec/ECFieldFp;

    if-eqz v4, :cond_2

    .line 95
    check-cast v16, Ljava/security/spec/ECFieldFp;

    .end local v16    # "field":Ljava/security/spec/ECField;
    invoke-virtual/range {v16 .. v16}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v22

    .line 101
    .local v22, "p":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v17

    .line 102
    .local v17, "generator":Ljava/security/spec/ECPoint;
    invoke-virtual {v13}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v12

    .line 103
    .local v12, "b":Ljava/math/BigInteger;
    invoke-virtual/range {v17 .. v17}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v23

    .line 104
    .local v23, "x":Ljava/math/BigInteger;
    invoke-virtual/range {v17 .. v17}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v24

    .line 108
    .local v24, "y":Ljava/math/BigInteger;
    invoke-virtual/range {v22 .. v22}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 143
    :cond_1
    :goto_1
    if-eqz v14, :cond_3

    .line 144
    invoke-static {v14}, Lorg/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lorg/conscrypt/OpenSSLECGroupContext;

    move-result-object v4

    goto :goto_0

    .line 97
    .end local v12    # "b":Ljava/math/BigInteger;
    .end local v17    # "generator":Ljava/security/spec/ECPoint;
    .end local v22    # "p":Ljava/math/BigInteger;
    .end local v23    # "x":Ljava/math/BigInteger;
    .end local v24    # "y":Ljava/math/BigInteger;
    .restart local v16    # "field":Ljava/security/spec/ECField;
    :cond_2
    new-instance v4, Ljava/security/InvalidParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unhandled field class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 98
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 110
    .end local v16    # "field":Ljava/security/spec/ECField;
    .restart local v12    # "b":Ljava/math/BigInteger;
    .restart local v17    # "generator":Ljava/security/spec/ECPoint;
    .restart local v22    # "p":Ljava/math/BigInteger;
    .restart local v23    # "x":Ljava/math/BigInteger;
    .restart local v24    # "y":Ljava/math/BigInteger;
    :sswitch_0
    const/16 v4, 0x10

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ffffffffffffffffffffffffffffffff000000000000000000000001"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    .line 111
    invoke-virtual {v12, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "b4050a850c04b3abf54132565044b0b7d7bfd8ba270b39432355ffb4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    .line 112
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "b70e0cbd6bb4bf7f321390b94a03c1d356c21122343280d6115c1d21"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    .line 113
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bd376388b5f723fb4c22dfe6cd4375a05a07476444d5819985007e34"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    const-string v14, "secp224r1"

    goto :goto_1

    .line 118
    :sswitch_1
    const/16 v4, 0x10

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ffffffff00000001000000000000000000000000ffffffffffffffffffffffff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    .line 119
    invoke-virtual {v12, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    .line 120
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    .line 121
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    const-string v14, "prime256v1"

    goto/16 :goto_1

    .line 126
    :sswitch_2
    const/16 v4, 0x10

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffeffffffff0000000000000000ffffffff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    .line 127
    invoke-virtual {v12, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "b3312fa7e23ee7e4988e056be3f82d19181d9c6efe8141120314088f5013875ac656398d8a2ed19d2a85c8edd3ec2aef"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    .line 128
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    .line 129
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    const-string v14, "secp384r1"

    goto/16 :goto_1

    .line 134
    :sswitch_3
    const/16 v4, 0x10

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    .line 135
    invoke-virtual {v12, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "51953eb9618e1c9a1f929a21a0b68540eea2da725b99b315f3b8b489918ef109e156193951ec7e937b1652c0bd3bb1bf073573df883d2c34f1ef451fd46b503f00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    .line 136
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x10

    .line 137
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    const-string v14, "secp521r1"

    goto/16 :goto_1

    .line 147
    :cond_3
    invoke-virtual {v13}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v11

    .line 148
    .local v11, "a":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v21

    .line 149
    .local v21, "order":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v10

    .line 154
    .local v10, "cofactor":I
    :try_start_0
    invoke-virtual/range {v22 .. v22}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    .line 155
    invoke-virtual/range {v24 .. v24}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v9

    .line 153
    invoke-static/range {v4 .. v10}, Lorg/conscrypt/NativeCrypto;->EC_GROUP_new_arbitrary([B[B[B[B[B[BI)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v18

    .line 161
    .local v18, "group":J
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-nez v4, :cond_4

    .line 162
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string v5, "EC_GROUP_new_arbitrary returned NULL"

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 156
    .end local v18    # "group":J
    :catch_0
    move-exception v15

    .line 157
    .local v15, "exception":Ljava/lang/Throwable;
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string v5, "EC_GROUP_new_arbitrary failed"

    invoke-direct {v4, v5, v15}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 165
    .end local v15    # "exception":Ljava/lang/Throwable;
    .restart local v18    # "group":J
    :cond_4
    new-instance v20, Lorg/conscrypt/NativeRef$EC_GROUP;

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    .line 167
    .local v20, "groupRef":Lorg/conscrypt/NativeRef$EC_GROUP;
    new-instance v4, Lorg/conscrypt/OpenSSLECGroupContext;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Lorg/conscrypt/OpenSSLECGroupContext;-><init>(Lorg/conscrypt/NativeRef$EC_GROUP;)V

    goto/16 :goto_0

    .line 108
    :sswitch_data_0
    .sparse-switch
        0xe0 -> :sswitch_0
        0x100 -> :sswitch_1
        0x180 -> :sswitch_2
        0x209 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OpenSSLECGroupContext.equals is not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getCurveName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/conscrypt/OpenSSLECGroupContext;->groupCtx:Lorg/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->EC_GROUP_get_curve_name(Lorg/conscrypt/NativeRef$EC_GROUP;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getECParameterSpec()Ljava/security/spec/ECParameterSpec;
    .locals 18

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/conscrypt/OpenSSLECGroupContext;->groupCtx:Lorg/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v14}, Lorg/conscrypt/NativeCrypto;->EC_GROUP_get_curve_name(Lorg/conscrypt/NativeRef$EC_GROUP;)Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, "curveName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/conscrypt/OpenSSLECGroupContext;->groupCtx:Lorg/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v14}, Lorg/conscrypt/NativeCrypto;->EC_GROUP_get_curve(Lorg/conscrypt/NativeRef$EC_GROUP;)[[B

    move-result-object v7

    .line 178
    .local v7, "curveParams":[[B
    new-instance v12, Ljava/math/BigInteger;

    const/4 v14, 0x0

    aget-object v14, v7, v14

    invoke-direct {v12, v14}, Ljava/math/BigInteger;-><init>([B)V

    .line 179
    .local v12, "p":Ljava/math/BigInteger;
    new-instance v2, Ljava/math/BigInteger;

    const/4 v14, 0x1

    aget-object v14, v7, v14

    invoke-direct {v2, v14}, Ljava/math/BigInteger;-><init>([B)V

    .line 180
    .local v2, "a":Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    const/4 v14, 0x2

    aget-object v14, v7, v14

    invoke-direct {v3, v14}, Ljava/math/BigInteger;-><init>([B)V

    .line 182
    .local v3, "b":Ljava/math/BigInteger;
    new-instance v8, Ljava/security/spec/ECFieldFp;

    invoke-direct {v8, v12}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    .line 184
    .local v8, "field":Ljava/security/spec/ECField;
    new-instance v5, Ljava/security/spec/EllipticCurve;

    invoke-direct {v5, v8, v2, v3}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 186
    .local v5, "curve":Ljava/security/spec/EllipticCurve;
    new-instance v10, Lorg/conscrypt/OpenSSLECPointContext;

    new-instance v14, Lorg/conscrypt/NativeRef$EC_POINT;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/conscrypt/OpenSSLECGroupContext;->groupCtx:Lorg/conscrypt/NativeRef$EC_GROUP;

    .line 187
    invoke-static {v15}, Lorg/conscrypt/NativeCrypto;->EC_GROUP_get_generator(Lorg/conscrypt/NativeRef$EC_GROUP;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Lorg/conscrypt/NativeRef$EC_POINT;-><init>(J)V

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v14}, Lorg/conscrypt/OpenSSLECPointContext;-><init>(Lorg/conscrypt/OpenSSLECGroupContext;Lorg/conscrypt/NativeRef$EC_POINT;)V

    .line 188
    .local v10, "generatorCtx":Lorg/conscrypt/OpenSSLECPointContext;
    invoke-virtual {v10}, Lorg/conscrypt/OpenSSLECPointContext;->getECPoint()Ljava/security/spec/ECPoint;

    move-result-object v9

    .line 190
    .local v9, "generator":Ljava/security/spec/ECPoint;
    new-instance v11, Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/conscrypt/OpenSSLECGroupContext;->groupCtx:Lorg/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v14}, Lorg/conscrypt/NativeCrypto;->EC_GROUP_get_order(Lorg/conscrypt/NativeRef$EC_GROUP;)[B

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/math/BigInteger;-><init>([B)V

    .line 191
    .local v11, "order":Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/conscrypt/OpenSSLECGroupContext;->groupCtx:Lorg/conscrypt/NativeRef$EC_GROUP;

    invoke-static {v14}, Lorg/conscrypt/NativeCrypto;->EC_GROUP_get_cofactor(Lorg/conscrypt/NativeRef$EC_GROUP;)[B

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/math/BigInteger;-><init>([B)V

    .line 193
    .local v4, "cofactor":Ljava/math/BigInteger;
    new-instance v13, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v14

    invoke-direct {v13, v5, v9, v11, v14}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 194
    .local v13, "spec":Ljava/security/spec/ECParameterSpec;
    invoke-static {v13, v6}, Lorg/conscrypt/Platform;->setCurveName(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V

    .line 195
    return-object v13
.end method

.method getNativeRef()Lorg/conscrypt/NativeRef$EC_GROUP;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/conscrypt/OpenSSLECGroupContext;->groupCtx:Lorg/conscrypt/NativeRef$EC_GROUP;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
