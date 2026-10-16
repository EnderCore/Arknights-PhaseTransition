.class public Lcom/tendcloud/tenddata/game/dh;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/dh$b;,
        Lcom/tendcloud/tenddata/game/dh$a;,
        Lcom/tendcloud/tenddata/game/dh$d;,
        Lcom/tendcloud/tenddata/game/dh$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "__database_reborn_January_one__"

.field private static final c:Ljava/lang/String; = "OperationManager"

.field private static final d:I = 0x6

.field private static e:Lcom/tendcloud/tenddata/game/dh;


# instance fields
.field b:Ljava/util/concurrent/locks/Lock;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Lcom/tendcloud/tenddata/game/dg;

.field private h:Ljava/util/HashMap;

.field private i:Ljava/util/zip/CRC32;

.field private j:Ljava/util/Map;

.field private k:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->b:Ljava/util/concurrent/locks/Lock;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/dh;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->g:Lcom/tendcloud/tenddata/game/dg;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->h:Ljava/util/HashMap;

    invoke-static {}, Lcom/tendcloud/tenddata/game/a;->a()[Lcom/tendcloud/tenddata/game/a;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/dh;->h:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->i:Ljava/util/zip/CRC32;

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/dh;
    .locals 2

    const-class v1, Lcom/tendcloud/tenddata/game/dh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/dh;->e:Lcom/tendcloud/tenddata/game/dh;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tendcloud/tenddata/game/dh;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dh;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/dh;->e:Lcom/tendcloud/tenddata/game/dh;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/tendcloud/tenddata/game/dh;->e:Lcom/tendcloud/tenddata/game/dh;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/dh;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->h:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/dh;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dh;->a(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dh;->c(Ljava/io/File;)I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dh;->b(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Ljava/io/File;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dh;->d(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/dh;->b(Ljava/io/File;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private c(Ljava/io/File;)I
    .locals 8

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v3, v4

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const-wide/32 v4, 0x100000

    div-long/2addr v0, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_0
.end method

.method private c()V
    .locals 9

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "__database_reborn_January_one__"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->k:Ljava/util/Map;

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/a;->a()[Lcom/tendcloud/tenddata/game/a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "td_database"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "SaaS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Lock"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tendcloud/tenddata/game/dh;->j:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v8, "rw"

    invoke-direct {v7, v5, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private d(Ljava/io/File;)Ljava/util/List;
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/tendcloud/tenddata/game/di;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/game/di;-><init>(Lcom/tendcloud/tenddata/game/dh;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/tendcloud/tenddata/game/a;ILjava/lang/String;)Ljava/util/List;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    if-eqz p3, :cond_c

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    new-instance v8, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "td_database"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SaaS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operationFolder is not exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->iForInternal([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    monitor-exit p0

    return-object v7

    :cond_1
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    array-length v2, v9

    if-lez v2, :cond_0

    array-length v2, v9

    if-ge v2, p2, :cond_2

    array-length p2, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    move v6, v0

    move-object v4, v1

    move-object v3, v1

    move-object v5, v1

    :goto_1
    if-ge v6, p2, :cond_0

    :try_start_2
    new-instance v10, Ljava/io/File;

    aget-object v0, v9, v6

    invoke-direct {v10, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Lcom/tendcloud/tenddata/game/dg;

    aget-object v0, v9, v6

    invoke-direct {v2, v0}, Lcom/tendcloud/tenddata/game/dg;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v0, v10, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V

    move-object v3, v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v0, v1

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object v4, v2

    move-object v5, v0

    goto :goto_1

    :cond_5
    const-wide/16 v4, 0x1

    :try_start_6
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    new-array v5, v5, [B

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    iget-object v10, p0, Lcom/tendcloud/tenddata/game/dh;->i:Ljava/util/zip/CRC32;

    invoke-virtual {v10}, Ljava/util/zip/CRC32;->reset()V

    iget-object v10, p0, Lcom/tendcloud/tenddata/game/dh;->i:Ljava/util/zip/CRC32;

    invoke-virtual {v10, v5}, Ljava/util/zip/CRC32;->update([B)V

    iget-object v10, p0, Lcom/tendcloud/tenddata/game/dh;->i:Ljava/util/zip/CRC32;

    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v10

    long-to-int v10, v10

    if-ne v4, v10, :cond_9

    if-eqz v5, :cond_7

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2, p1}, Lcom/tendcloud/tenddata/game/dh;->a(Lcom/tendcloud/tenddata/game/dg;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V

    move-object v3, v1

    :cond_6
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v0, v1

    goto :goto_2

    :cond_7
    :try_start_8
    iget-object v4, p0, Lcom/tendcloud/tenddata/game/dh;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/tendcloud/tenddata/game/dh$b;

    invoke-direct {v5, p0, v2, p1, p3}, Lcom/tendcloud/tenddata/game/dh$b;-><init>(Lcom/tendcloud/tenddata/game/dh;Lcom/tendcloud/tenddata/game/dg;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v4

    :goto_4
    :try_start_9
    iget-object v4, p0, Lcom/tendcloud/tenddata/game/dh;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/tendcloud/tenddata/game/dh$b;

    invoke-direct {v5, p0, v2, p1, p3}, Lcom/tendcloud/tenddata/game/dh$b;-><init>(Lcom/tendcloud/tenddata/game/dh;Lcom/tendcloud/tenddata/game/dg;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_8

    :try_start_a
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V

    move-object v3, v1

    :cond_8
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object v0, v1

    goto :goto_2

    :cond_9
    :try_start_b
    iget-object v4, p0, Lcom/tendcloud/tenddata/game/dh;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/tendcloud/tenddata/game/dh$b;

    invoke-direct {v5, p0, v2, p1, p3}, Lcom/tendcloud/tenddata/game/dh$b;-><init>(Lcom/tendcloud/tenddata/game/dh;Lcom/tendcloud/tenddata/game/dg;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v5, v0

    :goto_5
    if-eqz v3, :cond_a

    :try_start_c
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_b
    :goto_6
    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_2
    move-exception v4

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move-object v2, v4

    move-object v0, v5

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v0, v5

    goto :goto_4

    :catch_5
    move-exception v4

    goto/16 :goto_2

    :catch_6
    move-exception v4

    goto/16 :goto_2

    :cond_c
    move-object v2, v3

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Lcom/tendcloud/tenddata/game/dg;Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->h:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/tendcloud/tenddata/game/dg;Lcom/tendcloud/tenddata/game/db;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tendcloud/tenddata/game/dh$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/tendcloud/tenddata/game/dh$d;-><init>(Lcom/tendcloud/tenddata/game/dh;Lcom/tendcloud/tenddata/game/dg;Lcom/tendcloud/tenddata/game/db;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 9

    const/4 v1, 0x0

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/a;->a()[Lcom/tendcloud/tenddata/game/a;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "td_database"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "SaaS"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v6}, Lcom/tendcloud/tenddata/game/dh;->d(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v0, "__database_reborn_January_one__"

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/a;->a()[Lcom/tendcloud/tenddata/game/a;

    move-result-object v3

    array-length v4, v3

    :goto_2
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "td_database"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "SaaS"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v5}, Lcom/tendcloud/tenddata/game/dh;->d(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public confirmRead(Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    new-instance v0, Lcom/tendcloud/tenddata/game/dh$a;

    invoke-direct {v0, p0, p1}, Lcom/tendcloud/tenddata/game/dh$a;-><init>(Lcom/tendcloud/tenddata/game/dh;Lcom/tendcloud/tenddata/game/a;)V

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/dh$a;->run()V

    return-void
.end method

.method public getFileLock(Lcom/tendcloud/tenddata/game/a;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/dh;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public releaseFileLock(Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dh;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
