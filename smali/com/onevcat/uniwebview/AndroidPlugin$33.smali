.class final Lcom/onevcat/uniwebview/AndroidPlugin$33;
.super Ljava/lang/Object;
.source "AndroidPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/AndroidPlugin;->_UniWebViewAnimateTo(Ljava/lang/String;IIFFLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$delay:F

.field final synthetic val$duration:F

.field final synthetic val$identifier:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIFFLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$33;->val$name:Ljava/lang/String;

    iput p2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$33;->val$x:I

    iput p3, p0, Lcom/onevcat/uniwebview/AndroidPlugin$33;->val$y:I

    iput p4, p0, Lcom/onevcat/uniwebview/AndroidPlugin$33;->val$duration:F

    iput p5, p0, Lcom/onevcat/uniwebview/AndroidPlugin$33;->val$delay:F

    iput-object p6, p0, Lcom/onevcat/uniwebview/AndroidPlugin$33;->val$identifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$33;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    iget v1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$33;->val$x:I

    iget v2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$33;->val$y:I

    iget v3, p0, Lcom/onevcat/uniwebview/AndroidPlugin$33;->val$duration:F

    iget v4, p0, Lcom/onevcat/uniwebview/AndroidPlugin$33;->val$delay:F

    iget-object v5, p0, Lcom/onevcat/uniwebview/AndroidPlugin$33;->val$identifier:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/onevcat/uniwebview/UniWebViewDialog;->animateTo(IIFFLjava/lang/String;)V

    return-void
.end method
