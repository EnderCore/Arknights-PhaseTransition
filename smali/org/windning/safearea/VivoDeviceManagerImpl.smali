.class Lorg/windning/safearea/VivoDeviceManagerImpl;
.super Ljava/lang/Object;
.source "VivoDeviceManagerImpl.java"

# interfaces
.implements Lorg/windning/safearea/IDeviceManager;


# static fields
.field private static final VIVO_HAS_NOTCH_DISPLAY:I = 0x20


# instance fields
.field private m_fitFeature:Ljava/lang/Class;

.field private m_getFeatureSupport:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isNotchScreen(Landroid/content/Context;)Z
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/windning/safearea/VivoDeviceManagerImpl;->m_fitFeature:Ljava/lang/Class;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v3, "android.util.FtFeature"

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/windning/safearea/VivoDeviceManagerImpl;->m_fitFeature:Ljava/lang/Class;

    :cond_0
    iget-object v1, p0, Lorg/windning/safearea/VivoDeviceManagerImpl;->m_getFeatureSupport:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/windning/safearea/VivoDeviceManagerImpl;->m_fitFeature:Ljava/lang/Class;

    const-string v3, "isFeatureSupport"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/windning/safearea/VivoDeviceManagerImpl;->m_getFeatureSupport:Ljava/lang/reflect/Method;

    :cond_1
    iget-object v1, p0, Lorg/windning/safearea/VivoDeviceManagerImpl;->m_getFeatureSupport:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lorg/windning/safearea/VivoDeviceManagerImpl;->m_getFeatureSupport:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lorg/windning/safearea/VivoDeviceManagerImpl;->m_fitFeature:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    move v1, v2

    goto :goto_0
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
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/windning/safearea/VivoDeviceManagerImpl;->isNotchScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    const/high16 v3, 0x41d80000    # 27.0f

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v1, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public initWindowLayout(Landroid/app/Activity;Z)V
    .locals 0

    return-void
.end method

.method public isNotch(Landroid/app/Activity;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/windning/safearea/VivoDeviceManagerImpl;->isNotchScreen(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
