.class public Lcom/hypergryph/sdk/utils/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# static fields
.field private static m_baseTime:J

.field private static m_startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/hypergryph/sdk/utils/TimeUtil;->m_baseTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SyncBaseTime(J)V
    .locals 2
    .param p0, "timestamp"    # J

    .prologue
    .line 9
    sput-wide p0, Lcom/hypergryph/sdk/utils/TimeUtil;->m_baseTime:J

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/hypergryph/sdk/utils/TimeUtil;->m_startTime:J

    .line 11
    return-void
.end method

.method public static declared-synchronized currentTimeMillis()J
    .locals 4

    .prologue
    .line 22
    const-class v0, Lcom/hypergryph/sdk/utils/TimeUtil;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static timestamp()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    .line 14
    sget-wide v2, Lcom/hypergryph/sdk/utils/TimeUtil;->m_baseTime:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v8

    .line 18
    .local v0, "secDelta":J
    :goto_0
    return-wide v2

    .line 17
    .end local v0    # "secDelta":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/hypergryph/sdk/utils/TimeUtil;->m_startTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v8

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 18
    .restart local v0    # "secDelta":J
    sget-wide v2, Lcom/hypergryph/sdk/utils/TimeUtil;->m_baseTime:J

    add-long/2addr v2, v0

    goto :goto_0
.end method
