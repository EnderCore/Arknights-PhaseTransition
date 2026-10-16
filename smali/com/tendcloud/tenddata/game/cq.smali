.class Lcom/tendcloud/tenddata/game/cq;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Lcom/tendcloud/tenddata/game/bm$a;


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/cp;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cq;->a:Lcom/tendcloud/tenddata/game/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Lcom/tendcloud/tenddata/game/db;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/db;-><init>()V

    const-string v1, "app"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/db;->b:Ljava/lang/String;

    const-string v1, "test"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/db;->c:Ljava/lang/String;

    sget-object v1, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/db;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    new-instance v0, Lcom/tendcloud/tenddata/game/da;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/da;-><init>()V

    sget-object v1, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/da;->a:Lcom/tendcloud/tenddata/game/a;

    sget-object v1, Lcom/tendcloud/tenddata/game/da$a;->a:Lcom/tendcloud/tenddata/game/da$a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/da;->b:Lcom/tendcloud/tenddata/game/da$a;

    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    return-void
.end method
