.class Lcom/onevcat/uniwebview/UniWebViewDialog$7;
.super Ljava/lang/Object;
.source "UniWebViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewDialog;->animateTo(IIFFLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

.field final synthetic val$identifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$7;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$7;->val$identifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$7;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$200(Lcom/onevcat/uniwebview/UniWebViewDialog;)Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$7;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$7;->val$identifier:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;->onAnimationFinished(Lcom/onevcat/uniwebview/UniWebViewDialog;Ljava/lang/String;)V

    return-void
.end method
