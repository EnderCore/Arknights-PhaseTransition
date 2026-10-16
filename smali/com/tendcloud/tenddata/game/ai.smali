.class final Lcom/tendcloud/tenddata/game/ai;
.super Ljava/lang/Object;
.source "td"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/at;->f(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/at;->f(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tendcloud/tenddata/game/aj;

    invoke-direct {v0, p1}, Lcom/tendcloud/tenddata/game/aj;-><init>(Lcom/tendcloud/tenddata/game/a;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V

    :cond_0
    const-string v0, "0"

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/at;->c(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->b()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    const-string v0, "Ignore page changing during screen switch"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->iForDeveloper(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/game/zz;->c:Z

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/tendcloud/tenddata/game/ak;

    invoke-direct {v0, p1}, Lcom/tendcloud/tenddata/game/ak;-><init>(Lcom/tendcloud/tenddata/game/a;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static b(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APP_SQL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "1"

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/at;->c(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->b()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->b()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    new-instance v0, Lcom/tendcloud/tenddata/game/al;

    invoke-direct {v0, p1, p0}, Lcom/tendcloud/tenddata/game/al;-><init>(Lcom/tendcloud/tenddata/game/a;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
