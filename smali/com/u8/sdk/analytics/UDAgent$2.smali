.class Lcom/u8/sdk/analytics/UDAgent$2;
.super Ljava/lang/Object;
.source "UDAgent.java"

# interfaces
.implements Lcom/u8/sdk/analytics/UDAgent$ISubmitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/analytics/UDAgent;->submitUserInfo(Landroid/app/Activity;Lcom/u8/sdk/UserExtraData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/analytics/UDAgent;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$log:Lcom/u8/sdk/analytics/UUserLog;


# direct methods
.method constructor <init>(Lcom/u8/sdk/analytics/UDAgent;Landroid/app/Activity;Lcom/u8/sdk/analytics/UUserLog;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/analytics/UDAgent$2;->this$0:Lcom/u8/sdk/analytics/UDAgent;

    iput-object p2, p0, Lcom/u8/sdk/analytics/UDAgent$2;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/u8/sdk/analytics/UDAgent$2;->val$log:Lcom/u8/sdk/analytics/UUserLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/u8/sdk/analytics/UDManager;->getInstance()Lcom/u8/sdk/analytics/UDManager;

    move-result-object v0

    iget-object v1, p0, Lcom/u8/sdk/analytics/UDAgent$2;->val$context:Landroid/app/Activity;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getAnalyticsURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/u8/sdk/U8SDK;->getAppKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/u8/sdk/analytics/UDAgent$2;->val$log:Lcom/u8/sdk/analytics/UUserLog;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/u8/sdk/analytics/UDManager;->submitUserInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/u8/sdk/analytics/UUserLog;)V

    return-void
.end method
