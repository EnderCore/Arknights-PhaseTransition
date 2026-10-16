.class public Lcom/reyun/tracking/utils/ReYunHttp;
.super Ljava/lang/Object;
.source "ReYunHttp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;,
        Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;,
        Lcom/reyun/tracking/utils/ReYunHttp$GetRunnable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/reyun/tracking/utils/ReYunHttp$GetRunnable;

    invoke-direct {v0, p0, p1}, Lcom/reyun/tracking/utils/ReYunHttp$GetRunnable;-><init>(Ljava/lang/String;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;)V

    return-object v0
.end method

.method public static postJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;

    invoke-direct {v0, p1, p2, p3}, Lcom/reyun/tracking/utils/ReYunHttp$PostRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;)V

    return-object v0
.end method

.method public static postJson(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;)Ljava/lang/Runnable;
    .locals 1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/reyun/tracking/utils/ReYunHttp;->postJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/reyun/tracking/utils/ReYunHttp$IReYunHttpListener;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
