.class Lcom/tendcloud/tenddata/AlertActivity$a;
.super Landroid/webkit/WebViewClient;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/AlertActivity;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/AlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/AlertActivity$a;->a:Lcom/tendcloud/tenddata/AlertActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity$a;->a:Lcom/tendcloud/tenddata/AlertActivity;

    invoke-static {v0}, Lcom/tendcloud/tenddata/AlertActivity;->b(Lcom/tendcloud/tenddata/AlertActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:parseMessage(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/AlertActivity$a;->a:Lcom/tendcloud/tenddata/AlertActivity;

    invoke-static {v2}, Lcom/tendcloud/tenddata/AlertActivity;->a(Lcom/tendcloud/tenddata/AlertActivity;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "talkingdata://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity$a;->a:Lcom/tendcloud/tenddata/AlertActivity;

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/AlertActivity;->a(Lcom/tendcloud/tenddata/AlertActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity$a;->a:Lcom/tendcloud/tenddata/AlertActivity;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/AlertActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
