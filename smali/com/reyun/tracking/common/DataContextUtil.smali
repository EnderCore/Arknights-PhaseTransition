.class public Lcom/reyun/tracking/common/DataContextUtil;
.super Ljava/lang/Object;
.source "DataContextUtil.java"


# static fields
.field private static sADID:Ljava/lang/String;

.field private static sMacAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "unknown"

    sput-object v0, Lcom/reyun/tracking/common/DataContextUtil;->sADID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBaseJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "who"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "what"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "when"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0}, Lcom/reyun/tracking/common/DataContextUtil;->getInterval(Landroid/content/Context;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/reyun/tracking/common/CommonUtil;->getTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "context"

    invoke-static {p0, p2, p4, p3}, Lcom/reyun/tracking/common/DataContextUtil;->createContextJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static createContextJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "_app_version"

    invoke-static {p0}, Lcom/reyun/tracking/common/CommonUtil;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_campaignid"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_ryosversion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_rydevicetype"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_carrier"

    invoke-static {p0}, Lcom/reyun/tracking/common/CommonUtil;->getOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_pkgname"

    invoke-static {p0}, Lcom/reyun/tracking/common/CommonUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_lib_version"

    sget-object v2, Lcom/reyun/tracking/common/ReYunConst;->ry_sdk_version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "_istablet"

    invoke-static {p0}, Lcom/reyun/tracking/common/CommonUtil;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "table"

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_ryos"

    sget-object v2, Lcom/reyun/tracking/common/ReYunConst;->ry_sdk_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_imei"

    invoke-static {p0}, Lcom/reyun/tracking/common/CommonUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_lib"

    sget-object v2, Lcom/reyun/tracking/common/ReYunConst;->ry_sdk_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_tz"

    invoke-static {}, Lcom/reyun/tracking/common/CommonUtil;->getTimeZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_create_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0}, Lcom/reyun/tracking/common/DataContextUtil;->getInterval(Landroid/content/Context;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "_resolution"

    invoke-static {p0}, Lcom/reyun/tracking/common/CommonUtil;->getPhoneResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_androidid"

    invoke-static {p0}, Lcom/reyun/tracking/common/CommonUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_network_type"

    invoke-static {p0}, Lcom/reyun/tracking/common/CommonUtil;->getConnectType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_deviceid"

    invoke-static {p0}, Lcom/reyun/tracking/common/CommonUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_adid"

    invoke-static {}, Lcom/reyun/tracking/common/DataContextUtil;->getADID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_device_gps"

    invoke-static {p0}, Lcom/reyun/tracking/utils/ReYunLocationUtil;->getInstance(Landroid/content/Context;)Lcom/reyun/tracking/utils/ReYunLocationUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/reyun/tracking/utils/ReYunLocationUtil;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    :cond_0
    const-string v1, "phone"

    goto :goto_0
.end method

.method public static getADID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/common/DataContextUtil;->sADID:Ljava/lang/String;

    return-object v0
.end method

.method private static getInterval(Landroid/content/Context;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-string v2, "tracking_interval"

    const-string v3, "interval"

    invoke-static {p0, v2, v3, v0, v1}, Lcom/reyun/tracking/utils/Mysp;->GetLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/reyun/tracking/common/DataContextUtil;->sMacAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/reyun/tracking/common/CommonUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/reyun/tracking/common/DataContextUtil;->sMacAddress:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/reyun/tracking/common/CommonUtil;->getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/reyun/tracking/common/DataContextUtil;->sMacAddress:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/reyun/tracking/common/DataContextUtil;->sMacAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/reyun/tracking/common/CommonUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/reyun/tracking/common/DataContextUtil;->sMacAddress:Ljava/lang/String;

    const-string v1, "02:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/reyun/tracking/common/DataContextUtil;->sMacAddress:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/reyun/tracking/common/CommonUtil;->getLocalMacAddressForAndroid6()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/reyun/tracking/common/DataContextUtil;->sMacAddress:Ljava/lang/String;

    :cond_3
    sget-object v0, Lcom/reyun/tracking/common/DataContextUtil;->sMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static putMacAddress2Json(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 4

    const-string v2, "context"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v2, "_mac"

    invoke-static {p1}, Lcom/reyun/tracking/common/DataContextUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static putTimeStamp2Json(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 8

    const-string v2, "context"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v2, "_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p1}, Lcom/reyun/tracking/common/DataContextUtil;->getInterval(Landroid/content/Context;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setADID(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/reyun/tracking/common/DataContextUtil;->sADID:Ljava/lang/String;

    return-void
.end method
