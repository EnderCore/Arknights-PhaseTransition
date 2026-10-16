.class public Lcom/tendcloud/tenddata/game/dw;
.super Lcom/tendcloud/tenddata/game/do;
.source "td"


# instance fields
.field private a:Lcom/tendcloud/tenddata/game/ch;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tendcloud/tenddata/game/dy;)V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/do;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dw;->c:Ljava/lang/String;

    sget-object v0, Lcom/tendcloud/tenddata/game/dx;->a:[I

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/dy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "type"

    sget-object v1, Lcom/tendcloud/tenddata/game/dy;->a:Lcom/tendcloud/tenddata/game/dy;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/dy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "available"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bf;->e(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bf;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "connected"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "current"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bf;->w(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bf;->x(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/dw;->a(Lorg/json/JSONArray;)Lcom/tendcloud/tenddata/game/ch;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/dw;->a:Lcom/tendcloud/tenddata/game/ch;

    if-nez v2, :cond_1

    const-string v2, "scannable"

    invoke-virtual {p0, v2, v0}, Lcom/tendcloud/tenddata/game/dw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/dw;->a:Lcom/tendcloud/tenddata/game/ch;

    :goto_1
    const-string v0, "configured"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bf;->v(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ip"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bf;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    invoke-static {}, Lcom/tendcloud/tenddata/game/bf;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "scannableFingerId"

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/dw;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Lcom/tendcloud/tenddata/game/ci;

    invoke-direct {v2}, Lcom/tendcloud/tenddata/game/ci;-><init>()V

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/dw;->a:Lcom/tendcloud/tenddata/game/ch;

    invoke-virtual {v2, v3, v1}, Lcom/tendcloud/tenddata/game/ci;->a(Lcom/tendcloud/tenddata/game/ch;Lcom/tendcloud/tenddata/game/ch;)D

    move-result-wide v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    const-string v0, "scannable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v2, "scannable"

    invoke-virtual {p0, v2, v0}, Lcom/tendcloud/tenddata/game/dw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/dw;->a:Lcom/tendcloud/tenddata/game/ch;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dw;->c:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v0, "connected"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    :try_start_0
    const-string v0, "type"

    sget-object v1, Lcom/tendcloud/tenddata/game/dy;->b:Lcom/tendcloud/tenddata/game/dy;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/dy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "available"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bf;->f(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "connected"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bf;->h(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bf;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "current"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/game/bf;->a(Landroid/content/Context;Z)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    invoke-static {}, Lcom/tendcloud/tenddata/game/bf;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dw;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    const-string v0, "scannable"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bf;->u(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dw;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :pswitch_2
    :try_start_1
    const-string v0, "type"

    sget-object v1, Lcom/tendcloud/tenddata/game/dy;->c:Lcom/tendcloud/tenddata/game/dy;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/dy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dw;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lorg/json/JSONArray;)Lcom/tendcloud/tenddata/game/ch;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v6, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v0, Lcom/tendcloud/tenddata/game/cd;

    const-string v1, "name"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "level"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/cd;-><init>(Ljava/lang/String;Ljava/lang/String;BBB)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->eForInternal(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/tendcloud/tenddata/game/ch;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/ch;-><init>()V

    invoke-virtual {v0, v7}, Lcom/tendcloud/tenddata/game/ch;->setBsslist(Ljava/util/List;)V

    :goto_2
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_2
.end method
