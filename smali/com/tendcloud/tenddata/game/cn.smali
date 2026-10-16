.class public Lcom/tendcloud/tenddata/game/cn;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/game/cn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->a:Lcom/tendcloud/tenddata/game/cn;

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->a()Lcom/tendcloud/tenddata/game/cn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bt;->register(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/cn;
    .locals 2

    sget-object v0, Lcom/tendcloud/tenddata/game/cn;->a:Lcom/tendcloud/tenddata/game/cn;

    if-nez v0, :cond_1

    const-class v1, Lcom/tendcloud/tenddata/game/cn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/cn;->a:Lcom/tendcloud/tenddata/game/cn;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tendcloud/tenddata/game/cn;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/cn;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->a:Lcom/tendcloud/tenddata/game/cn;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/cn;->a:Lcom/tendcloud/tenddata/game/cn;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final onTDEBEventIAP(Lcom/tendcloud/tenddata/game/zz$a;)V
    .locals 5

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v1, "apiType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/tendcloud/tenddata/game/db;

    invoke-direct {v2}, Lcom/tendcloud/tenddata/game/db;-><init>()V

    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v3, "service"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    iget-object v3, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v4, "domain"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tendcloud/tenddata/game/db;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v4, "action"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tendcloud/tenddata/game/db;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    instance-of v3, v1, Ljava/util/Map;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/util/Map;

    iput-object v1, v2, Lcom/tendcloud/tenddata/game/db;->d:Ljava/util/Map;

    :cond_2
    iput-object v0, v2, Lcom/tendcloud/tenddata/game/db;->a:Lcom/tendcloud/tenddata/game/a;

    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "addItem"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "recharge"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "currencyPurchase"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "placeOrder"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "deeplink"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "viewItem"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "viewItems"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "reward"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onRechargeSucc"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "virtualCurrencyPurchase"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "itemUsedFor"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "pay"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "apply"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "activate"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    new-instance v1, Lcom/tendcloud/tenddata/game/da;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/da;-><init>()V

    iput-object v0, v1, Lcom/tendcloud/tenddata/game/da;->a:Lcom/tendcloud/tenddata/game/a;

    sget-object v0, Lcom/tendcloud/tenddata/game/da$a;->a:Lcom/tendcloud/tenddata/game/da$a;

    iput-object v0, v1, Lcom/tendcloud/tenddata/game/da;->b:Lcom/tendcloud/tenddata/game/da$a;

    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
