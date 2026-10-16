.class final Lcom/tendcloud/tenddata/game/ca;
.super Ljava/lang/Object;
.source "td"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(D)I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "######0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a([[D)I
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v0, 0x0

    new-array v1, v13, [[D

    new-array v2, v13, [D

    aget-object v3, p0, v0

    aget-wide v4, v3, v0

    aput-wide v4, v2, v0

    aget-object v3, p0, v0

    aget-wide v4, v3, v10

    aput-wide v4, v2, v10

    aget-object v3, p0, v0

    aget-wide v4, v3, v11

    aput-wide v4, v2, v11

    aget-object v3, p0, v0

    aget-wide v4, v3, v12

    aput-wide v4, v2, v12

    aput-object v2, v1, v0

    new-array v2, v13, [D

    aget-object v3, p0, v10

    aget-wide v4, v3, v0

    aput-wide v4, v2, v0

    aget-object v3, p0, v10

    aget-wide v4, v3, v10

    aput-wide v4, v2, v10

    aget-object v3, p0, v10

    aget-wide v4, v3, v11

    aput-wide v4, v2, v11

    aget-object v3, p0, v10

    aget-wide v4, v3, v12

    aput-wide v4, v2, v12

    aput-object v2, v1, v10

    new-array v2, v13, [D

    aget-object v3, p0, v11

    aget-wide v4, v3, v0

    aput-wide v4, v2, v0

    aget-object v3, p0, v11

    aget-wide v4, v3, v10

    aput-wide v4, v2, v10

    aget-object v3, p0, v11

    aget-wide v4, v3, v11

    aput-wide v4, v2, v11

    aget-object v3, p0, v11

    aget-wide v4, v3, v12

    aput-wide v4, v2, v12

    aput-object v2, v1, v11

    new-array v2, v13, [D

    aget-object v3, p0, v12

    aget-wide v4, v3, v0

    aput-wide v4, v2, v0

    aget-object v3, p0, v12

    aget-wide v4, v3, v10

    aput-wide v4, v2, v10

    aget-object v3, p0, v12

    aget-wide v4, v3, v11

    aput-wide v4, v2, v11

    aget-object v3, p0, v12

    aget-wide v4, v3, v12

    aput-wide v4, v2, v12

    aput-object v2, v1, v12

    new-array v2, v13, [[D

    new-array v3, v13, [D

    aget-object v4, p0, v0

    aget-wide v4, v4, v13

    aput-wide v4, v3, v0

    aget-object v4, p0, v0

    aget-wide v4, v4, v10

    aput-wide v4, v3, v10

    aget-object v4, p0, v0

    aget-wide v4, v4, v11

    aput-wide v4, v3, v11

    aget-object v4, p0, v0

    aget-wide v4, v4, v12

    aput-wide v4, v3, v12

    aput-object v3, v2, v0

    new-array v3, v13, [D

    aget-object v4, p0, v10

    aget-wide v4, v4, v13

    aput-wide v4, v3, v0

    aget-object v4, p0, v10

    aget-wide v4, v4, v10

    aput-wide v4, v3, v10

    aget-object v4, p0, v10

    aget-wide v4, v4, v11

    aput-wide v4, v3, v11

    aget-object v4, p0, v10

    aget-wide v4, v4, v12

    aput-wide v4, v3, v12

    aput-object v3, v2, v10

    new-array v3, v13, [D

    aget-object v4, p0, v11

    aget-wide v4, v4, v13

    aput-wide v4, v3, v0

    aget-object v4, p0, v11

    aget-wide v4, v4, v10

    aput-wide v4, v3, v10

    aget-object v4, p0, v11

    aget-wide v4, v4, v11

    aput-wide v4, v3, v11

    aget-object v4, p0, v11

    aget-wide v4, v4, v12

    aput-wide v4, v3, v12

    aput-object v3, v2, v11

    new-array v3, v13, [D

    aget-object v4, p0, v12

    aget-wide v4, v4, v13

    aput-wide v4, v3, v0

    aget-object v4, p0, v12

    aget-wide v4, v4, v10

    aput-wide v4, v3, v10

    aget-object v4, p0, v12

    aget-wide v4, v4, v11

    aput-wide v4, v3, v11

    aget-object v4, p0, v12

    aget-wide v4, v4, v12

    aput-wide v4, v3, v12

    aput-object v3, v2, v12

    new-array v3, v13, [[D

    new-array v4, v13, [D

    aget-object v5, p0, v0

    aget-wide v6, v5, v0

    aput-wide v6, v4, v0

    aget-object v5, p0, v0

    aget-wide v6, v5, v13

    aput-wide v6, v4, v10

    aget-object v5, p0, v0

    aget-wide v6, v5, v11

    aput-wide v6, v4, v11

    aget-object v5, p0, v0

    aget-wide v6, v5, v12

    aput-wide v6, v4, v12

    aput-object v4, v3, v0

    new-array v4, v13, [D

    aget-object v5, p0, v10

    aget-wide v6, v5, v0

    aput-wide v6, v4, v0

    aget-object v5, p0, v10

    aget-wide v6, v5, v13

    aput-wide v6, v4, v10

    aget-object v5, p0, v10

    aget-wide v6, v5, v11

    aput-wide v6, v4, v11

    aget-object v5, p0, v10

    aget-wide v6, v5, v12

    aput-wide v6, v4, v12

    aput-object v4, v3, v10

    new-array v4, v13, [D

    aget-object v5, p0, v11

    aget-wide v6, v5, v0

    aput-wide v6, v4, v0

    aget-object v5, p0, v11

    aget-wide v6, v5, v13

    aput-wide v6, v4, v10

    aget-object v5, p0, v11

    aget-wide v6, v5, v11

    aput-wide v6, v4, v11

    aget-object v5, p0, v11

    aget-wide v6, v5, v12

    aput-wide v6, v4, v12

    aput-object v4, v3, v11

    new-array v4, v13, [D

    aget-object v5, p0, v12

    aget-wide v6, v5, v0

    aput-wide v6, v4, v0

    aget-object v5, p0, v12

    aget-wide v6, v5, v13

    aput-wide v6, v4, v10

    aget-object v5, p0, v12

    aget-wide v6, v5, v11

    aput-wide v6, v4, v11

    aget-object v5, p0, v12

    aget-wide v6, v5, v12

    aput-wide v6, v4, v12

    aput-object v4, v3, v12

    new-array v4, v13, [[D

    new-array v5, v13, [D

    aget-object v6, p0, v0

    aget-wide v6, v6, v0

    aput-wide v6, v5, v0

    aget-object v6, p0, v0

    aget-wide v6, v6, v10

    aput-wide v6, v5, v10

    aget-object v6, p0, v0

    aget-wide v6, v6, v13

    aput-wide v6, v5, v11

    aget-object v6, p0, v0

    aget-wide v6, v6, v12

    aput-wide v6, v5, v12

    aput-object v5, v4, v0

    new-array v5, v13, [D

    aget-object v6, p0, v10

    aget-wide v6, v6, v0

    aput-wide v6, v5, v0

    aget-object v6, p0, v10

    aget-wide v6, v6, v10

    aput-wide v6, v5, v10

    aget-object v6, p0, v10

    aget-wide v6, v6, v13

    aput-wide v6, v5, v11

    aget-object v6, p0, v10

    aget-wide v6, v6, v12

    aput-wide v6, v5, v12

    aput-object v5, v4, v10

    new-array v5, v13, [D

    aget-object v6, p0, v11

    aget-wide v6, v6, v0

    aput-wide v6, v5, v0

    aget-object v6, p0, v11

    aget-wide v6, v6, v10

    aput-wide v6, v5, v10

    aget-object v6, p0, v11

    aget-wide v6, v6, v13

    aput-wide v6, v5, v11

    aget-object v6, p0, v11

    aget-wide v6, v6, v12

    aput-wide v6, v5, v12

    aput-object v5, v4, v11

    new-array v5, v13, [D

    aget-object v6, p0, v12

    aget-wide v6, v6, v0

    aput-wide v6, v5, v0

    aget-object v6, p0, v12

    aget-wide v6, v6, v10

    aput-wide v6, v5, v10

    aget-object v6, p0, v12

    aget-wide v6, v6, v13

    aput-wide v6, v5, v11

    aget-object v6, p0, v12

    aget-wide v6, v6, v12

    aput-wide v6, v5, v12

    aput-object v5, v4, v12

    new-array v5, v13, [[D

    new-array v6, v13, [D

    aget-object v7, p0, v0

    aget-wide v8, v7, v0

    aput-wide v8, v6, v0

    aget-object v7, p0, v0

    aget-wide v8, v7, v10

    aput-wide v8, v6, v10

    aget-object v7, p0, v0

    aget-wide v8, v7, v11

    aput-wide v8, v6, v11

    aget-object v7, p0, v0

    aget-wide v8, v7, v13

    aput-wide v8, v6, v12

    aput-object v6, v5, v0

    new-array v6, v13, [D

    aget-object v7, p0, v10

    aget-wide v8, v7, v0

    aput-wide v8, v6, v0

    aget-object v7, p0, v10

    aget-wide v8, v7, v10

    aput-wide v8, v6, v10

    aget-object v7, p0, v10

    aget-wide v8, v7, v11

    aput-wide v8, v6, v11

    aget-object v7, p0, v10

    aget-wide v8, v7, v13

    aput-wide v8, v6, v12

    aput-object v6, v5, v10

    new-array v6, v13, [D

    aget-object v7, p0, v11

    aget-wide v8, v7, v0

    aput-wide v8, v6, v0

    aget-object v7, p0, v11

    aget-wide v8, v7, v10

    aput-wide v8, v6, v10

    aget-object v7, p0, v11

    aget-wide v8, v7, v11

    aput-wide v8, v6, v11

    aget-object v7, p0, v11

    aget-wide v8, v7, v13

    aput-wide v8, v6, v12

    aput-object v6, v5, v11

    new-array v6, v13, [D

    aget-object v7, p0, v12

    aget-wide v8, v7, v0

    aput-wide v8, v6, v0

    aget-object v7, p0, v12

    aget-wide v8, v7, v10

    aput-wide v8, v6, v10

    aget-object v7, p0, v12

    aget-wide v8, v7, v11

    aput-wide v8, v6, v11

    aget-object v7, p0, v12

    aget-wide v8, v7, v13

    aput-wide v8, v6, v12

    aput-object v6, v5, v12

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ca;->b([[D)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v1, v6, v8

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/ca;->b([[D)D

    move-result-wide v0

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/ca;->b([[D)D

    move-result-wide v2

    invoke-static {v4}, Lcom/tendcloud/tenddata/game/ca;->b([[D)D

    move-result-wide v8

    invoke-static {v5}, Lcom/tendcloud/tenddata/game/ca;->b([[D)D

    move-result-wide v4

    div-double/2addr v0, v6

    div-double v0, v2, v6

    div-double v0, v8, v6

    div-double v0, v4, v6

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ca;->a(D)I

    move-result v0

    goto :goto_0
.end method

.method static a([[I)I
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    if-ge v1, v9, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-array v1, v9, [[D

    const/4 v2, 0x5

    new-array v2, v2, [D

    aget-object v3, p0, v0

    aget v3, v3, v0

    aget-object v4, p0, v0

    aget v4, v4, v0

    mul-int/2addr v3, v4

    aget-object v4, p0, v0

    aget v4, v4, v0

    mul-int/2addr v3, v4

    int-to-double v4, v3

    aput-wide v4, v2, v0

    aget-object v3, p0, v0

    aget v3, v3, v0

    aget-object v4, p0, v0

    aget v4, v4, v0

    mul-int/2addr v3, v4

    int-to-double v4, v3

    aput-wide v4, v2, v6

    aget-object v3, p0, v0

    aget v3, v3, v0

    int-to-double v4, v3

    aput-wide v4, v2, v7

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v8

    aget-object v3, p0, v0

    aget v3, v3, v6

    int-to-double v4, v3

    aput-wide v4, v2, v9

    aput-object v2, v1, v0

    const/4 v2, 0x5

    new-array v2, v2, [D

    aget-object v3, p0, v6

    aget v3, v3, v0

    aget-object v4, p0, v6

    aget v4, v4, v0

    mul-int/2addr v3, v4

    aget-object v4, p0, v6

    aget v4, v4, v0

    mul-int/2addr v3, v4

    int-to-double v4, v3

    aput-wide v4, v2, v0

    aget-object v3, p0, v6

    aget v3, v3, v0

    aget-object v4, p0, v6

    aget v4, v4, v0

    mul-int/2addr v3, v4

    int-to-double v4, v3

    aput-wide v4, v2, v6

    aget-object v3, p0, v6

    aget v3, v3, v0

    int-to-double v4, v3

    aput-wide v4, v2, v7

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v8

    aget-object v3, p0, v6

    aget v3, v3, v6

    int-to-double v4, v3

    aput-wide v4, v2, v9

    aput-object v2, v1, v6

    const/4 v2, 0x5

    new-array v2, v2, [D

    aget-object v3, p0, v7

    aget v3, v3, v0

    aget-object v4, p0, v7

    aget v4, v4, v0

    mul-int/2addr v3, v4

    aget-object v4, p0, v7

    aget v4, v4, v0

    mul-int/2addr v3, v4

    int-to-double v4, v3

    aput-wide v4, v2, v0

    aget-object v3, p0, v7

    aget v3, v3, v0

    aget-object v4, p0, v7

    aget v4, v4, v0

    mul-int/2addr v3, v4

    int-to-double v4, v3

    aput-wide v4, v2, v6

    aget-object v3, p0, v7

    aget v3, v3, v0

    int-to-double v4, v3

    aput-wide v4, v2, v7

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v8

    aget-object v3, p0, v7

    aget v3, v3, v6

    int-to-double v4, v3

    aput-wide v4, v2, v9

    aput-object v2, v1, v7

    const/4 v2, 0x5

    new-array v2, v2, [D

    aget-object v3, p0, v8

    aget v3, v3, v0

    aget-object v4, p0, v8

    aget v4, v4, v0

    mul-int/2addr v3, v4

    aget-object v4, p0, v8

    aget v4, v4, v0

    mul-int/2addr v3, v4

    int-to-double v4, v3

    aput-wide v4, v2, v0

    aget-object v3, p0, v8

    aget v3, v3, v0

    aget-object v4, p0, v8

    aget v4, v4, v0

    mul-int/2addr v3, v4

    int-to-double v4, v3

    aput-wide v4, v2, v6

    aget-object v3, p0, v8

    aget v0, v3, v0

    int-to-double v4, v0

    aput-wide v4, v2, v7

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v8

    aget-object v0, p0, v8

    aget v0, v0, v6

    int-to-double v4, v0

    aput-wide v4, v2, v9

    aput-object v2, v1, v8

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ca;->a([[D)I

    move-result v0

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/16 v0, 0x400

    new-array v0, v0, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v2

    :goto_1
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    :goto_2
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    new-instance v0, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static a()[[I
    .locals 9

    const/4 v3, 0x6

    const/4 v1, 0x0

    const/4 v5, 0x4

    const-string v0, "Archimedes_p"

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    const/4 v4, 0x1

    move v0, v1

    :goto_0
    if-ge v4, v5, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Archimedes_p"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tendcloud/tenddata/game/ca;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_1
    if-ge v4, v3, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Archimedes_p"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tendcloud/tenddata/game/ca;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-ge v0, v5, :cond_5

    :goto_2
    const/16 v4, 0x8

    if-ge v3, v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tendcloud/tenddata/game/ca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v5, :cond_6

    const/4 v0, 0x0

    check-cast v0, [[I

    :goto_3
    return-object v0

    :cond_6
    :goto_4
    if-ge v1, v5, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_7
    const/4 v0, 0x2

    invoke-static {v2, v5, v0}, Lcom/tendcloud/tenddata/game/ca;->a(Ljava/lang/String;II)[[I

    move-result-object v0

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;II)[[I
    .locals 8

    const/4 v2, 0x0

    filled-new-array {p1, p2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v4, v2

    move v3, v2

    :goto_0
    if-ge v4, p1, :cond_1

    move v1, v2

    :goto_1
    if-ge v1, p2, :cond_0

    aget-object v6, v0, v4

    aget-object v7, v5, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static b([[D)D
    .locals 10

    const/4 v0, 0x3

    new-array v0, v0, [[D

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [D

    const/4 v3, 0x0

    const/4 v4, 0x1

    aget-object v4, p0, v4

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-object v4, p0, v4

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    aget-object v4, p0, v4

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x3

    new-array v2, v2, [D

    const/4 v3, 0x0

    const/4 v4, 0x2

    aget-object v4, p0, v4

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    aget-object v4, p0, v4

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    aget-object v4, p0, v4

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    new-array v2, v2, [D

    const/4 v3, 0x0

    const/4 v4, 0x3

    aget-object v4, p0, v4

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    aget-object v4, p0, v4

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    aget-object v4, p0, v4

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v1, v1, [[D

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [D

    const/4 v4, 0x0

    const/4 v5, 0x1

    aget-object v5, p0, v5

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    aput-wide v6, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-object v5, p0, v5

    const/4 v6, 0x2

    aget-wide v6, v5, v6

    aput-wide v6, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    aget-object v5, p0, v5

    const/4 v6, 0x3

    aget-wide v6, v5, v6

    aput-wide v6, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x3

    new-array v3, v3, [D

    const/4 v4, 0x0

    const/4 v5, 0x2

    aget-object v5, p0, v5

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    aput-wide v6, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x2

    aget-object v5, p0, v5

    const/4 v6, 0x2

    aget-wide v6, v5, v6

    aput-wide v6, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-object v5, p0, v5

    const/4 v6, 0x3

    aget-wide v6, v5, v6

    aput-wide v6, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x3

    new-array v3, v3, [D

    const/4 v4, 0x0

    const/4 v5, 0x3

    aget-object v5, p0, v5

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    aput-wide v6, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    aget-object v5, p0, v5

    const/4 v6, 0x2

    aget-wide v6, v5, v6

    aput-wide v6, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    aget-object v5, p0, v5

    const/4 v6, 0x3

    aget-wide v6, v5, v6

    aput-wide v6, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-array v2, v2, [[D

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    const/4 v6, 0x1

    aget-object v6, p0, v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-object v6, p0, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    aget-object v6, p0, v6

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    const/4 v6, 0x2

    aget-object v6, p0, v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x2

    aget-object v6, p0, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget-object v6, p0, v6

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    const/4 v6, 0x3

    aget-object v6, p0, v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x3

    aget-object v6, p0, v6

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x3

    aget-object v6, p0, v6

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-array v3, v3, [[D

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    const/4 v7, 0x1

    aget-object v7, p0, v7

    const/4 v8, 0x0

    aget-wide v8, v7, v8

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-object v7, p0, v7

    const/4 v8, 0x1

    aget-wide v8, v7, v8

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    aget-object v7, p0, v7

    const/4 v8, 0x2

    aget-wide v8, v7, v8

    aput-wide v8, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    const/4 v7, 0x2

    aget-object v7, p0, v7

    const/4 v8, 0x0

    aget-wide v8, v7, v8

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    aget-object v7, p0, v7

    const/4 v8, 0x1

    aget-wide v8, v7, v8

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    aget-object v7, p0, v7

    const/4 v8, 0x2

    aget-wide v8, v7, v8

    aput-wide v8, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    const/4 v7, 0x3

    aget-object v7, p0, v7

    const/4 v8, 0x0

    aget-wide v8, v7, v8

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x3

    aget-object v7, p0, v7

    const/4 v8, 0x1

    aget-wide v8, v7, v8

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x3

    aget-object v7, p0, v7

    const/4 v8, 0x2

    aget-wide v8, v7, v8

    aput-wide v8, v5, v6

    aput-object v5, v3, v4

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const/4 v6, 0x0

    aget-object v6, p0, v6

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ca;->c([[D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v8, 0x1

    aget-wide v8, v0, v8

    mul-double/2addr v6, v8

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ca;->c([[D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const/4 v6, 0x0

    aget-object v6, p0, v6

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/ca;->c([[D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const/4 v2, 0x0

    aget-object v2, p0, v2

    const/4 v6, 0x3

    aget-wide v6, v2, v6

    mul-double/2addr v4, v6

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/ca;->c([[D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c([[D)D
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    aget-object v0, p0, v6

    aget-wide v0, v0, v6

    aget-object v2, p0, v7

    aget-wide v2, v2, v7

    mul-double/2addr v0, v2

    aget-object v2, p0, v8

    aget-wide v2, v2, v8

    mul-double/2addr v0, v2

    aget-object v2, p0, v6

    aget-wide v2, v2, v7

    aget-object v4, p0, v7

    aget-wide v4, v4, v8

    mul-double/2addr v2, v4

    aget-object v4, p0, v8

    aget-wide v4, v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    aget-object v2, p0, v6

    aget-wide v2, v2, v8

    aget-object v4, p0, v7

    aget-wide v4, v4, v6

    mul-double/2addr v2, v4

    aget-object v4, p0, v8

    aget-wide v4, v4, v7

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    aget-object v2, p0, v6

    aget-wide v2, v2, v8

    neg-double v2, v2

    aget-object v4, p0, v7

    aget-wide v4, v4, v7

    mul-double/2addr v2, v4

    aget-object v4, p0, v8

    aget-wide v4, v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    aget-object v2, p0, v6

    aget-wide v2, v2, v7

    aget-object v4, p0, v7

    aget-wide v4, v4, v6

    mul-double/2addr v2, v4

    aget-object v4, p0, v8

    aget-wide v4, v4, v8

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    aget-object v2, p0, v6

    aget-wide v2, v2, v6

    aget-object v4, p0, v8

    aget-wide v4, v4, v7

    mul-double/2addr v2, v4

    aget-object v4, p0, v7

    aget-wide v4, v4, v8

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "Pythagoras_phase"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
