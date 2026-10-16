.class public Lcom/tendcloud/tenddata/game/dv;
.super Lcom/tendcloud/tenddata/game/do;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/do;-><init>()V

    const-string v0, "bootTime"

    invoke-static {}, Lcom/tendcloud/tenddata/game/dv;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "activeTime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "freeDiskSpace"

    invoke-static {}, Lcom/tendcloud/tenddata/game/dv;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static b()I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/ay;->r()[I

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()J
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method
