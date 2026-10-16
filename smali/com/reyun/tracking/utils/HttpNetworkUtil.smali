.class public Lcom/reyun/tracking/utils/HttpNetworkUtil;
.super Ljava/lang/Object;
.source "HttpNetworkUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;Lcom/reyun/tracking/common/ReYunConst$BusinessType;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://log.reyun.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/reyun/tracking/utils/ReYunHttp;->get(Ljava/lang/String;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {p3}, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->getInstance(Lcom/reyun/tracking/common/ReYunConst$BusinessType;)Lcom/reyun/tracking/sdk/ReYunWorkHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->postRunnableSafely(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getAbsoluteUrl(Ljava/lang/String;Lcom/reyun/tracking/common/ReYunConst$BusinessType;)Ljava/lang/String;
    .locals 2

    const-string v0, "pkgInfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://log.reyun.com/receive/pkginfo"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://log.reyun.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static postBatchJson(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;Lcom/reyun/tracking/common/ReYunConst$BusinessType;)V
    .locals 6

    const-string v4, "data"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2, p0}, Lcom/reyun/tracking/common/DataContextUtil;->putMacAddress2Json(Lorg/json/JSONObject;Landroid/content/Context;)V

    invoke-static {v2, p0}, Lcom/reyun/tracking/common/DataContextUtil;->putTimeStamp2Json(Lorg/json/JSONObject;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://log.reyun.com/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5, p3}, Lcom/reyun/tracking/utils/ReYunHttp;->postJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {p4}, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->getInstance(Lcom/reyun/tracking/common/ReYunConst$BusinessType;)Lcom/reyun/tracking/sdk/ReYunWorkHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->postRunnableSafely(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static postJson(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;Lcom/reyun/tracking/common/ReYunConst$BusinessType;)V
    .locals 3

    invoke-static {p2, p0}, Lcom/reyun/tracking/common/DataContextUtil;->putMacAddress2Json(Lorg/json/JSONObject;Landroid/content/Context;)V

    invoke-static {p2, p0}, Lcom/reyun/tracking/common/DataContextUtil;->putTimeStamp2Json(Lorg/json/JSONObject;Landroid/content/Context;)V

    invoke-static {p1, p4}, Lcom/reyun/tracking/utils/HttpNetworkUtil;->getAbsoluteUrl(Ljava/lang/String;Lcom/reyun/tracking/common/ReYunConst$BusinessType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, p3}, Lcom/reyun/tracking/utils/ReYunHttp;->postJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {p4}, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->getInstance(Lcom/reyun/tracking/common/ReYunConst$BusinessType;)Lcom/reyun/tracking/sdk/ReYunWorkHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->postRunnableSafely(Ljava/lang/Runnable;)V

    return-void
.end method
