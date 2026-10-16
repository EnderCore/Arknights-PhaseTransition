.class Lcom/u8/sdk/platform/U8Platform$1$4;
.super Ljava/lang/Object;
.source "U8Platform.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/platform/U8Platform$1;->onAuthResult(Lcom/u8/sdk/verify/UToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/u8/sdk/platform/U8Platform$1;

.field final synthetic val$authResult:Lcom/u8/sdk/verify/UToken;


# direct methods
.method constructor <init>(Lcom/u8/sdk/platform/U8Platform$1;Lcom/u8/sdk/verify/UToken;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/platform/U8Platform$1$4;->this$1:Lcom/u8/sdk/platform/U8Platform$1;

    iput-object p2, p0, Lcom/u8/sdk/platform/U8Platform$1$4;->val$authResult:Lcom/u8/sdk/verify/UToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/u8/sdk/platform/U8Platform$1$4;->this$1:Lcom/u8/sdk/platform/U8Platform$1;

    iget-object v0, v0, Lcom/u8/sdk/platform/U8Platform$1;->this$0:Lcom/u8/sdk/platform/U8Platform;

    invoke-static {v0}, Lcom/u8/sdk/platform/U8Platform;->access$000(Lcom/u8/sdk/platform/U8Platform;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/u8/sdk/platform/U8Platform$1$4;->val$authResult:Lcom/u8/sdk/verify/UToken;

    invoke-virtual {v0}, Lcom/u8/sdk/verify/UToken;->isSuc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/platform/U8Platform$1$4;->this$1:Lcom/u8/sdk/platform/U8Platform$1;

    iget-object v0, v0, Lcom/u8/sdk/platform/U8Platform$1;->val$callback:Lcom/u8/sdk/platform/U8InitListener;

    iget-object v1, p0, Lcom/u8/sdk/platform/U8Platform$1$4;->val$authResult:Lcom/u8/sdk/verify/UToken;

    invoke-interface {v0, v1}, Lcom/u8/sdk/platform/U8InitListener;->onSwitchAccount(Lcom/u8/sdk/verify/UToken;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "U8SDK"

    const-string v1, "switch account auth failed."

    invoke-static {v0, v1}, Lcom/u8/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/u8/sdk/platform/U8Platform$1$4;->val$authResult:Lcom/u8/sdk/verify/UToken;

    invoke-virtual {v0}, Lcom/u8/sdk/verify/UToken;->isSuc()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/u8/sdk/platform/U8Platform$1$4;->this$1:Lcom/u8/sdk/platform/U8Platform$1;

    iget-object v0, v0, Lcom/u8/sdk/platform/U8Platform$1;->val$callback:Lcom/u8/sdk/platform/U8InitListener;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/u8/sdk/platform/U8InitListener;->onLoginResult(ILcom/u8/sdk/verify/UToken;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/u8/sdk/platform/U8Platform$1$4;->this$1:Lcom/u8/sdk/platform/U8Platform$1;

    iget-object v0, v0, Lcom/u8/sdk/platform/U8Platform$1;->val$callback:Lcom/u8/sdk/platform/U8InitListener;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/u8/sdk/platform/U8Platform$1$4;->val$authResult:Lcom/u8/sdk/verify/UToken;

    invoke-interface {v0, v1, v2}, Lcom/u8/sdk/platform/U8InitListener;->onLoginResult(ILcom/u8/sdk/verify/UToken;)V

    goto :goto_0
.end method
