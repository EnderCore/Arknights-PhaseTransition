.class Lcom/u8/sdk/UnityU8SDKListener$1;
.super Ljava/lang/Object;
.source "UnityU8SDKListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/UnityU8SDKListener;->onResult(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/UnityU8SDKListener;

.field final synthetic val$code:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/u8/sdk/UnityU8SDKListener;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->this$0:Lcom/u8/sdk/UnityU8SDKListener;

    iput p2, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->val$code:I

    iput-object p3, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->val$code:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->this$0:Lcom/u8/sdk/UnityU8SDKListener;

    invoke-static {v0}, Lcom/u8/sdk/UnityU8SDKListener;->access$000(Lcom/u8/sdk/UnityU8SDKListener;)Lcom/u8/sdk/U8UnityContext;

    move-result-object v0

    const-string v1, "OnInitSuc"

    iget-object v2, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8UnityContext;->sendCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->this$0:Lcom/u8/sdk/UnityU8SDKListener;

    invoke-static {v0}, Lcom/u8/sdk/UnityU8SDKListener;->access$000(Lcom/u8/sdk/UnityU8SDKListener;)Lcom/u8/sdk/U8UnityContext;

    move-result-object v0

    const-string v1, "OnInitFail"

    iget-object v2, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8UnityContext;->sendCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->this$0:Lcom/u8/sdk/UnityU8SDKListener;

    invoke-static {v0}, Lcom/u8/sdk/UnityU8SDKListener;->access$000(Lcom/u8/sdk/UnityU8SDKListener;)Lcom/u8/sdk/U8UnityContext;

    move-result-object v0

    const-string v1, "OnLoginFail"

    iget-object v2, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8UnityContext;->sendCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->this$0:Lcom/u8/sdk/UnityU8SDKListener;

    invoke-static {v0}, Lcom/u8/sdk/UnityU8SDKListener;->access$000(Lcom/u8/sdk/UnityU8SDKListener;)Lcom/u8/sdk/U8UnityContext;

    move-result-object v0

    const-string v1, "OnPayFail"

    iget-object v2, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8UnityContext;->sendCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->this$0:Lcom/u8/sdk/UnityU8SDKListener;

    invoke-static {v0}, Lcom/u8/sdk/UnityU8SDKListener;->access$000(Lcom/u8/sdk/UnityU8SDKListener;)Lcom/u8/sdk/U8UnityContext;

    move-result-object v0

    const-string v1, "OnPaySuc"

    iget-object v2, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8UnityContext;->sendCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->this$0:Lcom/u8/sdk/UnityU8SDKListener;

    invoke-static {v0}, Lcom/u8/sdk/UnityU8SDKListener;->access$000(Lcom/u8/sdk/UnityU8SDKListener;)Lcom/u8/sdk/U8UnityContext;

    move-result-object v0

    const-string v1, "OnSDKError"

    iget-object v2, p0, Lcom/u8/sdk/UnityU8SDKListener$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8UnityContext;->sendCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_2
        0xa -> :sswitch_4
        0xb -> :sswitch_3
        0x35 -> :sswitch_5
    .end sparse-switch
.end method
