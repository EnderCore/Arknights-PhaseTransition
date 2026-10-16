.class Lorg/windning/safearea/HwDeviceManagerImpl;
.super Ljava/lang/Object;
.source "HwDeviceManagerImpl.java"

# interfaces
.implements Lorg/windning/safearea/IDeviceManager;


# static fields
.field private static final HW_FLAG_NOTCH_SUPPORT:I = 0x10000


# instance fields
.field private m_getNotchSize:Ljava/lang/reflect/Method;

.field private m_hasNotchInScreen:Ljava/lang/reflect/Method;

.field private m_hwNotchSizeUtil:Ljava/lang/Class;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSafeRect(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v3, 0x0

    const/4 v8, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/windning/safearea/HwDeviceManagerImpl;->m_hwNotchSizeUtil:Ljava/lang/Class;

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lorg/windning/safearea/HwDeviceManagerImpl;->m_hwNotchSizeUtil:Ljava/lang/Class;

    :cond_1
    iget-object v3, p0, Lorg/windning/safearea/HwDeviceManagerImpl;->m_getNotchSize:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/windning/safearea/HwDeviceManagerImpl;->m_hwNotchSizeUtil:Ljava/lang/Class;

    const-string v4, "getNotchSize"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lorg/windning/safearea/HwDeviceManagerImpl;->m_getNotchSize:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v3, p0, Lorg/windning/safearea/HwDeviceManagerImpl;->m_getNotchSize:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x1

    aget v5, v2, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public initWindowLayout(Landroid/app/Activity;Z)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "hwFlags"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    if-eqz p2, :cond_0

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isNotch(Landroid/app/Activity;)Z
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/windning/safearea/HwDeviceManagerImpl;->m_hwNotchSizeUtil:Ljava/lang/Class;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v3, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/windning/safearea/HwDeviceManagerImpl;->m_hwNotchSizeUtil:Ljava/lang/Class;

    :cond_1
    iget-object v1, p0, Lorg/windning/safearea/HwDeviceManagerImpl;->m_hasNotchInScreen:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/windning/safearea/HwDeviceManagerImpl;->m_hwNotchSizeUtil:Ljava/lang/Class;

    const-string v3, "hasNotchInScreen"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/windning/safearea/HwDeviceManagerImpl;->m_hasNotchInScreen:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v1, p0, Lorg/windning/safearea/HwDeviceManagerImpl;->m_hasNotchInScreen:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, v2

    goto :goto_0
.end method
