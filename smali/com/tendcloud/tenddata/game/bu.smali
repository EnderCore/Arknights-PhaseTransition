.class Lcom/tendcloud/tenddata/game/bu;
.super Ljava/lang/ThreadLocal;
.source "td"


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/bt;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bu;->a:Lcom/tendcloud/tenddata/game/bt;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/bu;->a()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    return-object v0
.end method
