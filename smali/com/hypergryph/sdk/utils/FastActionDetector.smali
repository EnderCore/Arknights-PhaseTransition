.class public Lcom/hypergryph/sdk/utils/FastActionDetector;
.super Ljava/lang/Object;
.source "FastActionDetector.java"


# static fields
.field private static final FAST_THRESHOLD:J = 0x1f4L

.field private static m_lastInvoke:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    const-wide/16 v0, -0x1f4

    sput-wide v0, Lcom/hypergryph/sdk/utils/FastActionDetector;->m_lastInvoke:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFastAction()Z
    .locals 6

    .prologue
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 12
    .local v0, "curTs":J
    sget-wide v4, Lcom/hypergryph/sdk/utils/FastActionDetector;->m_lastInvoke:J

    sub-long v2, v0, v4

    .line 13
    .local v2, "delta":J
    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 14
    const/4 v4, 0x1

    .line 17
    :goto_0
    return v4

    .line 16
    :cond_0
    sput-wide v0, Lcom/hypergryph/sdk/utils/FastActionDetector;->m_lastInvoke:J

    .line 17
    const/4 v4, 0x0

    goto :goto_0
.end method
