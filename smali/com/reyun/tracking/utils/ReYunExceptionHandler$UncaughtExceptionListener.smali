.class public interface abstract Lcom/reyun/tracking/utils/ReYunExceptionHandler$UncaughtExceptionListener;
.super Ljava/lang/Object;
.source "ReYunExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reyun/tracking/utils/ReYunExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UncaughtExceptionListener"
.end annotation


# virtual methods
.method public abstract onUncaughtException(Ljava/util/Map;)V
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
.end method
