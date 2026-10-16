.class final Lcom/tendcloud/tenddata/game/bs;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/bl;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/bl;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bs;->a:Lcom/tendcloud/tenddata/game/bl;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/bs;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bs;->a:Lcom/tendcloud/tenddata/game/bl;

    invoke-interface {v0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/bl;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bs;->b:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bs;->a:Lcom/tendcloud/tenddata/game/bl;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/tendcloud/tenddata/game/bl;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
