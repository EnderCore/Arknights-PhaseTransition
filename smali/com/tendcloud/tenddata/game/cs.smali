.class Lcom/tendcloud/tenddata/game/cs;
.super Landroid/os/Handler;
.source "td"


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/cr;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cr;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cs;->a:Lcom/tendcloud/tenddata/game/cr;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cs;->a:Lcom/tendcloud/tenddata/game/cr;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cr;->a(Lcom/tendcloud/tenddata/game/cr;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cs;->a:Lcom/tendcloud/tenddata/game/cr;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cr;->b(Lcom/tendcloud/tenddata/game/cr;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cs;->a:Lcom/tendcloud/tenddata/game/cr;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cr;->c(Lcom/tendcloud/tenddata/game/cr;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cs;->a:Lcom/tendcloud/tenddata/game/cr;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cr;->a(Lcom/tendcloud/tenddata/game/cr;)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cs;->a:Lcom/tendcloud/tenddata/game/cr;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cr;->c(Lcom/tendcloud/tenddata/game/cr;)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cs;->a:Lcom/tendcloud/tenddata/game/cr;

    const/4 v1, 0x2

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/cr;->a(IJ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
