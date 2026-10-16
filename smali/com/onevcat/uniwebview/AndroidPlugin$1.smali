.class Lcom/onevcat/uniwebview/AndroidPlugin$1;
.super Ljava/lang/Object;
.source "AndroidPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/AndroidPlugin;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/AndroidPlugin;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/AndroidPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/onevcat/uniwebview/AndroidPlugin$1;->this$0:Lcom/onevcat/uniwebview/AndroidPlugin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/AndroidPlugin;->ShowAllWebViewDialogs(Z)V

    return-void
.end method
