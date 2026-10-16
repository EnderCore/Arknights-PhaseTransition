.class public Lcom/hypergryph/sdk/utils/RandomUtil;
.super Ljava/lang/Object;
.source "RandomUtil.java"


# static fields
.field private static final CODE_MAP:[C

.field private static s_rand:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 7
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/hypergryph/sdk/utils/RandomUtil;->s_rand:Ljava/util/Random;

    .line 8
    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hypergryph/sdk/utils/RandomUtil;->CODE_MAP:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateNonceStr()Ljava/lang/String;
    .locals 6

    .prologue
    .line 13
    sget-object v4, Lcom/hypergryph/sdk/utils/RandomUtil;->s_rand:Ljava/util/Random;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v2, v4, 0xa

    .line 14
    .local v2, "len":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 16
    sget-object v4, Lcom/hypergryph/sdk/utils/RandomUtil;->s_rand:Ljava/util/Random;

    sget-object v5, Lcom/hypergryph/sdk/utils/RandomUtil;->CODE_MAP:[C

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 17
    .local v3, "rand":I
    sget-object v4, Lcom/hypergryph/sdk/utils/RandomUtil;->CODE_MAP:[C

    aget-char v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19
    .end local v3    # "rand":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
