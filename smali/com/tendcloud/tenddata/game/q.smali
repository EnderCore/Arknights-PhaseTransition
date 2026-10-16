.class Lcom/tendcloud/tenddata/game/q;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tendcloud/tenddata/game/ec;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/tendcloud/tenddata/game/zz;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Lcom/tendcloud/tenddata/game/ec;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/q;->e:Lcom/tendcloud/tenddata/game/zz;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/q;->a:Lcom/tendcloud/tenddata/game/a;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/q;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tendcloud/tenddata/game/q;->c:Lcom/tendcloud/tenddata/game/ec;

    iput-object p5, p0, Lcom/tendcloud/tenddata/game/q;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v1, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    iget-object v0, v1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "apiType"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "service"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "domain"

    const-string v3, "iap"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "action"

    const-string v3, "pay"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    const-string v0, "accountId"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->b:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/q;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "APP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "orderId"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->c:Lcom/tendcloud/tenddata/game/ec;

    const-string v4, "keyOrderId"

    invoke-virtual {v3, v4}, Lcom/tendcloud/tenddata/game/ec;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/q;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "payType"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->d:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "amount"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->c:Lcom/tendcloud/tenddata/game/ec;

    const-string v4, "keyTotalPrice"

    invoke-virtual {v3, v4}, Lcom/tendcloud/tenddata/game/ec;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/q;->c:Lcom/tendcloud/tenddata/game/ec;

    const-string v3, "keyCurrencyType"

    invoke-virtual {v0, v3}, Lcom/tendcloud/tenddata/game/ec;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "CNY"

    :cond_1
    const-string v3, "currencyType"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/q;->c:Lcom/tendcloud/tenddata/game/ec;

    const-string v3, "keyOrderDetail"

    invoke-virtual {v0, v3}, Lcom/tendcloud/tenddata/game/ec;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/q;->c:Lcom/tendcloud/tenddata/game/ec;

    const-string v3, "keyOrderDetail"

    invoke-virtual {v0, v3}, Lcom/tendcloud/tenddata/game/ec;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "items"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, v1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v3, "data"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x66

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return-void

    :cond_3
    const-string v0, "payType"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->d:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "orderId"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->c:Lcom/tendcloud/tenddata/game/ec;

    const-string v4, "keyOrderId"

    invoke-virtual {v3, v4}, Lcom/tendcloud/tenddata/game/ec;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "amount"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->c:Lcom/tendcloud/tenddata/game/ec;

    const-string v4, "keyTotalPrice"

    invoke-virtual {v3, v4}, Lcom/tendcloud/tenddata/game/ec;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "currencyType"

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->c:Lcom/tendcloud/tenddata/game/ec;

    const-string v4, "keyCurrencyType"

    invoke-virtual {v3, v4}, Lcom/tendcloud/tenddata/game/ec;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
