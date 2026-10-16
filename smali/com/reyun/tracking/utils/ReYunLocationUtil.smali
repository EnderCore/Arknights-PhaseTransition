.class public Lcom/reyun/tracking/utils/ReYunLocationUtil;
.super Ljava/lang/Object;
.source "ReYunLocationUtil.java"


# static fields
.field private static sInstance:Lcom/reyun/tracking/utils/ReYunLocationUtil;


# instance fields
.field private final KEY_LAT:Ljava/lang/String;

.field private final KEY_LON:Ljava/lang/String;

.field private final XML_NAME:Ljava/lang/String;

.field private locationListener:Landroid/location/LocationListener;

.field private mContext:Landroid/content/Context;

.field private mLatitude:D

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLongitude:D

.field private mProvider:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, "gpsxml"

    iput-object v3, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->XML_NAME:Ljava/lang/String;

    const-string v3, "lat"

    iput-object v3, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->KEY_LAT:Ljava/lang/String;

    const-string v3, "lon"

    iput-object v3, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->KEY_LON:Ljava/lang/String;

    new-instance v3, Lcom/reyun/tracking/utils/ReYunLocationUtil$1;

    invoke-direct {v3, p0}, Lcom/reyun/tracking/utils/ReYunLocationUtil$1;-><init>(Lcom/reyun/tracking/utils/ReYunLocationUtil;)V

    iput-object v3, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->locationListener:Landroid/location/LocationListener;

    iput-object p1, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v3}, Lcom/reyun/tracking/common/CommonUtil;->checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "gps"

    iput-object v3, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mProvider:Ljava/lang/String;

    :cond_0
    :goto_0
    const-string v3, "gpsxml"

    const-string v4, "lat"

    invoke-static {p1, v3, v4}, Lcom/reyun/tracking/utils/Mysp;->GetString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "_default_"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-wide v6, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLatitude:D

    :goto_1
    const-string v3, "gpsxml"

    const-string v4, "lon"

    invoke-static {p1, v3, v4}, Lcom/reyun/tracking/utils/Mysp;->GetString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_default_"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-wide v6, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLongitude:D

    :goto_2
    return-void

    :cond_1
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v3}, Lcom/reyun/tracking/common/CommonUtil;->checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "network"

    iput-object v3, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mProvider:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLatitude:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iput-wide v6, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLatitude:D

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLongitude:D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    iput-wide v6, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLongitude:D

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/reyun/tracking/utils/ReYunLocationUtil;)D
    .locals 2

    iget-wide v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLatitude:D

    return-wide v0
.end method

.method static synthetic access$002(Lcom/reyun/tracking/utils/ReYunLocationUtil;D)D
    .locals 1

    iput-wide p1, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLatitude:D

    return-wide p1
.end method

.method static synthetic access$100(Lcom/reyun/tracking/utils/ReYunLocationUtil;)D
    .locals 2

    iget-wide v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLongitude:D

    return-wide v0
.end method

.method static synthetic access$102(Lcom/reyun/tracking/utils/ReYunLocationUtil;D)D
    .locals 1

    iput-wide p1, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLongitude:D

    return-wide p1
.end method

.method static synthetic access$200(Lcom/reyun/tracking/utils/ReYunLocationUtil;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/reyun/tracking/utils/ReYunLocationUtil;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/reyun/tracking/utils/ReYunLocationUtil;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->sInstance:Lcom/reyun/tracking/utils/ReYunLocationUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/reyun/tracking/utils/ReYunLocationUtil;

    invoke-direct {v0, p0}, Lcom/reyun/tracking/utils/ReYunLocationUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->sInstance:Lcom/reyun/tracking/utils/ReYunLocationUtil;

    :cond_0
    sget-object v0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->sInstance:Lcom/reyun/tracking/utils/ReYunLocationUtil;

    return-object v0
.end method


# virtual methods
.method public getmLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLatitude:D

    return-wide v0
.end method

.method public getmLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLongitude:D

    return-wide v0
.end method

.method public requestUpdateLocationOnce()V
    .locals 8

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mProvider:Ljava/lang/String;

    if-nez v0, :cond_0

    const-class v0, Lcom/reyun/tracking/utils/ReYunLocationUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Need gps permission!"

    invoke-static {v0, v1}, Lcom/reyun/tracking/common/CommonUtil;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLatitude:D

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLongitude:D

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mContext:Landroid/content/Context;

    const-string v1, "gpsxml"

    const-string v2, "lat"

    iget-wide v4, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLatitude:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/reyun/tracking/utils/Mysp;->AddString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mContext:Landroid/content/Context;

    const-string v1, "gpsxml"

    const-string v2, "lon"

    iget-wide v4, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLongitude:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/reyun/tracking/utils/Mysp;->AddString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-class v0, Lcom/reyun/tracking/utils/ReYunLocationUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get deivce gps failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/reyun/tracking/common/CommonUtil;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-class v0, Lcom/reyun/tracking/utils/ReYunLocationUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Get deivce gps failed!"

    invoke-static {v0, v1}, Lcom/reyun/tracking/common/CommonUtil;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mProvider:Ljava/lang/String;

    const-wide/16 v2, 0x64

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLatitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLongitude:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLatitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/reyun/tracking/utils/ReYunLocationUtil;->mLongitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
