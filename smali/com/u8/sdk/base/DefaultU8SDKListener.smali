.class public Lcom/u8/sdk/base/DefaultU8SDKListener;
.super Ljava/lang/Object;
.source "DefaultU8SDKListener.java"

# interfaces
.implements Lcom/u8/sdk/base/IU8SDKListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthResult(Lcom/u8/sdk/verify/UToken;)V
    .locals 0

    return-void
.end method

.method public onLoginResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLogout()V
    .locals 0

    return-void
.end method

.method public onProductQueryResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/u8/sdk/ProductQueryResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResult(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSinglePayResult(ILcom/u8/sdk/U8Order;)V
    .locals 0

    return-void
.end method

.method public onSwitchAccount()V
    .locals 0

    return-void
.end method

.method public onSwitchAccount(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
