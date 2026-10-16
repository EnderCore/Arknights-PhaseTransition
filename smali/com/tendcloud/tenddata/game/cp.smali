.class Lcom/tendcloud/tenddata/game/cp;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/co;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/co;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cp;->a:Lcom/tendcloud/tenddata/game/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bm;->a(Landroid/content/Context;)Lcom/tendcloud/tenddata/game/bm;

    move-result-object v0

    new-instance v1, Lcom/tendcloud/tenddata/game/cq;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/game/cq;-><init>(Lcom/tendcloud/tenddata/game/cp;)V

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bm;->registerTestDeviceListener(Lcom/tendcloud/tenddata/game/bm$a;)V

    return-void
.end method
