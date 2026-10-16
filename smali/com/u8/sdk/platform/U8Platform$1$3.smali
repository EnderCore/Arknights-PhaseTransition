.class Lcom/u8/sdk/platform/U8Platform$1$3;
.super Ljava/lang/Object;
.source "U8Platform.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/platform/U8Platform$1;->onSwitchAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/u8/sdk/platform/U8Platform$1;


# direct methods
.method constructor <init>(Lcom/u8/sdk/platform/U8Platform$1;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/platform/U8Platform$1$3;->this$1:Lcom/u8/sdk/platform/U8Platform$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/platform/U8Platform$1$3;->this$1:Lcom/u8/sdk/platform/U8Platform$1;

    iget-object v0, v0, Lcom/u8/sdk/platform/U8Platform$1;->val$callback:Lcom/u8/sdk/platform/U8InitListener;

    invoke-interface {v0}, Lcom/u8/sdk/platform/U8InitListener;->onLogout()V

    return-void
.end method
