.class Lcom/tendcloud/tenddata/game/bh;
.super Ljava/lang/Thread;
.source "td"


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/bg;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bh;->a:Lcom/tendcloud/tenddata/game/bg;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bh;->a:Lcom/tendcloud/tenddata/game/bg;

    iget-object v1, v0, Lcom/tendcloud/tenddata/game/bg;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bh;->a:Lcom/tendcloud/tenddata/game/bg;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/bg;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bh;->a:Lcom/tendcloud/tenddata/game/bg;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/bg;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bh;->a:Lcom/tendcloud/tenddata/game/bg;

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/bg;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    monitor-exit v1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bh;->a:Lcom/tendcloud/tenddata/game/bg;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/bg;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bh;->a:Lcom/tendcloud/tenddata/game/bg;

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/bg;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bh;->a:Lcom/tendcloud/tenddata/game/bg;

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/bg;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/bh;->a:Lcom/tendcloud/tenddata/game/bg;

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/bg;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
