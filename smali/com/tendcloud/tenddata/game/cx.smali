.class Lcom/tendcloud/tenddata/game/cx;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/cw;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cw;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tendcloud/tenddata/game/cw;->f:J

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    iget-wide v0, v0, Lcom/tendcloud/tenddata/game/cw;->f:J

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    iget-wide v2, v2, Lcom/tendcloud/tenddata/game/cw;->g:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/cw;->a(Lcom/tendcloud/tenddata/game/cw;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    iget-wide v2, v1, Lcom/tendcloud/tenddata/game/cw;->f:J

    iput-wide v2, v0, Lcom/tendcloud/tenddata/game/cw;->g:J

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/cw;->b(Lcom/tendcloud/tenddata/game/cw;)Lcom/tendcloud/tenddata/game/ch;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/cw;->d:Lcom/tendcloud/tenddata/game/ch;

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/cw;->d:Lcom/tendcloud/tenddata/game/ch;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cw;->c(Lcom/tendcloud/tenddata/game/cw;)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/cw;->d(Lcom/tendcloud/tenddata/game/cw;)Lcom/tendcloud/tenddata/game/ch;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/cw;->d:Lcom/tendcloud/tenddata/game/ch;

    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/cw;->d(Lcom/tendcloud/tenddata/game/cw;)Lcom/tendcloud/tenddata/game/ch;

    move-result-object v1

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/cw;->e:Lcom/tendcloud/tenddata/game/ch;

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/cw;->d:Lcom/tendcloud/tenddata/game/ch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/cw;->e:Lcom/tendcloud/tenddata/game/ch;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    iget-object v0, v0, Lcom/tendcloud/tenddata/game/cw;->a:Lcom/tendcloud/tenddata/game/ci;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/cw;->d:Lcom/tendcloud/tenddata/game/ch;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/cw;->e:Lcom/tendcloud/tenddata/game/ch;

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/ci;->a(Lcom/tendcloud/tenddata/game/ch;Lcom/tendcloud/tenddata/game/ch;)D

    move-result-wide v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cw;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cw;->c(Lcom/tendcloud/tenddata/game/cw;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
