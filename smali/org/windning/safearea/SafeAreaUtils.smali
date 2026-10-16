.class Lorg/windning/safearea/SafeAreaUtils;
.super Ljava/lang/Object;
.source "SafeAreaUtils.java"


# static fields
.field private static final DEFAULT_ROUND_CORNER_PADDING:I = 0x50

.field private static final DEFAULT_ROUND_CORNER_RATIO:F = 1.8f


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckIfLandscape(Landroid/content/Context;)Z
    .locals 5

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v3

    :pswitch_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static initWindowLayoutVivoAndOppo(Landroid/app/Activity;Z)V
    .locals 5

    const/high16 v4, 0x4000000

    const/16 v3, 0x400

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v2, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz p1, :cond_2

    or-int/lit16 v1, v1, 0x400

    or-int/lit16 v1, v1, 0x100

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    :cond_2
    and-int/lit16 v1, v1, -0x401

    and-int/lit16 v1, v1, -0x101

    goto :goto_2
.end method

.method private static legacy_ProtectRoundCorner(Landroid/graphics/Rect;Landroid/app/Activity;Ljava/util/ArrayList;)Landroid/graphics/Rect;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eqz v7, :cond_1

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eqz v7, :cond_1

    const/4 v6, 0x0

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v7, v8, :cond_4

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    div-float v6, v7, v8

    :goto_1
    const v7, 0x3fe66666    # 1.8f

    cmpg-float v7, v6, v7

    if-ltz v7, :cond_1

    if-eqz p2, :cond_5

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v3, v0, :cond_5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    div-float v6, v7, v8

    goto :goto_1

    :cond_5
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v7, p0, Landroid/graphics/Rect;->top:I

    iget v8, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v8, 0x50

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    iput v7, v5, Landroid/graphics/Rect;->top:I

    move-object p0, v5

    goto :goto_0
.end method

.method public static normalizeScreenRect(Landroid/graphics/Rect;Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 6

    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    invoke-static {p1}, Lorg/windning/safearea/SafeAreaUtils;->CheckIfLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/graphics/Rect;->left:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p0, v1

    goto :goto_0
.end method
