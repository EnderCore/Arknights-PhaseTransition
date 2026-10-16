.class public Lcom/reyun/tracking/sdk/ReYunWorkHandler;
.super Ljava/lang/Object;
.source "ReYunWorkHandler.java"


# static fields
.field private static sHandlers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/reyun/tracking/common/ReYunConst$BusinessType;",
            "Lcom/reyun/tracking/sdk/ReYunWorkHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/reyun/tracking/sdk/ReYunWorkHandler$1;

    invoke-direct {v0, p0}, Lcom/reyun/tracking/sdk/ReYunWorkHandler$1;-><init>(Lcom/reyun/tracking/sdk/ReYunWorkHandler;)V

    iput-object v0, p0, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->mWorkThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->mWorkThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$002(Lcom/reyun/tracking/sdk/ReYunWorkHandler;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->mWorkHandler:Landroid/os/Handler;

    return-object p1
.end method

.method public static getInstance(Lcom/reyun/tracking/common/ReYunConst$BusinessType;)Lcom/reyun/tracking/sdk/ReYunWorkHandler;
    .locals 2

    const-class v1, Lcom/reyun/tracking/sdk/ReYunWorkHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/reyun/tracking/sdk/ReYunWorkHandler;

    invoke-direct {v1}, Lcom/reyun/tracking/sdk/ReYunWorkHandler;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/reyun/tracking/sdk/ReYunWorkHandler;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearTasks()V
    .locals 5

    iget-object v3, p0, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->mWorkHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->mWorkHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :try_start_0
    sget-object v3, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    sget-object v3, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/reyun/tracking/sdk/ReYunWorkHandler;

    if-ne v0, p0, :cond_0

    sget-object v3, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->sHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public postRunnableSafely(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->mWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public postRunnableWithDelaySafely(Ljava/lang/Runnable;J)V
    .locals 2

    iget-object v0, p0, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->mWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/reyun/tracking/sdk/ReYunWorkHandler$2;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/reyun/tracking/sdk/ReYunWorkHandler$2;-><init>(Lcom/reyun/tracking/sdk/ReYunWorkHandler;JLjava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/reyun/tracking/sdk/ReYunWorkHandler$2;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
