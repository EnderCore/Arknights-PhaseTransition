.class public Lcom/reyun/tracking/utils/TrackingHttpListener;
.super Ljava/lang/Object;
.source "TrackingHttpListener.java"

# interfaces
.implements Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Tracking"


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mid:J

.field private mwhat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mid:J

    iput-object p2, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mwhat:Ljava/lang/String;

    iput-wide p3, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mid:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mid:J

    iput-object p2, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mwhat:Ljava/lang/String;

    iput-wide p3, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mid:J

    iput-object p5, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mAppKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-static {v1, v2}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->getInstance(Landroid/content/Context;Lcom/reyun/tracking/common/ReYunConst$BusinessType;)Lcom/reyun/tracking/utils/ReYunDatabaseUtil;

    move-result-object v0

    iget-wide v2, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->updateStatusById(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mwhat:Ljava/lang/String;

    invoke-static {v1}, Lcom/reyun/tracking/common/CommonUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Tracking"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "********Request FAILED******** event["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mwhat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/reyun/tracking/common/CommonUtil;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 6

    iget-object v1, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mwhat:Ljava/lang/String;

    invoke-static {v1}, Lcom/reyun/tracking/common/CommonUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "GetTime"

    iget-object v2, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mwhat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mContext:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/reyun/tracking/utils/AppUtil;->GetTime(Lorg/json/JSONObject;Landroid/content/Context;)V

    :cond_0
    :goto_0
    const-string v1, "Tracking"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========Request SUCCESS======== event["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mwhat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/reyun/tracking/common/CommonUtil;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/reyun/tracking/common/ReYunConst$BusinessType;->Tracking:Lcom/reyun/tracking/common/ReYunConst$BusinessType;

    invoke-static {v1, v2}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->getInstance(Landroid/content/Context;Lcom/reyun/tracking/common/ReYunConst$BusinessType;)Lcom/reyun/tracking/utils/ReYunDatabaseUtil;

    move-result-object v0

    iget-wide v2, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/reyun/tracking/utils/ReYunDatabaseUtil;->deleteFromById(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v1, "install"

    iget-object v2, p0, Lcom/reyun/tracking/utils/TrackingHttpListener;->mwhat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
