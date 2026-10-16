.class Lcom/u8/sdk/U8SDK$AuthTask;
.super Landroid/os/AsyncTask;
.source "U8SDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/u8/sdk/U8SDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/u8/sdk/verify/UToken;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/U8SDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/U8SDK;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/U8SDK$AuthTask;->this$0:Lcom/u8/sdk/U8SDK;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/u8/sdk/verify/UToken;
    .locals 4

    const/4 v2, 0x0

    aget-object v0, p1, v2

    const-string v2, "U8SDK"

    const-string v3, "begin to auth..."

    invoke-static {v2, v3}, Lcom/u8/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/u8/sdk/verify/U8Proxy;->auth(Ljava/lang/String;)Lcom/u8/sdk/verify/UToken;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/u8/sdk/U8SDK$AuthTask;->doInBackground([Ljava/lang/String;)Lcom/u8/sdk/verify/UToken;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/u8/sdk/verify/UToken;)V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8SDK$AuthTask;->this$0:Lcom/u8/sdk/U8SDK;

    invoke-static {v0, p1}, Lcom/u8/sdk/U8SDK;->access$000(Lcom/u8/sdk/U8SDK;Lcom/u8/sdk/verify/UToken;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/u8/sdk/verify/UToken;

    invoke-virtual {p0, p1}, Lcom/u8/sdk/U8SDK$AuthTask;->onPostExecute(Lcom/u8/sdk/verify/UToken;)V

    return-void
.end method
