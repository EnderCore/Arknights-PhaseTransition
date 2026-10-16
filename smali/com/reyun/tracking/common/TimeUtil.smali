.class public Lcom/reyun/tracking/common/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# instance fields
.field private mRecordTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/reyun/tracking/common/TimeUtil;->reset()V

    return-void
.end method

.method public static create()Lcom/reyun/tracking/common/TimeUtil;
    .locals 1

    new-instance v0, Lcom/reyun/tracking/common/TimeUtil;

    invoke-direct {v0}, Lcom/reyun/tracking/common/TimeUtil;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getDurationSeconds()F
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/reyun/tracking/common/TimeUtil;->mRecordTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public reset()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/reyun/tracking/common/TimeUtil;->mRecordTime:J

    return-void
.end method
