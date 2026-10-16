.class public Lcom/u8/sdk/U8PayResult;
.super Ljava/lang/Object;
.source "U8PayResult.java"


# static fields
.field public static final STATUS_PENDING:I = 0x1

.field public static final STATUS_SUCCEED:I


# instance fields
.field public outTradeNo:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "status"

    iget v4, p0, Lcom/u8/sdk/U8PayResult;->status:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "outTradeNo"

    iget-object v4, p0, Lcom/u8/sdk/U8PayResult;->outTradeNo:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :catch_0
    move-exception v0

    :goto_2
    const-string v3, "U8PayResult"

    invoke-static {v0}, Lcom/u8/sdk/CommonUtil;->parseExceptionInfo(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v3, ""

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method
