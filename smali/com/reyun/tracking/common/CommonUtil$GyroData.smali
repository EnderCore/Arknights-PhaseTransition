.class Lcom/reyun/tracking/common/CommonUtil$GyroData;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reyun/tracking/common/CommonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GyroData"
.end annotation


# instance fields
.field private index:I

.field private mDataList:Lorg/json/JSONArray;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/reyun/tracking/common/CommonUtil$GyroData;->mDataList:Lorg/json/JSONArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/reyun/tracking/common/CommonUtil$GyroData;->index:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/reyun/tracking/common/CommonUtil$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/reyun/tracking/common/CommonUtil$GyroData;-><init>()V

    return-void
.end method


# virtual methods
.method public count(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v1, p0, Lcom/reyun/tracking/common/CommonUtil$GyroData;->mDataList:Lorg/json/JSONArray;

    iget v2, p0, Lcom/reyun/tracking/common/CommonUtil$GyroData;->index:I

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v0

    iget-object v1, p0, Lcom/reyun/tracking/common/CommonUtil$GyroData;->mDataList:Lorg/json/JSONArray;

    iget v2, p0, Lcom/reyun/tracking/common/CommonUtil$GyroData;->index:I

    add-int v3, v0, p1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    return-void
.end method

.method public getData()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/reyun/tracking/common/CommonUtil$GyroData;->mDataList:Lorg/json/JSONArray;

    return-object v0
.end method

.method public next()V
    .locals 1

    iget v0, p0, Lcom/reyun/tracking/common/CommonUtil$GyroData;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/reyun/tracking/common/CommonUtil$GyroData;->index:I

    return-void
.end method

.method public reset()V
    .locals 1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/reyun/tracking/common/CommonUtil$GyroData;->mDataList:Lorg/json/JSONArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/reyun/tracking/common/CommonUtil$GyroData;->index:I

    return-void
.end method
