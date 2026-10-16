.class final Lcom/onevcat/uniwebview/AndroidPlugin$34;
.super Ljava/lang/Object;
.source "AndroidPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/AndroidPlugin;->_UniWebViewSetHeaderField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$34;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$34;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/onevcat/uniwebview/AndroidPlugin$34;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$34;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$34;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$34;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
