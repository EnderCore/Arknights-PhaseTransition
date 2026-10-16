.class Lcom/u8/sdk/plugin/U8Pay$GetOrderTask;
.super Landroid/os/AsyncTask;
.source "U8Pay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/u8/sdk/plugin/U8Pay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetOrderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/u8/sdk/verify/UOrder;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Lcom/u8/sdk/PayParams;

.field private processTip:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/u8/sdk/plugin/U8Pay;


# direct methods
.method public constructor <init>(Lcom/u8/sdk/plugin/U8Pay;Lcom/u8/sdk/PayParams;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/plugin/U8Pay$GetOrderTask;->this$0:Lcom/u8/sdk/plugin/U8Pay;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/u8/sdk/plugin/U8Pay$GetOrderTask;->data:Lcom/u8/sdk/PayParams;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/u8/sdk/verify/UOrder;
    .locals 3

    const-string v1, "U8SDK"

    const-string v2, "begin to get order id from u8server..."

    invoke-static {v1, v2}, Lcom/u8/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/u8/sdk/plugin/U8Pay$GetOrderTask;->data:Lcom/u8/sdk/PayParams;

    invoke-static {v1}, Lcom/u8/sdk/verify/U8Proxy;->getOrder(Lcom/u8/sdk/PayParams;)Lcom/u8/sdk/verify/UOrder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/u8/sdk/plugin/U8Pay$GetOrderTask;->doInBackground([Ljava/lang/Void;)Lcom/u8/sdk/verify/UOrder;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/u8/sdk/verify/UOrder;)V
    .locals 3

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Pay$GetOrderTask;->processTip:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/u8/sdk/SDKTools;->hideProgressTip(Landroid/app/ProgressDialog;)V

    if-nez p1, :cond_0

    const-string v0, "U8SDK"

    const-string v1, "get order from u8server failed."

    invoke-static {v0, v1}, Lcom/u8/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u8ba2\u5355\u53f7\u5931\u8d25"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Pay$GetOrderTask;->data:Lcom/u8/sdk/PayParams;

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UOrder;->getOrder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/u8/sdk/PayParams;->setOrderID(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Pay$GetOrderTask;->data:Lcom/u8/sdk/PayParams;

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UOrder;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/u8/sdk/PayParams;->setExtension(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Pay$GetOrderTask;->data:Lcom/u8/sdk/PayParams;

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UOrder;->getProductID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/u8/sdk/PayParams;->setProductId(Ljava/lang/String;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->isSingleGame()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Pay$GetOrderTask;->this$0:Lcom/u8/sdk/plugin/U8Pay;

    iget-object v1, p0, Lcom/u8/sdk/plugin/U8Pay$GetOrderTask;->data:Lcom/u8/sdk/PayParams;

    invoke-static {v0, v1}, Lcom/u8/sdk/plugin/U8Pay;->access$000(Lcom/u8/sdk/plugin/U8Pay;Lcom/u8/sdk/PayParams;)V

    :cond_1
    iget-object v0, p0, Lcom/u8/sdk/plugin/U8Pay$GetOrderTask;->this$0:Lcom/u8/sdk/plugin/U8Pay;

    invoke-static {v0}, Lcom/u8/sdk/plugin/U8Pay;->access$100(Lcom/u8/sdk/plugin/U8Pay;)Lcom/u8/sdk/IPay;

    move-result-object v0

    iget-object v1, p0, Lcom/u8/sdk/plugin/U8Pay$GetOrderTask;->data:Lcom/u8/sdk/PayParams;

    invoke-interface {v0, v1}, Lcom/u8/sdk/IPay;->pay(Lcom/u8/sdk/PayParams;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/u8/sdk/verify/UOrder;

    invoke-virtual {p0, p1}, Lcom/u8/sdk/plugin/U8Pay$GetOrderTask;->onPostExecute(Lcom/u8/sdk/verify/UOrder;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u542f\u52a8\u652f\u4ed8\uff0c\u8bf7\u7a0d\u540e..."

    invoke-static {v0, v1}, Lcom/u8/sdk/SDKTools;->showProgressTip(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/plugin/U8Pay$GetOrderTask;->processTip:Landroid/app/ProgressDialog;

    return-void
.end method
