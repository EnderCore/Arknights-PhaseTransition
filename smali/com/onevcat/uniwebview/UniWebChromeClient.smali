.class public Lcom/onevcat/uniwebview/UniWebChromeClient;
.super Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;
.source "UniWebChromeClient.java"


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/onevcat/uniwebview/VideoEnabledWebView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onevcat/uniwebview/VideoEnabledWebChromeClient;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/onevcat/uniwebview/VideoEnabledWebView;)V

    return-void
.end method

.method private createImageFile()Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JPEG_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v3, ".jpg"

    invoke-static {v0, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    return-object v3
.end method

.method private startFileChooserActivity()V
    .locals 10

    const/4 v9, 0x0

    invoke-static {}, Lcom/onevcat/uniwebview/AndroidPlugin;->getUnityActivity_()Landroid/app/Activity;

    move-result-object v0

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebChromeClient;->createImageFile()Ljava/io/File;

    move-result-object v5

    const-string v7, "PhotoPath"

    sget-object v8, Lcom/onevcat/uniwebview/AndroidPlugin;->_cameraPhotoPath:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v5, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/onevcat/uniwebview/AndroidPlugin;->_cameraPhotoPath:Ljava/lang/String;

    const-string v7, "output"

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "image/*"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v6, :cond_2

    const/4 v7, 0x1

    new-array v4, v7, [Landroid/content/Intent;

    aput-object v6, v4, v9

    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.CHOOSER"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.extra.INTENT"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v7, "android.intent.extra.TITLE"

    const-string v8, "Image Chooser"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const v7, 0x1258e43

    invoke-virtual {v0, v1, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :catch_0
    move-exception v3

    const-string v7, "UniWebView"

    const-string v8, "Unable to create Image File"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    new-array v4, v9, [Landroid/content/Intent;

    goto :goto_2
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadCallback:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadCallback:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p2}, Lcom/onevcat/uniwebview/AndroidPlugin;->setUploadCallback(Landroid/webkit/ValueCallback;)V

    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebChromeClient;->startFileChooserActivity()V

    const/4 v0, 0x1

    return v0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadMessages:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadMessages:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lcom/onevcat/uniwebview/AndroidPlugin;->setUploadMessage(Landroid/webkit/ValueCallback;)V

    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebChromeClient;->startFileChooserActivity()V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadMessages:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadMessages:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lcom/onevcat/uniwebview/AndroidPlugin;->setUploadMessage(Landroid/webkit/ValueCallback;)V

    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebChromeClient;->startFileChooserActivity()V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadMessages:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadMessages:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lcom/onevcat/uniwebview/AndroidPlugin;->setUploadMessage(Landroid/webkit/ValueCallback;)V

    invoke-direct {p0}, Lcom/onevcat/uniwebview/UniWebChromeClient;->startFileChooserActivity()V

    return-void
.end method
