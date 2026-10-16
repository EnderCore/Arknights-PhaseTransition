.class public abstract Lcom/u8/sdk/U8ProxyActivity;
.super Ljava/lang/Object;
.source "U8ProxyActivity.java"


# instance fields
.field private m_context:Lcom/u8/sdk/U8UnityContext;


# direct methods
.method public constructor <init>(Lcom/u8/sdk/U8UnityContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/u8/sdk/U8ProxyActivity;->m_context:Lcom/u8/sdk/U8UnityContext;

    return-void
.end method


# virtual methods
.method protected final getContext()Lcom/u8/sdk/U8UnityContext;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8ProxyActivity;->m_context:Lcom/u8/sdk/U8UnityContext;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onProxyActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onProxyCreate()V
    .locals 0

    return-void
.end method

.method public onProxyDestroy()V
    .locals 0

    return-void
.end method

.method public onProxyNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onProxyPause()V
    .locals 0

    return-void
.end method

.method public onProxyRestart()V
    .locals 0

    return-void
.end method

.method public onProxyResume()V
    .locals 0

    return-void
.end method

.method public onProxyStart()V
    .locals 0

    return-void
.end method

.method public onProxyStop()V
    .locals 0

    return-void
.end method
