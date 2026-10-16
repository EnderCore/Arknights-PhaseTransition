.class public interface abstract Lcom/u8/sdk/IPush;
.super Ljava/lang/Object;
.source "IPush.java"

# interfaces
.implements Lcom/u8/sdk/IPlugin;


# static fields
.field public static final PLUGIN_TYPE:I = 0x3


# virtual methods
.method public abstract addAlias(Ljava/lang/String;)V
.end method

.method public varargs abstract addTags([Ljava/lang/String;)V
.end method

.method public abstract removeAlias(Ljava/lang/String;)V
.end method

.method public varargs abstract removeTags([Ljava/lang/String;)V
.end method

.method public abstract scheduleNotification(Ljava/lang/String;)V
.end method

.method public abstract startPush()V
.end method

.method public abstract stopPush()V
.end method
