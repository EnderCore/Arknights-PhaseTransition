.class Lcom/u8/sdk/platform/U8Platform$1$1;
.super Ljava/lang/Object;
.source "U8Platform.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/platform/U8Platform$1;->onResult(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/u8/sdk/platform/U8Platform$1;

.field final synthetic val$code:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/u8/sdk/platform/U8Platform$1;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->this$1:Lcom/u8/sdk/platform/U8Platform$1;

    iput p2, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->val$code:I

    iput-object p3, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->val$code:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->this$1:Lcom/u8/sdk/platform/U8Platform$1;

    iget-object v0, v0, Lcom/u8/sdk/platform/U8Platform$1;->val$callback:Lcom/u8/sdk/platform/U8InitListener;

    iget v1, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->val$code:I

    iget-object v2, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/u8/sdk/platform/U8InitListener;->onResult(ILjava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->this$1:Lcom/u8/sdk/platform/U8Platform$1;

    iget-object v0, v0, Lcom/u8/sdk/platform/U8Platform$1;->val$callback:Lcom/u8/sdk/platform/U8InitListener;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/u8/sdk/platform/U8InitListener;->onInitResult(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->this$1:Lcom/u8/sdk/platform/U8Platform$1;

    iget-object v0, v0, Lcom/u8/sdk/platform/U8Platform$1;->val$callback:Lcom/u8/sdk/platform/U8InitListener;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/u8/sdk/platform/U8InitListener;->onInitResult(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->this$1:Lcom/u8/sdk/platform/U8Platform$1;

    iget-object v0, v0, Lcom/u8/sdk/platform/U8Platform$1;->val$callback:Lcom/u8/sdk/platform/U8InitListener;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/u8/sdk/platform/U8InitListener;->onLoginResult(ILcom/u8/sdk/verify/UToken;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->this$1:Lcom/u8/sdk/platform/U8Platform$1;

    iget-object v0, v0, Lcom/u8/sdk/platform/U8Platform$1;->val$callback:Lcom/u8/sdk/platform/U8InitListener;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/u8/sdk/platform/U8InitListener;->onPayResult(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->this$1:Lcom/u8/sdk/platform/U8Platform$1;

    iget-object v0, v0, Lcom/u8/sdk/platform/U8Platform$1;->val$callback:Lcom/u8/sdk/platform/U8InitListener;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/u8/sdk/platform/U8InitListener;->onPayResult(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->this$1:Lcom/u8/sdk/platform/U8Platform$1;

    iget-object v0, v0, Lcom/u8/sdk/platform/U8Platform$1;->val$callback:Lcom/u8/sdk/platform/U8InitListener;

    const/16 v1, 0x21

    iget-object v2, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/u8/sdk/platform/U8InitListener;->onPayResult(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->this$1:Lcom/u8/sdk/platform/U8Platform$1;

    iget-object v0, v0, Lcom/u8/sdk/platform/U8Platform$1;->val$callback:Lcom/u8/sdk/platform/U8InitListener;

    const/16 v1, 0x22

    iget-object v2, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/u8/sdk/platform/U8InitListener;->onPayResult(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->this$1:Lcom/u8/sdk/platform/U8Platform$1;

    iget-object v0, v0, Lcom/u8/sdk/platform/U8Platform$1;->val$callback:Lcom/u8/sdk/platform/U8InitListener;

    const/16 v1, 0x23

    iget-object v2, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/u8/sdk/platform/U8InitListener;->onPayResult(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/u8/sdk/platform/U8Platform$1$1;->this$1:Lcom/u8/sdk/platform/U8Platform$1;

    iget-object v0, v0, Lcom/u8/sdk/platform/U8Platform$1;->val$callback:Lcom/u8/sdk/platform/U8InitListener;

    invoke-interface {v0}, Lcom/u8/sdk/platform/U8InitListener;->onDestroy()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_2
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0x21 -> :sswitch_5
        0x22 -> :sswitch_6
        0x23 -> :sswitch_7
        0x28 -> :sswitch_8
    .end sparse-switch
.end method
