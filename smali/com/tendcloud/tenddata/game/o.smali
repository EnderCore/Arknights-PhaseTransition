.class Lcom/tendcloud/tenddata/game/o;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/tendcloud/tenddata/game/ec;

.field final synthetic h:Lcom/tendcloud/tenddata/game/zz;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/ec;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/o;->h:Lcom/tendcloud/tenddata/game/zz;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/o;->a:Lcom/tendcloud/tenddata/game/a;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/o;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tendcloud/tenddata/game/o;->c:Ljava/lang/String;

    iput p5, p0, Lcom/tendcloud/tenddata/game/o;->d:I

    iput-object p6, p0, Lcom/tendcloud/tenddata/game/o;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/tendcloud/tenddata/game/o;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/tendcloud/tenddata/game/o;->g:Lcom/tendcloud/tenddata/game/ec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "apiType"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "service"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/o;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "domain"

    const-string v3, "iap"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "action"

    const-string v3, "recharge"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "accountId"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/o;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "orderId"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/o;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "amount"

    iget v3, p0, Lcom/tendcloud/tenddata/game/o;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "currencyType"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/o;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "payType"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/o;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "orderId"

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/o;->g:Lcom/tendcloud/tenddata/game/ec;

    const-string v5, "keyOrderId"

    invoke-virtual {v4, v5}, Lcom/tendcloud/tenddata/game/ec;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "amount"

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/o;->g:Lcom/tendcloud/tenddata/game/ec;

    const-string v5, "keyTotalPrice"

    invoke-virtual {v4, v5}, Lcom/tendcloud/tenddata/game/ec;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "currencyType"

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/o;->g:Lcom/tendcloud/tenddata/game/ec;

    const-string v5, "keyCurrencyType"

    invoke-virtual {v4, v5}, Lcom/tendcloud/tenddata/game/ec;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/o;->g:Lcom/tendcloud/tenddata/game/ec;

    const-string v4, "keyOrderDetail"

    invoke-virtual {v3, v4}, Lcom/tendcloud/tenddata/game/ec;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/o;->g:Lcom/tendcloud/tenddata/game/ec;

    const-string v4, "keyOrderDetail"

    invoke-virtual {v3, v4}, Lcom/tendcloud/tenddata/game/ec;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "items"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v3, "order"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v3, "data"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
