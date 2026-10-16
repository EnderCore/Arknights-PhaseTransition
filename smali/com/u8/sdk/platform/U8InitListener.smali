.class public interface abstract Lcom/u8/sdk/platform/U8InitListener;
.super Ljava/lang/Object;
.source "U8InitListener.java"


# virtual methods
.method public abstract onDestroy()V
.end method

.method public abstract onInitResult(ILjava/lang/String;)V
.end method

.method public abstract onLoginResult(ILcom/u8/sdk/verify/UToken;)V
.end method

.method public abstract onLogout()V
.end method

.method public abstract onPayResult(ILjava/lang/String;)V
.end method

.method public abstract onProductQueryResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/u8/sdk/ProductQueryResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onResult(ILjava/lang/String;)V
.end method

.method public abstract onSinglePayResult(ILcom/u8/sdk/U8Order;)V
.end method

.method public abstract onSwitchAccount(Lcom/u8/sdk/verify/UToken;)V
.end method
