.class Lorg/windning/safearea/PDeviceManagerImpl;
.super Ljava/lang/Object;
.source "PDeviceManagerImpl.java"

# interfaces
.implements Lorg/windning/safearea/IDeviceManager;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private enableCutoutShortEdge(Landroid/app/Activity;Z)V
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    const/4 v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_0
.end method

.method private getWindowInsets(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 13
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    :try_start_0
    invoke-static {p1}, Lorg/windning/safearea/SafeAreaUtils;->CheckIfLandscape(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v1

    new-instance v7, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    if-eqz v5, :cond_1

    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v0, v6, Landroid/graphics/Rect;->right:I

    :goto_1
    if-nez v8, :cond_2

    iget v10, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v7, Landroid/graphics/Rect;->top:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v9, "PDeviceManagerImpl"

    const-string v10, "Display cutout not available"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_2
    return-object v7

    :cond_1
    :try_start_1
    iget v8, v6, Landroid/graphics/Rect;->top:I

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_2
    if-nez v0, :cond_0

    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    iget v9, v7, Landroid/graphics/Rect;->top:I

    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v7, Landroid/graphics/Rect;->bottom:I

    iput v9, v7, Landroid/graphics/Rect;->top:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public getSafeRect(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    invoke-direct {p0, p1}, Lorg/windning/safearea/PDeviceManagerImpl;->getWindowInsets(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public initWindowLayout(Landroid/app/Activity;Z)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/windning/safearea/PDeviceManagerImpl;->enableCutoutShortEdge(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method public isNotch(Landroid/app/Activity;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/windning/safearea/PDeviceManagerImpl;->getSafeRect(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
