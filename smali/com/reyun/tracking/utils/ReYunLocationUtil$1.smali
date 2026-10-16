.class Lcom/reyun/tracking/utils/ReYunLocationUtil$1;
.super Ljava/lang/Object;
.source "ReYunLocationUtil.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reyun/tracking/utils/ReYunLocationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reyun/tracking/utils/ReYunLocationUtil;


# direct methods
.method constructor <init>(Lcom/reyun/tracking/utils/ReYunLocationUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil$1;->this$0:Lcom/reyun/tracking/utils/ReYunLocationUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil$1;->this$0:Lcom/reyun/tracking/utils/ReYunLocationUtil;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/reyun/tracking/utils/ReYunLocationUtil;->access$002(Lcom/reyun/tracking/utils/ReYunLocationUtil;D)D

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil$1;->this$0:Lcom/reyun/tracking/utils/ReYunLocationUtil;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/reyun/tracking/utils/ReYunLocationUtil;->access$102(Lcom/reyun/tracking/utils/ReYunLocationUtil;D)D

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil$1;->this$0:Lcom/reyun/tracking/utils/ReYunLocationUtil;

    invoke-static {v0}, Lcom/reyun/tracking/utils/ReYunLocationUtil;->access$200(Lcom/reyun/tracking/utils/ReYunLocationUtil;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "gpsxml"

    const-string v2, "lat"

    iget-object v3, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil$1;->this$0:Lcom/reyun/tracking/utils/ReYunLocationUtil;

    invoke-static {v3}, Lcom/reyun/tracking/utils/ReYunLocationUtil;->access$000(Lcom/reyun/tracking/utils/ReYunLocationUtil;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/reyun/tracking/utils/Mysp;->AddString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil$1;->this$0:Lcom/reyun/tracking/utils/ReYunLocationUtil;

    invoke-static {v0}, Lcom/reyun/tracking/utils/ReYunLocationUtil;->access$200(Lcom/reyun/tracking/utils/ReYunLocationUtil;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "gpsxml"

    const-string v2, "lon"

    iget-object v3, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil$1;->this$0:Lcom/reyun/tracking/utils/ReYunLocationUtil;

    invoke-static {v3}, Lcom/reyun/tracking/utils/ReYunLocationUtil;->access$100(Lcom/reyun/tracking/utils/ReYunLocationUtil;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/reyun/tracking/utils/Mysp;->AddString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const-class v0, Lcom/reyun/tracking/utils/ReYunLocationUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get gps location!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil$1;->this$0:Lcom/reyun/tracking/utils/ReYunLocationUtil;

    invoke-static {v2}, Lcom/reyun/tracking/utils/ReYunLocationUtil;->access$000(Lcom/reyun/tracking/utils/ReYunLocationUtil;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil$1;->this$0:Lcom/reyun/tracking/utils/ReYunLocationUtil;

    invoke-static {v2}, Lcom/reyun/tracking/utils/ReYunLocationUtil;->access$100(Lcom/reyun/tracking/utils/ReYunLocationUtil;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/reyun/tracking/common/CommonUtil;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil$1;->this$0:Lcom/reyun/tracking/utils/ReYunLocationUtil;

    invoke-static {v0}, Lcom/reyun/tracking/utils/ReYunLocationUtil;->access$300(Lcom/reyun/tracking/utils/ReYunLocationUtil;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil$1;->this$0:Lcom/reyun/tracking/utils/ReYunLocationUtil;

    invoke-static {v0}, Lcom/reyun/tracking/utils/ReYunLocationUtil;->access$300(Lcom/reyun/tracking/utils/ReYunLocationUtil;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil$1;->this$0:Lcom/reyun/tracking/utils/ReYunLocationUtil;

    invoke-virtual {v0}, Lcom/reyun/tracking/utils/ReYunLocationUtil;->requestUpdateLocationOnce()V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
