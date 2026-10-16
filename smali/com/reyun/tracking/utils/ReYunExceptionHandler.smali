.class public Lcom/reyun/tracking/utils/ReYunExceptionHandler;
.super Ljava/lang/Object;
.source "ReYunExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reyun/tracking/utils/ReYunExceptionHandler$UncaughtExceptionListener;
    }
.end annotation


# static fields
.field private static mHandler:Lcom/reyun/tracking/utils/ReYunExceptionHandler;


# instance fields
.field private exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/reyun/tracking/utils/ReYunExceptionHandler$UncaughtExceptionListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/reyun/tracking/utils/ReYunExceptionHandler;->extra:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/reyun/tracking/utils/ReYunExceptionHandler;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static createExceptionHandler(Lcom/reyun/tracking/utils/ReYunExceptionHandler$UncaughtExceptionListener;)V
    .locals 1

    sget-object v0, Lcom/reyun/tracking/utils/ReYunExceptionHandler;->mHandler:Lcom/reyun/tracking/utils/ReYunExceptionHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/reyun/tracking/utils/ReYunExceptionHandler;

    invoke-direct {v0}, Lcom/reyun/tracking/utils/ReYunExceptionHandler;-><init>()V

    sput-object v0, Lcom/reyun/tracking/utils/ReYunExceptionHandler;->mHandler:Lcom/reyun/tracking/utils/ReYunExceptionHandler;

    :cond_0
    sget-object v0, Lcom/reyun/tracking/utils/ReYunExceptionHandler;->mHandler:Lcom/reyun/tracking/utils/ReYunExceptionHandler;

    iput-object p0, v0, Lcom/reyun/tracking/utils/ReYunExceptionHandler;->mListener:Lcom/reyun/tracking/utils/ReYunExceptionHandler$UncaughtExceptionListener;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    iget-object v3, p0, Lcom/reyun/tracking/utils/ReYunExceptionHandler;->extra:Ljava/util/Map;

    const-string v4, "reason"

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/reyun/tracking/utils/ReYunExceptionHandler;->extra:Ljava/util/Map;

    const-string v4, "callstack"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/reyun/tracking/utils/ReYunExceptionHandler;->mListener:Lcom/reyun/tracking/utils/ReYunExceptionHandler$UncaughtExceptionListener;

    iget-object v4, p0, Lcom/reyun/tracking/utils/ReYunExceptionHandler;->extra:Ljava/util/Map;

    invoke-interface {v3, v4}, Lcom/reyun/tracking/utils/ReYunExceptionHandler$UncaughtExceptionListener;->onUncaughtException(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/reyun/tracking/utils/ReYunExceptionHandler;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v3, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
