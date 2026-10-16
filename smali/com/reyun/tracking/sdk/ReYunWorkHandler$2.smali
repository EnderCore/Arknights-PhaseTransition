.class Lcom/reyun/tracking/sdk/ReYunWorkHandler$2;
.super Ljava/lang/Thread;
.source "ReYunWorkHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reyun/tracking/sdk/ReYunWorkHandler;->postRunnableWithDelaySafely(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reyun/tracking/sdk/ReYunWorkHandler;

.field final synthetic val$delayMillis:J

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/reyun/tracking/sdk/ReYunWorkHandler;JLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/reyun/tracking/sdk/ReYunWorkHandler$2;->this$0:Lcom/reyun/tracking/sdk/ReYunWorkHandler;

    iput-wide p2, p0, Lcom/reyun/tracking/sdk/ReYunWorkHandler$2;->val$delayMillis:J

    iput-object p4, p0, Lcom/reyun/tracking/sdk/ReYunWorkHandler$2;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-wide v2, p0, Lcom/reyun/tracking/sdk/ReYunWorkHandler$2;->val$delayMillis:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/reyun/tracking/sdk/ReYunWorkHandler$2;->val$r:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
