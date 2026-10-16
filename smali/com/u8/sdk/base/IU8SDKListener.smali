.class public interface abstract Lcom/u8/sdk/base/IU8SDKListener;
.super Ljava/lang/Object;
.source "IU8SDKListener.java"


# virtual methods
.method public abstract onAuthResult(Lcom/u8/sdk/verify/UToken;)V
.end method

.method public abstract onLoginResult(Ljava/lang/String;)V
.end method

.method public abstract onLogout()V
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

.method public abstract onSwitchAccount()V
.end method

.method public abstract onSwitchAccount(Ljava/lang/String;)V
.end method
