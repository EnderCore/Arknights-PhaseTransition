.class Lorg/windning/safearea/DefaultDeviceManagerImpl;
.super Ljava/lang/Object;
.source "DefaultDeviceManagerImpl.java"

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
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public initWindowLayout(Landroid/app/Activity;Z)V
    .locals 0

    return-void
.end method

.method public isNotch(Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
