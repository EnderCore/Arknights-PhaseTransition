.class public Lcom/u8/sdk/log/URemoteLog;
.super Ljava/lang/Object;
.source "URemoteLog.java"

# interfaces
.implements Lcom/u8/sdk/log/ILog;


# instance fields
.field private printer:Lcom/u8/sdk/log/URemoteLogPrinter;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/u8/sdk/log/URemoteLogPrinter;

    invoke-direct {v0, p1, p2}, Lcom/u8/sdk/log/URemoteLogPrinter;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/u8/sdk/log/URemoteLog;->printer:Lcom/u8/sdk/log/URemoteLogPrinter;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/u8/sdk/log/URemoteLog;->printer:Lcom/u8/sdk/log/URemoteLogPrinter;

    new-instance v1, Lcom/u8/sdk/log/ULog;

    const-string v2, "DEBUG"

    invoke-direct {v1, v2, p1, p2}, Lcom/u8/sdk/log/ULog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/log/URemoteLogPrinter;->print(Lcom/u8/sdk/log/ULog;)V

    return-void
.end method

.method public destory()V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/log/URemoteLog;->printer:Lcom/u8/sdk/log/URemoteLogPrinter;

    invoke-virtual {v0}, Lcom/u8/sdk/log/URemoteLogPrinter;->stop()V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/u8/sdk/log/URemoteLog;->printer:Lcom/u8/sdk/log/URemoteLogPrinter;

    new-instance v1, Lcom/u8/sdk/log/ULog;

    const-string v2, "ERROR"

    invoke-direct {v1, v2, p1, p2}, Lcom/u8/sdk/log/ULog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/log/URemoteLogPrinter;->print(Lcom/u8/sdk/log/ULog;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/u8/sdk/log/URemoteLog;->printer:Lcom/u8/sdk/log/URemoteLogPrinter;

    new-instance v1, Lcom/u8/sdk/log/ULog;

    const-string v2, "ERROR"

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/u8/sdk/log/ULog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/log/URemoteLogPrinter;->print(Lcom/u8/sdk/log/ULog;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/u8/sdk/log/URemoteLog;->printer:Lcom/u8/sdk/log/URemoteLogPrinter;

    new-instance v1, Lcom/u8/sdk/log/ULog;

    const-string v2, "INFO"

    invoke-direct {v1, v2, p1, p2}, Lcom/u8/sdk/log/ULog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/log/URemoteLogPrinter;->print(Lcom/u8/sdk/log/ULog;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/u8/sdk/log/URemoteLog;->printer:Lcom/u8/sdk/log/URemoteLogPrinter;

    new-instance v1, Lcom/u8/sdk/log/ULog;

    const-string v2, "WARNING"

    invoke-direct {v1, v2, p1, p2}, Lcom/u8/sdk/log/ULog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/log/URemoteLogPrinter;->print(Lcom/u8/sdk/log/ULog;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/u8/sdk/log/URemoteLog;->printer:Lcom/u8/sdk/log/URemoteLogPrinter;

    new-instance v1, Lcom/u8/sdk/log/ULog;

    const-string v2, "WARNING"

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/u8/sdk/log/ULog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/log/URemoteLogPrinter;->print(Lcom/u8/sdk/log/ULog;)V

    return-void
.end method
