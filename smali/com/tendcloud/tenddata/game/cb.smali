.class final Lcom/tendcloud/tenddata/game/cb;
.super Ljava/lang/Object;
.source "td"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([C[B)Ljavax/crypto/SecretKey;
    .locals 4

    const-string v0, "PBKDF2WithHmacSHA1"

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v2, 0x2710

    const/16 v3, 0x80

    invoke-direct {v1, p0, p1, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private static a()Ljavax/crypto/spec/IvParameterSpec;
    .locals 3

    const/16 v2, 0x10

    const-string v0, "iv"

    invoke-static {v0, v2}, Lcom/tendcloud/tenddata/game/cb;->a(Ljava/lang/String;I)[B

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/cb;->a(I)[B

    move-result-object v1

    const-string v0, "iv"

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/cb;->a(Ljava/lang/String;[B)V

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;[B)V
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v2, "mPBE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, p1, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static a(I)[B
    .locals 2

    new-array v0, p0, [B

    invoke-static {}, Lcom/tendcloud/tenddata/game/bq;->b()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;I)[B
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v2, "mPBE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-array v1, p1, [B

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static a([BLjava/lang/String;)[B
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/cb;->b()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/cb;->a([C[B)Ljavax/crypto/SecretKey;

    move-result-object v0

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {}, Lcom/tendcloud/tenddata/game/cb;->a()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static b()[B
    .locals 2

    const/16 v1, 0x20

    const-string v0, "salt"

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/cb;->a(Ljava/lang/String;I)[B

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/cb;->a(I)[B

    move-result-object v0

    const-string v1, "salt"

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/game/cb;->a(Ljava/lang/String;[B)V

    :cond_0
    return-object v0
.end method

.method static b([BLjava/lang/String;)[B
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/cb;->b()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/cb;->a([C[B)Ljavax/crypto/SecretKey;

    move-result-object v0

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {}, Lcom/tendcloud/tenddata/game/cb;->a()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
