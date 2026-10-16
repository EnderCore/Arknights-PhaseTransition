.class final Lcom/tendcloud/tenddata/game/bg;
.super Landroid/content/BroadcastReceiver;
.source "td"


# instance fields
.field a:Landroid/content/BroadcastReceiver;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bg;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/bg;->c:Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iput-object p0, p0, Lcom/tendcloud/tenddata/game/bg;->a:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/tendcloud/tenddata/game/bh;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/game/bh;-><init>(Lcom/tendcloud/tenddata/game/bg;)V

    const-string v1, "t-scan"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
