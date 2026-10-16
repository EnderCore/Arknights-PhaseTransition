.class Lcom/tendcloud/tenddata/game/bv;
.super Ljava/lang/ThreadLocal;
.source "td"


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/bt;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bv;->a:Lcom/tendcloud/tenddata/game/bt;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/bv;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
