.class Lcom/tendcloud/tenddata/game/de;
.super Landroid/os/Handler;
.source "td"


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/dc;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/dc;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/de;->a:Lcom/tendcloud/tenddata/game/dc;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/de;->a:Lcom/tendcloud/tenddata/game/dc;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/dc;->a(Lcom/tendcloud/tenddata/game/dc;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/tendcloud/tenddata/game/a;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/de;->a:Lcom/tendcloud/tenddata/game/dc;

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/game/dc;->a(Lcom/tendcloud/tenddata/game/dc;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
