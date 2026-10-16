.class Lcom/u8/sdk/platform/U8Platform$2;
.super Ljava/lang/Object;
.source "U8Platform.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/platform/U8Platform;->login(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/platform/U8Platform;


# direct methods
.method constructor <init>(Lcom/u8/sdk/platform/U8Platform;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/platform/U8Platform$2;->this$0:Lcom/u8/sdk/platform/U8Platform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/plugin/U8User;->login()V

    return-void
.end method
