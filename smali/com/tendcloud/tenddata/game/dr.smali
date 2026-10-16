.class public Lcom/tendcloud/tenddata/game/dr;
.super Lcom/tendcloud/tenddata/game/do;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/do;-><init>()V

    const-string v0, "manufacture"

    invoke-static {}, Lcom/tendcloud/tenddata/game/ay;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/tendcloud/tenddata/game/dr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "brand"

    invoke-static {}, Lcom/tendcloud/tenddata/game/ay;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/tendcloud/tenddata/game/dr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "model"

    invoke-static {}, Lcom/tendcloud/tenddata/game/ay;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/tendcloud/tenddata/game/dr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/tendcloud/tenddata/game/ay;->l()[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "cpuInfo"

    invoke-virtual {p0, v0, v2}, Lcom/tendcloud/tenddata/game/dr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/tendcloud/tenddata/game/ay;->q()[I

    move-result-object v3

    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget v4, v3, v0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "memoryInfo"

    invoke-virtual {p0, v0, v2}, Lcom/tendcloud/tenddata/game/dr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/tendcloud/tenddata/game/ay;->p()[I

    move-result-object v2

    :goto_2
    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget v3, v2, v1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const-string v1, "sdCardInfo"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/dr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/dr;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ay;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/dr;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ay;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string v0, "totalDiskSpace"

    invoke-static {}, Lcom/tendcloud/tenddata/game/dr;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "support"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ay;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "cpu"

    invoke-static {}, Lcom/tendcloud/tenddata/game/ay;->m()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "nfcHce"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ay;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static b()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/ay;->r()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x2

    aget v0, v1, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v2

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public c()V
    .locals 2

    :try_start_0
    const-string v0, "support"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ay;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dr;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSlots(I)V
    .locals 2

    const-string v0, "slots"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
