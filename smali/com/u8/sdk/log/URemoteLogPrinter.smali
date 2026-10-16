.class public Lcom/u8/sdk/log/URemoteLogPrinter;
.super Ljava/lang/Object;
.source "URemoteLogPrinter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/u8/sdk/log/URemoteLogPrinter$LogPrintTask;
    }
.end annotation


# instance fields
.field private interval:I

.field private logs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/u8/sdk/log/ULog;",
            ">;"
        }
    .end annotation
.end field

.field private running:Z

.field private timer:Ljava/util/Timer;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/u8/sdk/log/URemoteLogPrinter;->interval:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/u8/sdk/log/URemoteLogPrinter;->interval:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/log/URemoteLogPrinter;->logs:Ljava/util/List;

    iput-object p1, p0, Lcom/u8/sdk/log/URemoteLogPrinter;->url:Ljava/lang/String;

    iput p2, p0, Lcom/u8/sdk/log/URemoteLogPrinter;->interval:I

    return-void
.end method

.method static synthetic access$000(Lcom/u8/sdk/log/URemoteLogPrinter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/log/URemoteLogPrinter;->url:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAndClear()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/u8/sdk/log/ULog;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/u8/sdk/log/URemoteLogPrinter;->logs:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/u8/sdk/log/URemoteLogPrinter;->logs:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/u8/sdk/log/URemoteLogPrinter;->logs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public print(Lcom/u8/sdk/log/ULog;)V
    .locals 2

    invoke-virtual {p0}, Lcom/u8/sdk/log/URemoteLogPrinter;->start()V

    iget-object v1, p0, Lcom/u8/sdk/log/URemoteLogPrinter;->logs:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/u8/sdk/log/URemoteLogPrinter;->logs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public printImmediate(Ljava/lang/String;Lcom/u8/sdk/log/ULog;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "log"

    invoke-virtual {p2}, Lcom/u8/sdk/log/ULog;->toJSON()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/u8/sdk/utils/U8HttpUtils;->httpPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 6

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/u8/sdk/log/URemoteLogPrinter;->running:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/u8/sdk/log/URemoteLogPrinter;->running:Z

    new-instance v1, Lcom/u8/sdk/log/URemoteLogPrinter$LogPrintTask;

    invoke-direct {v1, p0}, Lcom/u8/sdk/log/URemoteLogPrinter$LogPrintTask;-><init>(Lcom/u8/sdk/log/URemoteLogPrinter;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/u8/sdk/log/URemoteLogPrinter;->timer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/u8/sdk/log/URemoteLogPrinter;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x64

    iget v4, p0, Lcom/u8/sdk/log/URemoteLogPrinter;->interval:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/log/URemoteLogPrinter;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/log/URemoteLogPrinter;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/u8/sdk/log/URemoteLogPrinter;->running:Z

    return-void
.end method
