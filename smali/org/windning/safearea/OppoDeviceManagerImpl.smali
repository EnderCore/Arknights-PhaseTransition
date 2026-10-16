.class Lorg/windning/safearea/OppoDeviceManagerImpl;
.super Ljava/lang/Object;
.source "OppoDeviceManagerImpl.java"

# interfaces
.implements Lorg/windning/safearea/IDeviceManager;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSafeRect(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v1, 0x50

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v1, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public initWindowLayout(Landroid/app/Activity;Z)V
    .locals 0

    invoke-static {p1, p2}, Lorg/windning/safearea/SafeAreaUtils;->initWindowLayoutVivoAndOppo(Landroid/app/Activity;Z)V

    return-void
.end method

.method public isNotch(Landroid/app/Activity;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method
