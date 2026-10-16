.class Lcom/u8/sdk/U8UnityContext$2;
.super Ljava/lang/Object;
.source "U8UnityContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/U8UnityContext;->loginCustom(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/U8UnityContext;

.field final synthetic val$customData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/u8/sdk/U8UnityContext;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/U8UnityContext$2;->this$0:Lcom/u8/sdk/U8UnityContext;

    iput-object p2, p0, Lcom/u8/sdk/U8UnityContext$2;->val$customData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    iget-object v1, p0, Lcom/u8/sdk/U8UnityContext$2;->val$customData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/u8/sdk/plugin/U8User;->login(Ljava/lang/String;)V

    return-void
.end method
