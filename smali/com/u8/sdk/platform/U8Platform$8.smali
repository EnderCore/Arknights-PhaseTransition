.class Lcom/u8/sdk/platform/U8Platform$8;
.super Ljava/lang/Object;
.source "U8Platform.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/platform/U8Platform;->exitSDK(Lcom/u8/sdk/platform/U8ExitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/platform/U8Platform;

.field final synthetic val$callback:Lcom/u8/sdk/platform/U8ExitListener;


# direct methods
.method constructor <init>(Lcom/u8/sdk/platform/U8Platform;Lcom/u8/sdk/platform/U8ExitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/platform/U8Platform$8;->this$0:Lcom/u8/sdk/platform/U8Platform;

    iput-object p2, p0, Lcom/u8/sdk/platform/U8Platform$8;->val$callback:Lcom/u8/sdk/platform/U8ExitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/plugin/U8User;->exit()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/u8/sdk/platform/U8Platform$8;->val$callback:Lcom/u8/sdk/platform/U8ExitListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/platform/U8Platform$8;->val$callback:Lcom/u8/sdk/platform/U8ExitListener;

    invoke-interface {v0}, Lcom/u8/sdk/platform/U8ExitListener;->onGameExit()V

    goto :goto_0
.end method
