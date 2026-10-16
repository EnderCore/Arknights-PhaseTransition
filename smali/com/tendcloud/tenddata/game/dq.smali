.class public Lcom/tendcloud/tenddata/game/dq;
.super Lcom/tendcloud/tenddata/game/do;
.source "td"


# static fields
.field public static final a:Ljava/lang/String; = "accounts"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/do;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    const-string v0, "accounts"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->d(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUserAccount(Lcom/tendcloud/tenddata/game/dk;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/dk;->a_()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dq;->b:Lorg/json/JSONObject;

    const-string v1, "accounts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/dk;->a_()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "accounts"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/dk;->a_()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/dq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dq;->b:Lorg/json/JSONObject;

    const-string v1, "accounts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/dk;->a_()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->postSDKError(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
