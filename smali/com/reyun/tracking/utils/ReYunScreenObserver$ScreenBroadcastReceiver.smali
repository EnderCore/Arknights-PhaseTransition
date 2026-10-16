.class Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ReYunScreenObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reyun/tracking/utils/ReYunScreenObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenBroadcastReceiver"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field final synthetic this$0:Lcom/reyun/tracking/utils/ReYunScreenObserver;


# direct methods
.method private constructor <init>(Lcom/reyun/tracking/utils/ReYunScreenObserver;)V
    .locals 1

    iput-object p1, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;->this$0:Lcom/reyun/tracking/utils/ReYunScreenObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/reyun/tracking/utils/ReYunScreenObserver;Lcom/reyun/tracking/utils/ReYunScreenObserver$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;-><init>(Lcom/reyun/tracking/utils/ReYunScreenObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    const-string v0, "android.intent.action.SCREEN_ON"

    iget-object v1, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;->this$0:Lcom/reyun/tracking/utils/ReYunScreenObserver;

    invoke-static {v0}, Lcom/reyun/tracking/utils/ReYunScreenObserver;->access$100(Lcom/reyun/tracking/utils/ReYunScreenObserver;)Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenStateListener;->onScreenOn()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    iget-object v1, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;->this$0:Lcom/reyun/tracking/utils/ReYunScreenObserver;

    invoke-static {v0}, Lcom/reyun/tracking/utils/ReYunScreenObserver;->access$100(Lcom/reyun/tracking/utils/ReYunScreenObserver;)Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenStateListener;->onScreenOff()V

    goto :goto_0

    :cond_2
    const-string v0, "android.intent.action.USER_PRESENT"

    iget-object v1, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenBroadcastReceiver;->this$0:Lcom/reyun/tracking/utils/ReYunScreenObserver;

    invoke-static {v0}, Lcom/reyun/tracking/utils/ReYunScreenObserver;->access$100(Lcom/reyun/tracking/utils/ReYunScreenObserver;)Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/reyun/tracking/utils/ReYunScreenObserver$ScreenStateListener;->onScreenUnlock()V

    goto :goto_0
.end method
