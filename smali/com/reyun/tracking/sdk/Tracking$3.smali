.class final Lcom/reyun/tracking/sdk/Tracking$3;
.super Ljava/lang/Object;
.source "Tracking.java"

# interfaces
.implements Lcom/reyun/tracking/utils/ReYunExceptionHandler$UncaughtExceptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reyun/tracking/sdk/Tracking;->initWithKeyAndChannelId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUncaughtException(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exception"

    invoke-static {v0, p1}, Lcom/reyun/tracking/sdk/Tracking;->setEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
