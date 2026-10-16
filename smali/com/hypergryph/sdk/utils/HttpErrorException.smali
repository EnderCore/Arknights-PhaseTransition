.class public Lcom/hypergryph/sdk/utils/HttpErrorException;
.super Ljava/lang/Exception;
.source "HttpErrorException.java"


# instance fields
.field public code:I

.field public errorInfo:Ljava/lang/String;

.field public isTimeout:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
