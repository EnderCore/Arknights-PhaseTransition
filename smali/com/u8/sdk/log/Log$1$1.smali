.class Lcom/u8/sdk/log/Log$1$1;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/log/Log$1;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/log/Log$1;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/u8/sdk/log/Log$1;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/log/Log$1$1;->this$0:Lcom/u8/sdk/log/Log$1;

    iput-object p2, p0, Lcom/u8/sdk/log/Log$1$1;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    const-string v2, "U8SDK"

    const-string v3, "Application Crashed!!!"

    invoke-static {v2, v3}, Lcom/u8/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/u8/sdk/log/Log$1$1;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/u8/sdk/log/Log;->access$000()Lcom/u8/sdk/log/Log;

    move-result-object v2

    invoke-static {v2}, Lcom/u8/sdk/log/Log;->access$100(Lcom/u8/sdk/log/Log;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/u8/sdk/log/URemoteLogPrinter;

    invoke-direct {v1}, Lcom/u8/sdk/log/URemoteLogPrinter;-><init>()V

    invoke-static {}, Lcom/u8/sdk/log/Log;->access$000()Lcom/u8/sdk/log/Log;

    move-result-object v2

    invoke-static {v2}, Lcom/u8/sdk/log/Log;->access$200(Lcom/u8/sdk/log/Log;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/u8/sdk/log/ULog;

    const-string v4, "ERROR"

    const-string v5, "Crash"

    const-string v6, "Application Crashed!!!"

    iget-object v7, p0, Lcom/u8/sdk/log/Log$1$1;->val$e:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/u8/sdk/log/ULog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2, v3}, Lcom/u8/sdk/log/URemoteLogPrinter;->printImmediate(Ljava/lang/String;Lcom/u8/sdk/log/ULog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    throw v2
.end method
