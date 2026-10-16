.class Lcom/tendcloud/tenddata/game/w;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Lcom/tendcloud/tenddata/game/bl;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tendcloud/tenddata/game/zz;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/zz;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/w;->b:Lcom/tendcloud/tenddata/game/zz;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/w;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/w;->a:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    const-string v1, "activityPaused"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/w;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget-object v1, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ai;->b(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "activityIdle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/w;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget-object v1, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ai;->a(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
