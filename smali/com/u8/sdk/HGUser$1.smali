.class Lcom/u8/sdk/HGUser$1;
.super Ljava/lang/Object;
.source "HGUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/HGUser;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/HGUser;


# direct methods
.method constructor <init>(Lcom/u8/sdk/HGUser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/u8/sdk/HGUser;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/u8/sdk/HGUser$1;->this$0:Lcom/u8/sdk/HGUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 24
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 25
    return-void
.end method
