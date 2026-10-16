.class Lcom/u8/sdk/U8UnityContext$5;
.super Ljava/lang/Object;
.source "U8UnityContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/U8UnityContext;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/U8UnityContext;


# direct methods
.method constructor <init>(Lcom/u8/sdk/U8UnityContext;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/U8UnityContext$5;->this$0:Lcom/u8/sdk/U8UnityContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/plugin/U8User;->logout()V

    return-void
.end method
