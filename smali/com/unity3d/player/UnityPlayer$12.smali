.class final Lcom/unity3d/player/UnityPlayer$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->loadGoogleVR(ZZZ)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Semaphore;

.field final synthetic b:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$12;->b:Lcom/unity3d/player/UnityPlayer;

    iput-object p2, p0, Lcom/unity3d/player/UnityPlayer$12;->a:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$12;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->v(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/b;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer$12;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v2}, Lcom/unity3d/player/UnityPlayer;->r(Lcom/unity3d/player/UnityPlayer;)Landroid/content/ContextWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer$12;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v3}, Lcom/unity3d/player/UnityPlayer;->u(Lcom/unity3d/player/UnityPlayer;)Landroid/view/SurfaceView;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/player/b;->a(Landroid/app/Activity;Landroid/content/Context;Landroid/view/SurfaceView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    const-string v1, "Unable to initialize Google VR subsystem."

    invoke-static {v0, v1}, Lcom/unity3d/player/e;->Log(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$12;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
