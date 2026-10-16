.class public final Lcom/tendcloud/tenddata/game/cc;
.super Ljava/lang/Object;
.source "td"


# static fields
.field static final a:Ljava/lang/String; = "Archimedes_p"

.field static final b:Ljava/lang/String; = "Pythagoras_phase"

.field private static c:Ljava/lang/String; = null

.field private static d:I = 0x0

.field private static final e:I = 0x3b9aca00


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/cc;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/tendcloud/tenddata/game/cc;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a()I
    .locals 3

    const-class v1, Lcom/tendcloud/tenddata/game/cc;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/tendcloud/tenddata/game/cc;->d:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tendcloud/tenddata/game/ca;->a()[[I

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ca;->a([[I)I

    move-result v0

    sput v0, Lcom/tendcloud/tenddata/game/cc;->d:I

    sget v0, Lcom/tendcloud/tenddata/game/cc;->d:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tendcloud/tenddata/game/bq;->b()Ljava/security/SecureRandom;

    move-result-object v0

    const v2, 0x3b9aca00

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    sput v0, Lcom/tendcloud/tenddata/game/cc;->d:I

    sget v0, Lcom/tendcloud/tenddata/game/cc;->d:I

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cc;->a(I)V

    :cond_0
    sget v0, Lcom/tendcloud/tenddata/game/cc;->d:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(I)V
    .locals 12

    const/4 v2, 0x4

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v7, 0x7

    const/4 v1, 0x0

    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    filled-new-array {v7, v11}, [I

    move-result-object v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v0, 0x3

    new-array v5, v0, [I

    new-array v6, v7, [I

    new-array v7, v7, [I

    new-instance v8, Ljava/security/SecureRandom;

    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    move v0, v1

    :goto_0
    array-length v9, v5

    if-ge v0, v9, :cond_0

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v9

    aput v9, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    array-length v9, v6

    if-ge v0, v9, :cond_1

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v9

    aput v9, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_2
    array-length v8, v7

    if-ge v0, v8, :cond_2

    aget v8, v5, v1

    aget v9, v6, v0

    mul-int/2addr v8, v9

    aget v9, v6, v0

    mul-int/2addr v8, v9

    aget v9, v6, v0

    mul-int/2addr v8, v9

    aget v9, v5, v3

    aget v10, v6, v0

    mul-int/2addr v9, v10

    aget v10, v6, v0

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    aget v9, v5, v11

    aget v10, v6, v0

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    add-int/2addr v8, p0

    aput v8, v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget v9, v6, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v7, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_3
    if-ge v1, v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Archimedes_p"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/tendcloud/tenddata/game/cc;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_4
    const/4 v0, 0x6

    if-ge v1, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Archimedes_p"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/tendcloud/tenddata/game/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_4
    const/4 v0, 0x6

    move v1, v0

    :goto_5
    const/16 v0, 0x8

    if-ge v1, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/tendcloud/tenddata/game/cc;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_5
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-string v1, "Pythagoras_phase"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
