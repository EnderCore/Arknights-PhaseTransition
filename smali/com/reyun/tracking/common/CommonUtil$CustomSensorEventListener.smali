.class Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;
.super Ljava/lang/Object;
.source "CommonUtil.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reyun/tracking/common/CommonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomSensorEventListener"
.end annotation


# static fields
.field private static final SAMPLE_INTERVAL:J = 0xea60L

.field private static final SAMPLE_INTERVAL2:J = 0x3e8L

.field private static final SAMPLE_THRESHOLD:F = 0.004f

.field private static final UPLOAD_INTERVAL:J = 0x493e0L


# instance fields
.field private mCurrentMillis:J

.field private mCurrentMillis2:J

.field private mGyroData:Lcom/reyun/tracking/common/CommonUtil$GyroData;

.field private mLastValue0:F

.field private mLastValue1:F

.field private mLastValue2:F

.field private mUploadMillis:J


# direct methods
.method private constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mCurrentMillis:J

    iput-wide v0, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mCurrentMillis2:J

    iput-wide v0, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mUploadMillis:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/reyun/tracking/common/CommonUtil$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->sendData()V

    return-void
.end method

.method private sendData()V
    .locals 8

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v3, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mGyroData:Lcom/reyun/tracking/common/CommonUtil$GyroData;

    if-nez v3, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "gyroStartTime"

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mUploadMillis:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "gyroEndTime"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "gyroData"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "gyroDataEvent"

    invoke-static {v3, v1}, Lcom/reyun/tracking/sdk/Tracking;->setEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mGyroData:Lcom/reyun/tracking/common/CommonUtil$GyroData;

    invoke-virtual {v3}, Lcom/reyun/tracking/common/CommonUtil$GyroData;->getData()Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3

    const-string v0, "Sensor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccuracyChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    const-wide/16 v4, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-wide v2, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mCurrentMillis:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mCurrentMillis:J

    :cond_0
    iget-wide v2, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mUploadMillis:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mUploadMillis:J

    :cond_1
    iget-wide v2, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mCurrentMillis2:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mCurrentMillis2:J

    :cond_2
    iget-object v1, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mGyroData:Lcom/reyun/tracking/common/CommonUtil$GyroData;

    if-nez v1, :cond_3

    new-instance v1, Lcom/reyun/tracking/common/CommonUtil$GyroData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/reyun/tracking/common/CommonUtil$GyroData;-><init>(Lcom/reyun/tracking/common/CommonUtil$1;)V

    iput-object v1, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mGyroData:Lcom/reyun/tracking/common/CommonUtil$GyroData;

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mCurrentMillis2:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_6

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mCurrentMillis:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v1, v2, v4

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mGyroData:Lcom/reyun/tracking/common/CommonUtil$GyroData;

    invoke-virtual {v1}, Lcom/reyun/tracking/common/CommonUtil$GyroData;->next()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mCurrentMillis:J

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mUploadMillis:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_5

    invoke-direct {p0}, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->sendData()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mUploadMillis:J

    iget-object v1, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mGyroData:Lcom/reyun/tracking/common/CommonUtil$GyroData;

    invoke-virtual {v1}, Lcom/reyun/tracking/common/CommonUtil$GyroData;->reset()V

    :cond_5
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    iput v1, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mLastValue0:F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    iput v1, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mLastValue1:F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    iput v1, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mLastValue2:F

    return-void

    :cond_6
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float v0, v1, v2

    const v1, 0x3b83126f    # 0.004f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_8

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    iget v2, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mLastValue0:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_7

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    iget v2, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mLastValue1:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_7

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    iget v2, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mLastValue2:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_7

    :try_start_0
    iget-object v1, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mGyroData:Lcom/reyun/tracking/common/CommonUtil$GyroData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/reyun/tracking/common/CommonUtil$GyroData;->count(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mCurrentMillis2:J

    goto/16 :goto_0

    :cond_7
    :try_start_1
    iget-object v1, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mGyroData:Lcom/reyun/tracking/common/CommonUtil$GyroData;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/reyun/tracking/common/CommonUtil$GyroData;->count(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_8
    :try_start_2
    iget-object v1, p0, Lcom/reyun/tracking/common/CommonUtil$CustomSensorEventListener;->mGyroData:Lcom/reyun/tracking/common/CommonUtil$GyroData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/reyun/tracking/common/CommonUtil$GyroData;->count(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method
