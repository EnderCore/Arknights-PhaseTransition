.class Lcom/reyun/tracking/sdk/ReYunWorkHandler$1;
.super Ljava/lang/Thread;
.source "ReYunWorkHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reyun/tracking/sdk/ReYunWorkHandler;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reyun/tracking/sdk/ReYunWorkHandler;


# direct methods
.method constructor <init>(Lcom/reyun/tracking/sdk/ReYunWorkHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/reyun/tracking/sdk/ReYunWorkHandler$1;->this$0:Lcom/reyun/tracking/sdk/ReYunWorkHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/reyun/tracking/sdk/ReYunWorkHandler$1;->this$0:Lcom/reyun/tracking/sdk/ReYunWorkHandler;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0, v1}, Lcom/reyun/tracking/sdk/ReYunWorkHandler;->access$002(Lcom/reyun/tracking/sdk/ReYunWorkHandler;Landroid/os/Handler;)Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
