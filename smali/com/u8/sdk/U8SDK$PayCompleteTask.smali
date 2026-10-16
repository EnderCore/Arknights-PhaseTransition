.class Lcom/u8/sdk/U8SDK$PayCompleteTask;
.super Landroid/os/AsyncTask;
.source "U8SDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/u8/sdk/U8SDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PayCompleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/u8/sdk/PayParams;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/U8SDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/U8SDK;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/U8SDK$PayCompleteTask;->this$0:Lcom/u8/sdk/U8SDK;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/u8/sdk/PayParams;)Ljava/lang/Boolean;
    .locals 4

    const/4 v1, 0x0

    aget-object v0, p1, v1

    const-string v1, "U8SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin to send pay complete req..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/u8/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/u8/sdk/verify/U8Proxy;->completePay(Lcom/u8/sdk/PayParams;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/u8/sdk/PayParams;

    invoke-virtual {p0, p1}, Lcom/u8/sdk/U8SDK$PayCompleteTask;->doInBackground([Lcom/u8/sdk/PayParams;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/u8/sdk/U8SDK$PayCompleteTask;->this$0:Lcom/u8/sdk/U8SDK;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/u8/sdk/U8SDK;->access$100(Lcom/u8/sdk/U8SDK;Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/u8/sdk/U8SDK$PayCompleteTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
