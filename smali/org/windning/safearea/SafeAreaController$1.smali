.class final Lorg/windning/safearea/SafeAreaController$1;
.super Ljava/lang/Object;
.source "SafeAreaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/windning/safearea/SafeAreaController;->initWindowLayout(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$enableNotch:Z

.field final synthetic val$inst:Lorg/windning/safearea/SafeAreaController;


# direct methods
.method constructor <init>(Lorg/windning/safearea/SafeAreaController;Landroid/app/Activity;Z)V
    .locals 0

    iput-object p1, p0, Lorg/windning/safearea/SafeAreaController$1;->val$inst:Lorg/windning/safearea/SafeAreaController;

    iput-object p2, p0, Lorg/windning/safearea/SafeAreaController$1;->val$act:Landroid/app/Activity;

    iput-boolean p3, p0, Lorg/windning/safearea/SafeAreaController$1;->val$enableNotch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/windning/safearea/SafeAreaController$1;->val$inst:Lorg/windning/safearea/SafeAreaController;

    invoke-static {v0}, Lorg/windning/safearea/SafeAreaController;->access$000(Lorg/windning/safearea/SafeAreaController;)Lorg/windning/safearea/IDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lorg/windning/safearea/SafeAreaController$1;->val$act:Landroid/app/Activity;

    iget-boolean v2, p0, Lorg/windning/safearea/SafeAreaController$1;->val$enableNotch:Z

    invoke-interface {v0, v1, v2}, Lorg/windning/safearea/IDeviceManager;->initWindowLayout(Landroid/app/Activity;Z)V

    return-void
.end method
