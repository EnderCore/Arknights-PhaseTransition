.class Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;
.super Ljava/lang/Object;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hypergryph/sdk/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkResult"
.end annotation


# instance fields
.field public body:Ljava/lang/String;

.field public errorInfo:Ljava/lang/String;

.field public isSucceed:Z

.field public isTimeout:Z

.field final synthetic this$0:Lcom/hypergryph/sdk/activity/BaseActivity;


# direct methods
.method private constructor <init>(Lcom/hypergryph/sdk/activity/BaseActivity;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;->this$0:Lcom/hypergryph/sdk/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hypergryph/sdk/activity/BaseActivity;Lcom/hypergryph/sdk/activity/BaseActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hypergryph/sdk/activity/BaseActivity;
    .param p2, "x1"    # Lcom/hypergryph/sdk/activity/BaseActivity$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/hypergryph/sdk/activity/BaseActivity$NetworkResult;-><init>(Lcom/hypergryph/sdk/activity/BaseActivity;)V

    return-void
.end method
