.class public interface abstract Lcom/u8/sdk/IUser;
.super Ljava/lang/Object;
.source "IUser.java"

# interfaces
.implements Lcom/u8/sdk/IPlugin;


# static fields
.field public static final PLUGIN_TYPE:I = 0x1


# virtual methods
.method public abstract exit()V
.end method

.method public abstract getExtensionForMeta()Ljava/lang/String;
.end method

.method public abstract login()V
.end method

.method public abstract loginCustom(Ljava/lang/String;)V
.end method

.method public abstract logout()V
.end method

.method public abstract postGiftCode(Ljava/lang/String;)V
.end method

.method public abstract queryAntiAddiction()V
.end method

.method public abstract queryProducts()V
.end method

.method public abstract realNameRegister()V
.end method

.method public abstract showAccountCenter()Z
.end method

.method public abstract submitExtraData(Lcom/u8/sdk/UserExtraData;)V
.end method

.method public abstract switchLogin()V
.end method
