.class public Lcom/tendcloud/tenddata/game/d;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/tendcloud/tenddata/game/ab;->A:Z

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p1, v0}, Lcom/tendcloud/tenddata/game/ai;->b(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/game/ab;->C:Z

    sput-boolean v0, Lcom/tendcloud/tenddata/game/ab;->A:Z

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->b:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p1, v0}, Lcom/tendcloud/tenddata/game/ai;->a(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/game/ab;->m:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
